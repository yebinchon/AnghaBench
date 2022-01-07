; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_bus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.ap_device = type { i64 }
%struct.ap_driver = type { %struct.ap_device_id* }
%struct.ap_device_id = type { i32, i64 }

@AP_DEVICE_ID_MATCH_DEVICE_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @ap_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.ap_device*, align 8
  %7 = alloca %struct.ap_driver*, align 8
  %8 = alloca %struct.ap_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.ap_device* @to_ap_dev(%struct.device* %9)
  store %struct.ap_device* %10, %struct.ap_device** %6, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %12 = call %struct.ap_driver* @to_ap_drv(%struct.device_driver* %11)
  store %struct.ap_driver* %12, %struct.ap_driver** %7, align 8
  %13 = load %struct.ap_driver*, %struct.ap_driver** %7, align 8
  %14 = getelementptr inbounds %struct.ap_driver, %struct.ap_driver* %13, i32 0, i32 0
  %15 = load %struct.ap_device_id*, %struct.ap_device_id** %14, align 8
  store %struct.ap_device_id* %15, %struct.ap_device_id** %8, align 8
  br label %16

16:                                               ; preds = %38, %2
  %17 = load %struct.ap_device_id*, %struct.ap_device_id** %8, align 8
  %18 = getelementptr inbounds %struct.ap_device_id, %struct.ap_device_id* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load %struct.ap_device_id*, %struct.ap_device_id** %8, align 8
  %23 = getelementptr inbounds %struct.ap_device_id, %struct.ap_device_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AP_DEVICE_ID_MATCH_DEVICE_TYPE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.ap_device_id*, %struct.ap_device_id** %8, align 8
  %30 = getelementptr inbounds %struct.ap_device_id, %struct.ap_device_id* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ap_device*, %struct.ap_device** %6, align 8
  %33 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %38

37:                                               ; preds = %28, %21
  store i32 1, i32* %3, align 4
  br label %42

38:                                               ; preds = %36
  %39 = load %struct.ap_device_id*, %struct.ap_device_id** %8, align 8
  %40 = getelementptr inbounds %struct.ap_device_id, %struct.ap_device_id* %39, i32 1
  store %struct.ap_device_id* %40, %struct.ap_device_id** %8, align 8
  br label %16

41:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.ap_device* @to_ap_dev(%struct.device*) #1

declare dso_local %struct.ap_driver* @to_ap_drv(%struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
