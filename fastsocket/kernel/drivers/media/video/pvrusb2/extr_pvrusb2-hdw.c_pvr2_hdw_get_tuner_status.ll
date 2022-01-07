; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_get_tuner_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_get_tuner_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i64 }
%struct.v4l2_tuner = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_hdw_get_tuner_status(%struct.pvr2_hdw* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca %struct.v4l2_tuner*, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %4, align 8
  %5 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %6 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @LOCK_TAKE(i32 %7)
  br label %9

9:                                                ; preds = %2
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %11 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %16 = call i32 @pvr2_hdw_status_poll(%struct.pvr2_hdw* %15)
  br label %17

17:                                               ; preds = %14, %9
  %18 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 1
  %21 = call i32 @memcpy(%struct.v4l2_tuner* %18, i32* %20, i32 4)
  br label %22

22:                                               ; preds = %17
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %24 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @LOCK_GIVE(i32 %25)
  ret i32 0
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @pvr2_hdw_status_poll(%struct.pvr2_hdw*) #1

declare dso_local i32 @memcpy(%struct.v4l2_tuner*, i32*, i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
