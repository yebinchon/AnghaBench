; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.usb_se401 = type { i32, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SE401_NUMFRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"device unregistered\0A\00", align 1
@FRAME_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @se401_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se401_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.usb_se401*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.video_device*, %struct.video_device** %7, align 8
  store %struct.video_device* %8, %struct.video_device** %3, align 8
  %9 = load %struct.video_device*, %struct.video_device** %3, align 8
  %10 = bitcast %struct.video_device* %9 to %struct.usb_se401*
  store %struct.usb_se401* %10, %struct.usb_se401** %4, align 8
  %11 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %12 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %15 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SE401_NUMFRAMES, align 4
  %18 = mul nsw i32 %16, %17
  %19 = call i32 @rvfree(i32 %13, i32 %18)
  %20 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %21 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %26 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @dev_info(i32* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %31 = call i32 @usb_se401_remove_disconnected(%struct.usb_se401* %30)
  br label %60

32:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SE401_NUMFRAMES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32, i32* @FRAME_UNUSED, align 4
  %39 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %40 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 4
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %33

49:                                               ; preds = %33
  %50 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %51 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %56 = call i32 @se401_stop_stream(%struct.usb_se401* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %59 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %24
  %61 = load %struct.file*, %struct.file** %2, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  store %struct.video_device* null, %struct.video_device** %62, align 8
  ret i32 0
}

declare dso_local i32 @rvfree(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @usb_se401_remove_disconnected(%struct.usb_se401*) #1

declare dso_local i32 @se401_stop_stream(%struct.usb_se401*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
