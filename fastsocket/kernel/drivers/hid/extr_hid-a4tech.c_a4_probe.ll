; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-a4tech.c_a4_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-a4tech.c_a4_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }
%struct.a4tech_sc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't alloc device descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @a4_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a4_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca %struct.a4tech_sc*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.a4tech_sc* @kzalloc(i32 4, i32 %8)
  store %struct.a4tech_sc* %9, %struct.a4tech_sc** %6, align 8
  %10 = load %struct.a4tech_sc*, %struct.a4tech_sc** %6, align 8
  %11 = icmp eq %struct.a4tech_sc* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.a4tech_sc*, %struct.a4tech_sc** %6, align 8
  %23 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %25 = load %struct.a4tech_sc*, %struct.a4tech_sc** %6, align 8
  %26 = call i32 @hid_set_drvdata(%struct.hid_device* %24, %struct.a4tech_sc* %25)
  %27 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %28 = call i32 @hid_parse(%struct.hid_device* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %33 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %46

35:                                               ; preds = %18
  %36 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %37 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %38 = call i32 @hid_hw_start(%struct.hid_device* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %43 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %46

45:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %50

46:                                               ; preds = %41, %31, %12
  %47 = load %struct.a4tech_sc*, %struct.a4tech_sc** %6, align 8
  %48 = call i32 @kfree(%struct.a4tech_sc* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %45
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.a4tech_sc* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.a4tech_sc*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @kfree(%struct.a4tech_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
