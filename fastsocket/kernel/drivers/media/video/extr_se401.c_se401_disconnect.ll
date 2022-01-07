; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_se401 = type { i32, i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@FRAME_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @se401_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se401_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_se401*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.usb_se401* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.usb_se401* %5, %struct.usb_se401** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %9 = icmp ne %struct.usb_se401* %8, null
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %12 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %11, i32 0, i32 5
  %13 = call i32 @video_unregister_device(i32* %12)
  %14 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %15 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %20 = call i32 @usb_se401_remove_disconnected(%struct.usb_se401* %19)
  br label %41

21:                                               ; preds = %10
  %22 = load i8*, i8** @FRAME_ERROR, align 8
  %23 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %24 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %22, i8** %27, align 8
  %28 = load i8*, i8** @FRAME_ERROR, align 8
  %29 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %30 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i8* %28, i8** %33, align 8
  %34 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %35 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %37 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %36, i32 0, i32 1
  %38 = call i32 @wake_up_interruptible(i32* %37)
  %39 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %40 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %21, %18
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

declare dso_local %struct.usb_se401* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @usb_se401_remove_disconnected(%struct.usb_se401*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
