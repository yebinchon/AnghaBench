; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-apple.c_apple_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-apple.c_apple_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i64 }
%struct.apple_sc = type { i64 }

@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"can't alloc apple descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@APPLE_HIDDEV = common dso_local global i64 0, align 8
@HID_CONNECT_HIDDEV_FORCE = common dso_local global i32 0, align 4
@APPLE_IGNORE_HIDINPUT = common dso_local global i64 0, align 8
@HID_CONNECT_HIDINPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @apple_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apple_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.apple_sc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %10 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.apple_sc* @kzalloc(i32 8, i32 %14)
  store %struct.apple_sc* %15, %struct.apple_sc** %7, align 8
  %16 = load %struct.apple_sc*, %struct.apple_sc** %7, align 8
  %17 = icmp eq %struct.apple_sc* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %20 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %73

24:                                               ; preds = %2
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.apple_sc*, %struct.apple_sc** %7, align 8
  %27 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = load %struct.apple_sc*, %struct.apple_sc** %7, align 8
  %30 = call i32 @hid_set_drvdata(%struct.hid_device* %28, %struct.apple_sc* %29)
  %31 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %32 = call i32 @hid_parse(%struct.hid_device* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %37 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %69

39:                                               ; preds = %24
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @APPLE_HIDDEV, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @APPLE_IGNORE_HIDINPUT, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @HID_CONNECT_HIDINPUT, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @hid_hw_start(%struct.hid_device* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %66 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %69

68:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %73

69:                                               ; preds = %64, %35
  %70 = load %struct.apple_sc*, %struct.apple_sc** %7, align 8
  %71 = call i32 @kfree(%struct.apple_sc* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %68, %18
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.apple_sc* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.apple_sc*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @kfree(%struct.apple_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
