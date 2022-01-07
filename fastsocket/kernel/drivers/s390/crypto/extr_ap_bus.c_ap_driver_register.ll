; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_driver_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_driver = type { %struct.device_driver }
%struct.device_driver = type { i8*, %struct.module*, i32, i32, i32* }
%struct.module = type { i32 }

@ap_bus_type = common dso_local global i32 0, align 4
@ap_device_probe = common dso_local global i32 0, align 4
@ap_device_remove = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_driver_register(%struct.ap_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca %struct.ap_driver*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device_driver*, align 8
  store %struct.ap_driver* %0, %struct.ap_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.ap_driver*, %struct.ap_driver** %4, align 8
  %9 = getelementptr inbounds %struct.ap_driver, %struct.ap_driver* %8, i32 0, i32 0
  store %struct.device_driver* %9, %struct.device_driver** %7, align 8
  %10 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %11 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %10, i32 0, i32 4
  store i32* @ap_bus_type, i32** %11, align 8
  %12 = load i32, i32* @ap_device_probe, align 4
  %13 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %14 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @ap_device_remove, align 4
  %16 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %17 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.module*, %struct.module** %5, align 8
  %19 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %20 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %19, i32 0, i32 1
  store %struct.module* %18, %struct.module** %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %23 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %25 = call i32 @driver_register(%struct.device_driver* %24)
  ret i32 %25
}

declare dso_local i32 @driver_register(%struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
