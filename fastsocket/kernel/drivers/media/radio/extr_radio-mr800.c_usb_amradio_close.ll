; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_usb_amradio_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_usb_amradio_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.amradio_device = type { %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@AMRADIO_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"amradio_stop failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @usb_amradio_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_amradio_close(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.amradio_device*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call i32 @video_devdata(%struct.file* %6)
  %8 = call %struct.amradio_device* @video_get_drvdata(i32 %7)
  store %struct.amradio_device* %8, %struct.amradio_device** %4, align 8
  %9 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %10 = icmp ne %struct.amradio_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %16 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %19 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %21 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %20, i32 0, i32 2
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %24 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %14
  %28 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %29 = load i32, i32* @AMRADIO_STOP, align 4
  %30 = call i32 @amradio_set_mute(%struct.amradio_device* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %35 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @amradio_dev_warn(i32* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %27
  br label %40

40:                                               ; preds = %39, %14
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.amradio_device* @video_get_drvdata(i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amradio_set_mute(%struct.amradio_device*, i32) #1

declare dso_local i32 @amradio_dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
