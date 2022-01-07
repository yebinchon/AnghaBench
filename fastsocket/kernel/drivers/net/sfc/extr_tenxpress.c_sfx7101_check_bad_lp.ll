; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tenxpress.c_sfx7101_check_bad_lp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tenxpress.c_sfx7101_check_bad_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.tenxpress_phy_data* }
%struct.tenxpress_phy_data = type { i32 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_STAT1 = common dso_local global i32 0, align 4
@MDIO_AN_STAT1_LPABLE = common dso_local global i32 0, align 4
@MDIO_AN_STAT1_COMPLETE = common dso_local global i32 0, align 4
@MAX_BAD_LP_TRIES = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@PMA_PMD_LED_OVERR_REG = common dso_local global i32 0, align 4
@PMA_PMD_LED_MASK = common dso_local global i32 0, align 4
@PMA_PMD_LED_RX_LBN = common dso_local global i32 0, align 4
@PMA_PMD_LED_OFF = common dso_local global i32 0, align 4
@PMA_PMD_LED_FLASH = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [129 x i8] c"appears to be plugged into a port that is not 10GBASE-T capable. The PHY supports 10GBASE-T ONLY, so no link can be established\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32)* @sfx7101_check_bad_lp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfx7101_check_bad_lp(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tenxpress_phy_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 1
  %10 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %9, align 8
  store %struct.tenxpress_phy_data* %10, %struct.tenxpress_phy_data** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %16 = load i32, i32* @MDIO_MMD_AN, align 4
  %17 = load i32, i32* @MDIO_STAT1, align 4
  %18 = call i32 @efx_mdio_read(%struct.efx_nic* %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MDIO_AN_STAT1_LPABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %94

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MDIO_AN_STAT1_COMPLETE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %5, align 8
  %35 = getelementptr inbounds %struct.tenxpress_phy_data, %struct.tenxpress_phy_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %24
  br label %39

39:                                               ; preds = %38, %13
  %40 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %5, align 8
  %41 = getelementptr inbounds %struct.tenxpress_phy_data, %struct.tenxpress_phy_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %94

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %5, align 8
  %50 = getelementptr inbounds %struct.tenxpress_phy_data, %struct.tenxpress_phy_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MAX_BAD_LP_TRIES, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %48, %45
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %57 = load i32, i32* @PMA_PMD_LED_OVERR_REG, align 4
  %58 = call i32 @efx_mdio_read(%struct.efx_nic* %55, i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @PMA_PMD_LED_MASK, align 4
  %60 = load i32, i32* @PMA_PMD_LED_RX_LBN, align 4
  %61 = shl i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %54
  %68 = load i32, i32* @PMA_PMD_LED_OFF, align 4
  %69 = load i32, i32* @PMA_PMD_LED_RX_LBN, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %85

73:                                               ; preds = %54
  %74 = load i32, i32* @PMA_PMD_LED_FLASH, align 4
  %75 = load i32, i32* @PMA_PMD_LED_RX_LBN, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %80 = load i32, i32* @link, align 4
  %81 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %82 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @netif_err(%struct.efx_nic* %79, i32 %80, i32 %83, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %73, %67
  %86 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %87 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %88 = load i32, i32* @PMA_PMD_LED_OVERR_REG, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @efx_mdio_write(%struct.efx_nic* %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.tenxpress_phy_data*, %struct.tenxpress_phy_data** %5, align 8
  %93 = getelementptr inbounds %struct.tenxpress_phy_data, %struct.tenxpress_phy_data* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %23, %44, %85, %48
  ret void
}

declare dso_local i32 @efx_mdio_read(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_mdio_write(%struct.efx_nic*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
