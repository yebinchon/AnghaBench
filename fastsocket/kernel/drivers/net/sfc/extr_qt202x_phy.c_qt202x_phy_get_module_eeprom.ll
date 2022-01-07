; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_qt202x_phy.c_qt202x_phy_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_qt202x_phy.c_qt202x_phy_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64 }
%struct.ethtool_eeprom = type { i32, i64 }

@PHY_TYPE_QT2025C = common dso_local global i64 0, align 8
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.ethtool_eeprom*, i32*)* @qt202x_phy_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt202x_phy_get_module_eeprom(%struct.efx_nic* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PHY_TYPE_QT2025C, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @MDIO_MMD_PCS, align 4
  store i32 %18, i32* %8, align 4
  store i32 53248, i32* %9, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  store i32 %20, i32* %8, align 4
  store i32 32775, i32* %9, align 4
  br label %21

21:                                               ; preds = %19, %17
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %51, %21
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %25 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %34 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i32 @efx_mdio_read(%struct.efx_nic* %29, i32 %30, i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %55

45:                                               ; preds = %28
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %22

54:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @efx_mdio_read(%struct.efx_nic*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
