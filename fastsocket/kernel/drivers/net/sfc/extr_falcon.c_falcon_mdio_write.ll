; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_mdio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.efx_nic = type { i32, %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"writing MDIO %d register %d.%d with 0x%04x\0A\00", align 1
@FRF_AB_MD_PHY_ADR = common dso_local global i32 0, align 4
@FR_AB_MD_PHY_ADR = common dso_local global i32 0, align 4
@FRF_AB_MD_PRT_ADR = common dso_local global i32 0, align 4
@FRF_AB_MD_DEV_ADR = common dso_local global i32 0, align 4
@FR_AB_MD_ID = common dso_local global i32 0, align 4
@FRF_AB_MD_TXD = common dso_local global i32 0, align 4
@FR_AB_MD_TXD = common dso_local global i32 0, align 4
@FRF_AB_MD_WRC = common dso_local global i32 0, align 4
@FRF_AB_MD_GC = common dso_local global i32 0, align 4
@FR_AB_MD_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i32)* @falcon_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.efx_nic*, align 8
  %12 = alloca %struct.falcon_nic_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %15)
  store %struct.efx_nic* %16, %struct.efx_nic** %11, align 8
  %17 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 1
  %19 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %18, align 8
  store %struct.falcon_nic_data* %19, %struct.falcon_nic_data** %12, align 8
  %20 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %21 = load i32, i32* @hw, align 4
  %22 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %23 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @netif_vdbg(%struct.efx_nic* %20, i32 %21, i32 %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %12, align 8
  %31 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %34 = call i32 @falcon_gmii_wait(%struct.efx_nic* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  br label %83

38:                                               ; preds = %5
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @FRF_AB_MD_PHY_ADR, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @EFX_POPULATE_OWORD_1(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %44 = load i32, i32* @FR_AB_MD_PHY_ADR, align 4
  %45 = call i32 @efx_writeo(%struct.efx_nic* %43, i32* %13, i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @FRF_AB_MD_PRT_ADR, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @FRF_AB_MD_DEV_ADR, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @EFX_POPULATE_OWORD_2(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %53 = load i32, i32* @FR_AB_MD_ID, align 4
  %54 = call i32 @efx_writeo(%struct.efx_nic* %52, i32* %13, i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @FRF_AB_MD_TXD, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @EFX_POPULATE_OWORD_1(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %60 = load i32, i32* @FR_AB_MD_TXD, align 4
  %61 = call i32 @efx_writeo(%struct.efx_nic* %59, i32* %13, i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @FRF_AB_MD_WRC, align 4
  %64 = load i32, i32* @FRF_AB_MD_GC, align 4
  %65 = call i32 @EFX_POPULATE_OWORD_2(i32 %62, i32 %63, i32 1, i32 %64, i32 0)
  %66 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %67 = load i32, i32* @FR_AB_MD_CS, align 4
  %68 = call i32 @efx_writeo(%struct.efx_nic* %66, i32* %13, i32 %67)
  %69 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %70 = call i32 @falcon_gmii_wait(%struct.efx_nic* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %38
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @FRF_AB_MD_WRC, align 4
  %76 = load i32, i32* @FRF_AB_MD_GC, align 4
  %77 = call i32 @EFX_POPULATE_OWORD_2(i32 %74, i32 %75, i32 0, i32 %76, i32 1)
  %78 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %79 = load i32, i32* @FR_AB_MD_CS, align 4
  %80 = call i32 @efx_writeo(%struct.efx_nic* %78, i32* %13, i32 %79)
  %81 = call i32 @udelay(i32 10)
  br label %82

82:                                               ; preds = %73, %38
  br label %83

83:                                               ; preds = %82, %37
  %84 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %12, align 8
  %85 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %14, align 4
  ret i32 %87
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_vdbg(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @falcon_gmii_wait(%struct.efx_nic*) #1

declare dso_local i32 @EFX_POPULATE_OWORD_1(i32, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
