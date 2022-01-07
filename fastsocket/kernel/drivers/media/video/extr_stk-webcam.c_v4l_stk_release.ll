; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_v4l_stk_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_v4l_stk_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.stk_camera* }
%struct.stk_camera = type { i32, %struct.file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @v4l_stk_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_stk_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.stk_camera*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = getelementptr inbounds %struct.file, %struct.file* %4, i32 0, i32 0
  %6 = load %struct.stk_camera*, %struct.stk_camera** %5, align 8
  store %struct.stk_camera* %6, %struct.stk_camera** %3, align 8
  %7 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %8 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %7, i32 0, i32 1
  %9 = load %struct.file*, %struct.file** %8, align 8
  %10 = load %struct.file*, %struct.file** %2, align 8
  %11 = icmp eq %struct.file* %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %14 = call i32 @stk_stop_stream(%struct.stk_camera* %13)
  %15 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %16 = call i32 @stk_free_buffers(%struct.stk_camera* %15)
  %17 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %18 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %17, i32 0, i32 1
  store %struct.file* null, %struct.file** %18, align 8
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %21 = call i64 @is_present(%struct.stk_camera* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %25 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @usb_autopm_put_interface(i32 %26)
  br label %28

28:                                               ; preds = %23, %19
  ret i32 0
}

declare dso_local i32 @stk_stop_stream(%struct.stk_camera*) #1

declare dso_local i32 @stk_free_buffers(%struct.stk_camera*) #1

declare dso_local i64 @is_present(%struct.stk_camera*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
