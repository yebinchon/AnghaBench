; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_init_rx_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_init_rx_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@FR_AZ_RX_CFG = common dso_local global i32 0, align 4
@EFX_REV_FALCON_A1 = common dso_local global i64 0, align 8
@FRF_AA_RX_DESC_PUSH_EN = common dso_local global i32 0, align 4
@FRF_AA_RX_USR_BUF_SIZE = common dso_local global i32 0, align 4
@FRF_AA_RX_XON_MAC_TH = common dso_local global i32 0, align 4
@FRF_AA_RX_XOFF_MAC_TH = common dso_local global i32 0, align 4
@FRF_AA_RX_XON_TX_TH = common dso_local global i32 0, align 4
@FRF_AA_RX_XOFF_TX_TH = common dso_local global i32 0, align 4
@FRF_BZ_RX_DESC_PUSH_EN = common dso_local global i32 0, align 4
@FRF_BZ_RX_USR_BUF_SIZE = common dso_local global i32 0, align 4
@EFX_RX_USR_BUF_SIZE = common dso_local global i32 0, align 4
@FRF_BZ_RX_XON_MAC_TH = common dso_local global i32 0, align 4
@FRF_BZ_RX_XOFF_MAC_TH = common dso_local global i32 0, align 4
@FRF_BZ_RX_XON_TX_TH = common dso_local global i32 0, align 4
@FRF_BZ_RX_XOFF_TX_TH = common dso_local global i32 0, align 4
@FRF_BZ_RX_INGR_EN = common dso_local global i32 0, align 4
@FRF_BZ_RX_HASH_INSRT_HDR = common dso_local global i32 0, align 4
@FRF_BZ_RX_HASH_ALG = common dso_local global i32 0, align 4
@FRF_BZ_RX_IP_HASH = common dso_local global i32 0, align 4
@FRF_AZ_RX_XOFF_MAC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @falcon_init_rx_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_init_rx_cfg(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  store i32 20, i32* %3, align 4
  store i32 25, i32* %4, align 4
  %6 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %7 = load i32, i32* @FR_AZ_RX_CFG, align 4
  %8 = call i32 @efx_reado(%struct.efx_nic* %6, i32* %5, i32 %7)
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = call i64 @efx_nic_rev(%struct.efx_nic* %9)
  %11 = load i64, i64* @EFX_REV_FALCON_A1, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @FRF_AA_RX_DESC_PUSH_EN, align 4
  %16 = call i32 @EFX_SET_OWORD_FIELD(i32 %14, i32 %15, i32 0)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @FRF_AA_RX_USR_BUF_SIZE, align 4
  %19 = call i32 @EFX_SET_OWORD_FIELD(i32 %17, i32 %18, i32 384)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @FRF_AA_RX_XON_MAC_TH, align 4
  %22 = call i32 @EFX_SET_OWORD_FIELD(i32 %20, i32 %21, i32 2)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @FRF_AA_RX_XOFF_MAC_TH, align 4
  %25 = call i32 @EFX_SET_OWORD_FIELD(i32 %23, i32 %24, i32 8)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @FRF_AA_RX_XON_TX_TH, align 4
  %28 = call i32 @EFX_SET_OWORD_FIELD(i32 %26, i32 %27, i32 20)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @FRF_AA_RX_XOFF_TX_TH, align 4
  %31 = call i32 @EFX_SET_OWORD_FIELD(i32 %29, i32 %30, i32 25)
  br label %65

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @FRF_BZ_RX_DESC_PUSH_EN, align 4
  %35 = call i32 @EFX_SET_OWORD_FIELD(i32 %33, i32 %34, i32 0)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @FRF_BZ_RX_USR_BUF_SIZE, align 4
  %38 = load i32, i32* @EFX_RX_USR_BUF_SIZE, align 4
  %39 = ashr i32 %38, 5
  %40 = call i32 @EFX_SET_OWORD_FIELD(i32 %36, i32 %37, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @FRF_BZ_RX_XON_MAC_TH, align 4
  %43 = call i32 @EFX_SET_OWORD_FIELD(i32 %41, i32 %42, i32 108)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @FRF_BZ_RX_XOFF_MAC_TH, align 4
  %46 = call i32 @EFX_SET_OWORD_FIELD(i32 %44, i32 %45, i32 212)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @FRF_BZ_RX_XON_TX_TH, align 4
  %49 = call i32 @EFX_SET_OWORD_FIELD(i32 %47, i32 %48, i32 20)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @FRF_BZ_RX_XOFF_TX_TH, align 4
  %52 = call i32 @EFX_SET_OWORD_FIELD(i32 %50, i32 %51, i32 25)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @FRF_BZ_RX_INGR_EN, align 4
  %55 = call i32 @EFX_SET_OWORD_FIELD(i32 %53, i32 %54, i32 1)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @FRF_BZ_RX_HASH_INSRT_HDR, align 4
  %58 = call i32 @EFX_SET_OWORD_FIELD(i32 %56, i32 %57, i32 1)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @FRF_BZ_RX_HASH_ALG, align 4
  %61 = call i32 @EFX_SET_OWORD_FIELD(i32 %59, i32 %60, i32 1)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @FRF_BZ_RX_IP_HASH, align 4
  %64 = call i32 @EFX_SET_OWORD_FIELD(i32 %62, i32 %63, i32 1)
  br label %65

65:                                               ; preds = %32, %13
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @FRF_AZ_RX_XOFF_MAC_EN, align 4
  %68 = call i32 @EFX_SET_OWORD_FIELD(i32 %66, i32 %67, i32 1)
  %69 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %70 = load i32, i32* @FR_AZ_RX_CFG, align 4
  %71 = call i32 @efx_writeo(%struct.efx_nic* %69, i32* %5, i32 %70)
  ret void
}

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @EFX_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
