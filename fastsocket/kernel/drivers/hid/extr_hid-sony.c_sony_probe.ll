; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-sony.c_sony_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-sony.c_sony_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i64 }
%struct.sony_sc = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"can't alloc apple descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@HID_CONNECT_HIDDEV_FORCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @sony_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sony_sc*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %9 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %10 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sony_sc* @kzalloc(i32 8, i32 %12)
  store %struct.sony_sc* %13, %struct.sony_sc** %8, align 8
  %14 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %15 = icmp eq %struct.sony_sc* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %63

22:                                               ; preds = %2
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %25 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %27 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %28 = call i32 @hid_set_drvdata(%struct.hid_device* %26, %struct.sony_sc* %27)
  %29 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %30 = call i32 @hid_parse(%struct.hid_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %59

37:                                               ; preds = %22
  %38 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %39 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %40 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @hid_hw_start(%struct.hid_device* %38, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %47 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %59

49:                                               ; preds = %37
  %50 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %51 = call i32 @sony_set_operational(%struct.hid_device* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %56

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %63

56:                                               ; preds = %54
  %57 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %58 = call i32 @hid_hw_stop(%struct.hid_device* %57)
  br label %59

59:                                               ; preds = %56, %45, %33
  %60 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %61 = call i32 @kfree(%struct.sony_sc* %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %55, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.sony_sc* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.sony_sc*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @sony_set_operational(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

declare dso_local i32 @kfree(%struct.sony_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
