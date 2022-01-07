; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-pl.c_pl_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-pl.c_pl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 }
%struct.hid_device_id = type { i64 }

@HID_QUIRK_MULTI_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@HID_CONNECT_FF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @pl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %7 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %8 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @HID_QUIRK_MULTI_INPUT, align 4
  %13 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = call i32 @hid_parse(%struct.hid_device* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %24 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %42

26:                                               ; preds = %17
  %27 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %28 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %29 = load i32, i32* @HID_CONNECT_FF, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @hid_hw_start(%struct.hid_device* %27, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %37 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %42

39:                                               ; preds = %26
  %40 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %41 = call i32 @plff_init(%struct.hid_device* %40)
  store i32 0, i32* %3, align 4
  br label %44

42:                                               ; preds = %35, %22
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @plff_init(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
