; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio_bus.c_mdio_bus_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio_bus.c_mdio_bus_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.phy_driver = type { i32 (%struct.phy_device*)* }
%struct.phy_device = type opaque
%struct.phy_device.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mdio_bus_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_bus_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.phy_driver*, align 8
  %5 = alloca %struct.phy_device.0*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.phy_driver* @to_phy_driver(i32 %8)
  store %struct.phy_driver* %9, %struct.phy_driver** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.phy_device.0* @to_phy_device(%struct.device* %10)
  store %struct.phy_device.0* %11, %struct.phy_device.0** %5, align 8
  %12 = load %struct.phy_device.0*, %struct.phy_device.0** %5, align 8
  %13 = call i32 @mdio_bus_phy_may_suspend(%struct.phy_device.0* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %18 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %18, align 8
  %20 = load %struct.phy_device.0*, %struct.phy_device.0** %5, align 8
  %21 = bitcast %struct.phy_device.0* %20 to %struct.phy_device*
  %22 = call i32 %19(%struct.phy_device* %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %16, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.phy_driver* @to_phy_driver(i32) #1

declare dso_local %struct.phy_device.0* @to_phy_device(%struct.device*) #1

declare dso_local i32 @mdio_bus_phy_may_suspend(%struct.phy_device.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
