; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_vitesse.c_vsc824x_config_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_vitesse.c_vsc824x_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@MII_VSC8244_AUX_CONSTAT = common dso_local global i32 0, align 4
@MII_VSC8244_AUXCONSTAT_INIT = common dso_local global i32 0, align 4
@MII_VSC8244_EXT_CON1 = common dso_local global i32 0, align 4
@MII_VSC8244_EXTCON1_TX_SKEW_MASK = common dso_local global i32 0, align 4
@MII_VSC8244_EXTCON1_RX_SKEW_MASK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@MII_VSC8244_EXTCON1_TX_SKEW = common dso_local global i32 0, align 4
@MII_VSC8244_EXTCON1_RX_SKEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc824x_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc824x_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = load i32, i32* @MII_VSC8244_AUX_CONSTAT, align 4
  %8 = load i32, i32* @MII_VSC8244_AUXCONSTAT_INIT, align 4
  %9 = call i32 @phy_write(%struct.phy_device* %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = load i32, i32* @MII_VSC8244_EXT_CON1, align 4
  %17 = call i32 @phy_read(%struct.phy_device* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %46

22:                                               ; preds = %14
  %23 = load i32, i32* @MII_VSC8244_EXTCON1_TX_SKEW_MASK, align 4
  %24 = load i32, i32* @MII_VSC8244_EXTCON1_RX_SKEW_MASK, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load i32, i32* @MII_VSC8244_EXTCON1_TX_SKEW, align 4
  %36 = load i32, i32* @MII_VSC8244_EXTCON1_RX_SKEW, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %34, %22
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = load i32, i32* @MII_VSC8244_EXT_CON1, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @phy_write(%struct.phy_device* %41, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %20, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
