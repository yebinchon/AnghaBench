; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_bus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.ssb_device = type { i32 }
%struct.ssb_driver = type { %struct.ssb_device_id* }
%struct.ssb_device_id = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @ssb_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.ssb_device*, align 8
  %7 = alloca %struct.ssb_driver*, align 8
  %8 = alloca %struct.ssb_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.ssb_device* @dev_to_ssb_dev(%struct.device* %9)
  store %struct.ssb_device* %10, %struct.ssb_device** %6, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %12 = call %struct.ssb_driver* @drv_to_ssb_drv(%struct.device_driver* %11)
  store %struct.ssb_driver* %12, %struct.ssb_driver** %7, align 8
  %13 = load %struct.ssb_driver*, %struct.ssb_driver** %7, align 8
  %14 = getelementptr inbounds %struct.ssb_driver, %struct.ssb_driver* %13, i32 0, i32 0
  %15 = load %struct.ssb_device_id*, %struct.ssb_device_id** %14, align 8
  store %struct.ssb_device_id* %15, %struct.ssb_device_id** %8, align 8
  br label %16

16:                                               ; preds = %41, %2
  %17 = load %struct.ssb_device_id*, %struct.ssb_device_id** %8, align 8
  %18 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.ssb_device_id*, %struct.ssb_device_id** %8, align 8
  %23 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.ssb_device_id*, %struct.ssb_device_id** %8, align 8
  %28 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %21, %16
  %32 = phi i1 [ true, %21 ], [ true, %16 ], [ %30, %26 ]
  br i1 %32, label %33, label %44

33:                                               ; preds = %31
  %34 = load %struct.ssb_device_id*, %struct.ssb_device_id** %8, align 8
  %35 = load %struct.ssb_device*, %struct.ssb_device** %6, align 8
  %36 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %35, i32 0, i32 0
  %37 = call i64 @ssb_match_devid(%struct.ssb_device_id* %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %45

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.ssb_device_id*, %struct.ssb_device_id** %8, align 8
  %43 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %42, i32 1
  store %struct.ssb_device_id* %43, %struct.ssb_device_id** %8, align 8
  br label %16

44:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.ssb_device* @dev_to_ssb_dev(%struct.device*) #1

declare dso_local %struct.ssb_driver* @drv_to_ssb_drv(%struct.device_driver*) #1

declare dso_local i64 @ssb_match_devid(%struct.ssb_device_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
