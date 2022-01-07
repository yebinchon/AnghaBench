; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_stf_chain_upd_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_stf_chain_upd_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NPHY_RfseqCoreActv_TxRxChain0 = common dso_local global i32 0, align 4
@NPHY_RfseqCoreActv_TxRxChain1 = common dso_local global i32 0, align 4
@BRCMS_N_TXRX_CHAIN0 = common dso_local global i64 0, align 8
@BRCMS_N_TXRX_CHAIN1 = common dso_local global i64 0, align 8
@PHY_PERICAL_DISABLE = common dso_local global i32 0, align 4
@NPHY_RfseqMode_CoreActv_override = common dso_local global i32 0, align 4
@PHY_PERICAL_MPHASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_stf_chain_upd_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %5 = load i32, i32* @NPHY_RfseqCoreActv_TxRxChain0, align 4
  %6 = load i32, i32* @NPHY_RfseqCoreActv_TxRxChain1, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %9 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BRCMS_N_TXRX_CHAIN0, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @NPHY_RfseqCoreActv_TxRxChain0, align 4
  store i32 %14, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @NREV_LE(i32 %18, i32 2)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = call i32 @and_phy_reg(%struct.brcms_phy* %22, i32 160, i32 -33)
  br label %24

24:                                               ; preds = %21, %13
  br label %44

25:                                               ; preds = %1
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BRCMS_N_TXRX_CHAIN1, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load i32, i32* @NPHY_RfseqCoreActv_TxRxChain1, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %34 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @NREV_LE(i32 %36, i32 2)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = call i32 @or_phy_reg(%struct.brcms_phy* %40, i32 160, i32 32)
  br label %42

42:                                               ; preds = %39, %31
  br label %43

43:                                               ; preds = %42, %25
  br label %44

44:                                               ; preds = %43, %24
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @mod_phy_reg(%struct.brcms_phy* %45, i32 162, i32 255, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32, i32* @PHY_PERICAL_DISABLE, align 4
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %53 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %55 = load i32, i32* @NPHY_RfseqMode_CoreActv_override, align 4
  %56 = call i32 @or_phy_reg(%struct.brcms_phy* %54, i32 161, i32 %55)
  br label %65

57:                                               ; preds = %44
  %58 = load i32, i32* @PHY_PERICAL_MPHASE, align 4
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %60 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %62 = load i32, i32* @NPHY_RfseqMode_CoreActv_override, align 4
  %63 = xor i32 %62, -1
  %64 = call i32 @and_phy_reg(%struct.brcms_phy* %61, i32 161, i32 %63)
  br label %65

65:                                               ; preds = %57, %50
  ret void
}

declare dso_local i64 @NREV_LE(i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
