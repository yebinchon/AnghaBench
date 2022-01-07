; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 }
%struct.hid_device_id = type { i32 }
%struct.wacom_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"can't alloc wacom descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@dev_attr_speed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"can't create sysfs speed attribute err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @wacom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca %struct.wacom_data*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.wacom_data* @kzalloc(i32 4, i32 %8)
  store %struct.wacom_data* %9, %struct.wacom_data** %6, align 8
  %10 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %11 = icmp eq %struct.wacom_data* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 1
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %68

18:                                               ; preds = %2
  %19 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %20 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %21 = call i32 @hid_set_drvdata(%struct.hid_device* %19, %struct.wacom_data* %20)
  %22 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %23 = call i32 @hid_parse(%struct.hid_device* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %28 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %27, i32 0, i32 1
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %64

30:                                               ; preds = %18
  %31 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %32 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %33 = call i32 @hid_hw_start(%struct.hid_device* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %37, i32 0, i32 1
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %64

40:                                               ; preds = %30
  %41 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %42 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %41, i32 0, i32 1
  %43 = call i32 @device_create_file(i32* %42, i32* @dev_attr_speed)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %48 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %47, i32 0, i32 1
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dev_warn(i32* %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %53 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %63 [
    i32 129, label %55
    i32 128, label %58
  ]

55:                                               ; preds = %51
  %56 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %57 = call i32 @wacom_poke(%struct.hid_device* %56, i32 1)
  br label %63

58:                                               ; preds = %51
  %59 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %60 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %62 = call i32 @wacom_set_features(%struct.hid_device* %61)
  br label %63

63:                                               ; preds = %51, %58, %55
  store i32 0, i32* %3, align 4
  br label %68

64:                                               ; preds = %36, %26
  %65 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %66 = call i32 @kfree(%struct.wacom_data* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %63, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.wacom_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.wacom_data*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @wacom_poke(%struct.hid_device*, i32) #1

declare dso_local i32 @wacom_set_features(%struct.hid_device*) #1

declare dso_local i32 @kfree(%struct.wacom_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
