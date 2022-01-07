; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio_bus.c_mdiobus_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio_bus.c_mdiobus_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.mii_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_device* @mdiobus_scan(%struct.mii_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.phy_device* @get_phy_device(%struct.mii_bus* %8, i32 %9)
  store %struct.phy_device* %10, %struct.phy_device** %6, align 8
  %11 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %12 = call i64 @IS_ERR(%struct.phy_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %16 = icmp eq %struct.phy_device* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %2
  %18 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  store %struct.phy_device* %18, %struct.phy_device** %3, align 8
  br label %29

19:                                               ; preds = %14
  %20 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %21 = call i32 @phy_device_register(%struct.phy_device* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %26 = call i32 @phy_device_free(%struct.phy_device* %25)
  store %struct.phy_device* null, %struct.phy_device** %3, align 8
  br label %29

27:                                               ; preds = %19
  %28 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  store %struct.phy_device* %28, %struct.phy_device** %3, align 8
  br label %29

29:                                               ; preds = %27, %24, %17
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  ret %struct.phy_device* %30
}

declare dso_local %struct.phy_device* @get_phy_device(%struct.mii_bus*, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_device_register(%struct.phy_device*) #1

declare dso_local i32 @phy_device_free(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
