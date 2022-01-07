; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_phy_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_phy_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.mv643xx_eth_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mii_bus* }
%struct.mii_bus = type { %struct.phy_device** }

@MV643XX_ETH_PHY_ADDR_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy_device* (%struct.mv643xx_eth_private*, i32)* @phy_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy_device* @phy_scan(%struct.mv643xx_eth_private* %0, i32 %1) #0 {
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %12 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.mii_bus*, %struct.mii_bus** %16, align 8
  store %struct.mii_bus* %17, %struct.mii_bus** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MV643XX_ETH_PHY_ADDR_DEFAULT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %23 = call i32 @phy_addr_get(%struct.mv643xx_eth_private* %22)
  %24 = and i32 %23, 31
  store i32 %24, i32* %7, align 4
  store i32 32, i32* %8, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 31
  store i32 %27, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %21
  store %struct.phy_device* null, %struct.phy_device** %6, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %69, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %34, %35
  %37 = and i32 %36, 31
  store i32 %37, i32* %10, align 4
  %38 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %39 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %38, i32 0, i32 0
  %40 = load %struct.phy_device**, %struct.phy_device*** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %40, i64 %42
  %44 = load %struct.phy_device*, %struct.phy_device** %43, align 8
  %45 = icmp eq %struct.phy_device* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @mdiobus_scan(%struct.mii_bus* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %33
  %51 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %52 = icmp eq %struct.phy_device* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %55 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %54, i32 0, i32 0
  %56 = load %struct.phy_device**, %struct.phy_device*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %56, i64 %58
  %60 = load %struct.phy_device*, %struct.phy_device** %59, align 8
  store %struct.phy_device* %60, %struct.phy_device** %6, align 8
  %61 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %62 = icmp ne %struct.phy_device* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @phy_addr_set(%struct.mv643xx_eth_private* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %53
  br label %68

68:                                               ; preds = %67, %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %29

72:                                               ; preds = %29
  %73 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  ret %struct.phy_device* %73
}

declare dso_local i32 @phy_addr_get(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @mdiobus_scan(%struct.mii_bus*, i32) #1

declare dso_local i32 @phy_addr_set(%struct.mv643xx_eth_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
