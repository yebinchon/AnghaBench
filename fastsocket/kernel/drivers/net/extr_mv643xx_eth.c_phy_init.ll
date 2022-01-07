; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32, %struct.phy_device* }
%struct.phy_device = type { i32, i32, i32, i32, i32, i32 }

@PHY_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*, i32, i32)* @phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_init(%struct.mv643xx_eth_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mv643xx_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.phy_device*, align 8
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %9 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %8, i32 0, i32 1
  %10 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  store %struct.phy_device* %10, %struct.phy_device** %7, align 8
  %11 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %12 = call i32 @phy_reset(%struct.mv643xx_eth_private* %11)
  %13 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %14 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 5
  %18 = call i32 @dev_name(i32* %17)
  %19 = load i32, i32* @PHY_INTERFACE_MODE_GMII, align 4
  %20 = call i32 @phy_attach(i32 %15, i32 %18, i32 0, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %3
  %24 = load i32, i32* @AUTONEG_ENABLE, align 4
  %25 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %50

38:                                               ; preds = %3
  %39 = load i32, i32* @AUTONEG_DISABLE, align 4
  %40 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %43 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %42, i32 0, i32 2
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %46 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %49 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %38, %23
  %51 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %52 = call i32 @phy_start_aneg(%struct.phy_device* %51)
  ret void
}

declare dso_local i32 @phy_reset(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @phy_attach(i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @phy_start_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
