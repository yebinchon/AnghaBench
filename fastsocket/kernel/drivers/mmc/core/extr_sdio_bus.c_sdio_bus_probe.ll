; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_bus.c_sdio_bus_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_bus.c_sdio_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdio_driver = type { i32 (%struct.sdio_func*, %struct.sdio_device_id*)* }
%struct.sdio_func = type { i32 }
%struct.sdio_device_id = type opaque
%struct.sdio_device_id.0 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sdio_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_bus_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sdio_driver*, align 8
  %5 = alloca %struct.sdio_func*, align 8
  %6 = alloca %struct.sdio_device_id.0*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sdio_driver* @to_sdio_driver(i32 %10)
  store %struct.sdio_driver* %11, %struct.sdio_driver** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.sdio_func* @dev_to_sdio_func(%struct.device* %12)
  store %struct.sdio_func* %13, %struct.sdio_func** %5, align 8
  %14 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %15 = load %struct.sdio_driver*, %struct.sdio_driver** %4, align 8
  %16 = call %struct.sdio_device_id.0* @sdio_match_device(%struct.sdio_func* %14, %struct.sdio_driver* %15)
  store %struct.sdio_device_id.0* %16, %struct.sdio_device_id.0** %6, align 8
  %17 = load %struct.sdio_device_id.0*, %struct.sdio_device_id.0** %6, align 8
  %18 = icmp ne %struct.sdio_device_id.0* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %41

22:                                               ; preds = %1
  %23 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %24 = call i32 @sdio_claim_host(%struct.sdio_func* %23)
  %25 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %26 = call i32 @sdio_set_block_size(%struct.sdio_func* %25, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %28 = call i32 @sdio_release_host(%struct.sdio_func* %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %41

33:                                               ; preds = %22
  %34 = load %struct.sdio_driver*, %struct.sdio_driver** %4, align 8
  %35 = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %34, i32 0, i32 0
  %36 = load i32 (%struct.sdio_func*, %struct.sdio_device_id*)*, i32 (%struct.sdio_func*, %struct.sdio_device_id*)** %35, align 8
  %37 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %38 = load %struct.sdio_device_id.0*, %struct.sdio_device_id.0** %6, align 8
  %39 = bitcast %struct.sdio_device_id.0* %38 to %struct.sdio_device_id*
  %40 = call i32 %36(%struct.sdio_func* %37, %struct.sdio_device_id* %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %33, %31, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.sdio_driver* @to_sdio_driver(i32) #1

declare dso_local %struct.sdio_func* @dev_to_sdio_func(%struct.device*) #1

declare dso_local %struct.sdio_device_id.0* @sdio_match_device(%struct.sdio_func*, %struct.sdio_driver*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
