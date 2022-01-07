; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_fops_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_fops_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.si470x_device = type { i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@si470x_int_in_callback = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"submitting int urb failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @si470x_fops_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_fops_open(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.si470x_device*, align 8
  %4 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.si470x_device* @video_drvdata(%struct.file* %5)
  store %struct.si470x_device* %6, %struct.si470x_device** %3, align 8
  %7 = call i32 (...) @lock_kernel()
  %8 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %9 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %13 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = call i32 @usb_autopm_get_interface(%struct.TYPE_5__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %20 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %98

25:                                               ; preds = %1
  %26 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %27 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %97

30:                                               ; preds = %25
  %31 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %32 = call i32 @si470x_start(%struct.si470x_device* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %37 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @usb_autopm_put_interface(%struct.TYPE_5__* %38)
  br label %98

40:                                               ; preds = %30
  %41 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %42 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %45 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %48 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %51 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @usb_rcvintpipe(i32 %49, i32 %54)
  %56 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %57 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %60 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %59, i32 0, i32 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = load i32, i32* @si470x_int_in_callback, align 4
  %66 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %67 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %68 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %67, i32 0, i32 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @usb_fill_int_urb(i32 %43, i32 %46, i32 %55, i32 %58, i32 %64, i32 %65, %struct.si470x_device* %66, i32 %71)
  %73 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %74 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = call i32 (...) @mb()
  %76 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %77 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i32 @usb_submit_urb(i32 %78, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %40
  %84 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %85 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @dev_info(i32* %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %91 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %93 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = call i32 @usb_autopm_put_interface(%struct.TYPE_5__* %94)
  br label %96

96:                                               ; preds = %83, %40
  br label %97

97:                                               ; preds = %96, %25
  br label %98

98:                                               ; preds = %97, %35, %18
  %99 = call i32 (...) @unlock_kernel()
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.si470x_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_5__*) #1

declare dso_local i32 @si470x_start(%struct.si470x_device*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_5__*) #1

declare dso_local i32 @usb_fill_int_urb(i32, i32, i32, i32, i32, i32, %struct.si470x_device*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
