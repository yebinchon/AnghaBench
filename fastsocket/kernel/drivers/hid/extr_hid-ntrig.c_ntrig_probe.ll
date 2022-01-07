; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-ntrig.c_ntrig_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-ntrig.c_ntrig_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }
%struct.ntrig_data = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot allocate N-Trig data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @ntrig_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntrig_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ntrig_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ntrig_data* @kmalloc(i32 16, i32 %8)
  store %struct.ntrig_data* %9, %struct.ntrig_data** %7, align 8
  %10 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %11 = icmp ne %struct.ntrig_data* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %20 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %22 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %24 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %25 = call i32 @hid_set_drvdata(%struct.hid_device* %23, %struct.ntrig_data* %24)
  %26 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %27 = call i32 @hid_parse(%struct.hid_device* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %18
  %31 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %32 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %33 = call i32 @hid_hw_start(%struct.hid_device* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %18
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %39 = call i32 @kfree(%struct.ntrig_data* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.ntrig_data* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.ntrig_data*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @kfree(%struct.ntrig_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
