; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_usb_amradio_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_usb_amradio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.amradio_device = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@AMRADIO_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"radio did not start up properly\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WANT_STEREO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"set stereo failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"set frequency failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @usb_amradio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_amradio_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.amradio_device*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call i32 @video_devdata(%struct.file* %6)
  %8 = call %struct.amradio_device* @video_get_drvdata(i32 %7)
  store %struct.amradio_device* %8, %struct.amradio_device** %4, align 8
  %9 = call i32 (...) @lock_kernel()
  %10 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %11 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %13 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %15 = load i32, i32* @AMRADIO_START, align 4
  %16 = call i32 @amradio_set_mute(%struct.amradio_device* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %21 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @amradio_dev_warn(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %26 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = call i32 (...) @unlock_kernel()
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %58

30:                                               ; preds = %1
  %31 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %32 = load i32, i32* @WANT_STEREO, align 4
  %33 = call i32 @amradio_set_stereo(%struct.amradio_device* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %38 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @amradio_dev_warn(i32* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %44 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %45 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @amradio_setfreq(%struct.amradio_device* %43, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %52 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @amradio_dev_warn(i32* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %50, %42
  %57 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %19
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.amradio_device* @video_get_drvdata(i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @amradio_set_mute(%struct.amradio_device*, i32) #1

declare dso_local i32 @amradio_dev_warn(i32*, i8*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @amradio_set_stereo(%struct.amradio_device*, i32) #1

declare dso_local i32 @amradio_setfreq(%struct.amradio_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
