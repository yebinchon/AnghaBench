; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-samsung.c_samsung_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-samsung.c_samsung_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 }
%struct.hid_device_id = type { i32 }

@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_HIDINPUT = common dso_local global i32 0, align 4
@HID_CONNECT_HIDDEV_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @samsung_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsung_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %10 = call i32 @hid_parse(%struct.hid_device* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 1
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 184
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @HID_CONNECT_HIDINPUT, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %22, %17
  %30 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @hid_hw_start(%struct.hid_device* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %37 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %36, i32 0, i32 1
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %40

39:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %42

40:                                               ; preds = %35, %13
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
