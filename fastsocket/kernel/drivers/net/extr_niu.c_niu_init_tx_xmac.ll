; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_tx_xmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_tx_xmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@XMAC_MIN = common dso_local global i32 0, align 4
@XMAC_MIN_TX_MIN_PKT_SIZE = common dso_local global i32 0, align 4
@XMAC_MIN_RX_MIN_PKT_SIZE = common dso_local global i32 0, align 4
@XMAC_MIN_RX_MIN_PKT_SIZE_SHFT = common dso_local global i32 0, align 4
@XMAC_MIN_TX_MIN_PKT_SIZE_SHFT = common dso_local global i32 0, align 4
@XMAC_MAX = common dso_local global i32 0, align 4
@XTXMAC_STAT_MSK = common dso_local global i32 0, align 4
@XMAC_IPG = common dso_local global i32 0, align 4
@NIU_FLAGS_10G = common dso_local global i32 0, align 4
@XMAC_IPG_IPG_XGMII = common dso_local global i32 0, align 4
@IPG_12_15_XGMII = common dso_local global i32 0, align 4
@XMAC_IPG_IPG_XGMII_SHIFT = common dso_local global i32 0, align 4
@XMAC_IPG_IPG_MII_GMII = common dso_local global i32 0, align 4
@IPG_12_MII_GMII = common dso_local global i32 0, align 4
@XMAC_IPG_IPG_MII_GMII_SHIFT = common dso_local global i32 0, align 4
@XMAC_CONFIG = common dso_local global i32 0, align 4
@XMAC_CONFIG_ALWAYS_NO_CRC = common dso_local global i32 0, align 4
@XMAC_CONFIG_STRETCH_MODE = common dso_local global i32 0, align 4
@XMAC_CONFIG_VAR_MIN_IPG_EN = common dso_local global i32 0, align 4
@XMAC_CONFIG_TX_ENABLE = common dso_local global i32 0, align 4
@TXMAC_FRM_CNT = common dso_local global i32 0, align 4
@TXMAC_BYTE_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, i32, i32)* @niu_init_tx_xmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_init_tx_xmac(%struct.niu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @XMAC_MIN, align 4
  %9 = call i32 @nr64_mac(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @XMAC_MIN_TX_MIN_PKT_SIZE, align 4
  %11 = load i32, i32* @XMAC_MIN_RX_MIN_PKT_SIZE, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @XMAC_MIN_RX_MIN_PKT_SIZE_SHFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @XMAC_MIN_TX_MIN_PKT_SIZE_SHFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @XMAC_MIN, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @nw64_mac(i32 %26, i32 %27)
  %29 = load i32, i32* @XMAC_MAX, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @nw64_mac(i32 %29, i32 %30)
  %32 = load i32, i32* @XTXMAC_STAT_MSK, align 4
  %33 = call i32 @nw64_mac(i32 %32, i32 -1)
  %34 = load i32, i32* @XMAC_IPG, align 4
  %35 = call i32 @nr64_mac(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.niu*, %struct.niu** %4, align 8
  %37 = getelementptr inbounds %struct.niu, %struct.niu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NIU_FLAGS_10G, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %3
  %43 = load i32, i32* @XMAC_IPG_IPG_XGMII, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @IPG_12_15_XGMII, align 4
  %48 = load i32, i32* @XMAC_IPG_IPG_XGMII_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %62

52:                                               ; preds = %3
  %53 = load i32, i32* @XMAC_IPG_IPG_MII_GMII, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @IPG_12_MII_GMII, align 4
  %58 = load i32, i32* @XMAC_IPG_IPG_MII_GMII_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %52, %42
  %63 = load i32, i32* @XMAC_IPG, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @nw64_mac(i32 %63, i32 %64)
  %66 = load i32, i32* @XMAC_CONFIG, align 4
  %67 = call i32 @nr64_mac(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @XMAC_CONFIG_ALWAYS_NO_CRC, align 4
  %69 = load i32, i32* @XMAC_CONFIG_STRETCH_MODE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @XMAC_CONFIG_VAR_MIN_IPG_EN, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @XMAC_CONFIG_TX_ENABLE, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @XMAC_CONFIG, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @nw64_mac(i32 %78, i32 %79)
  %81 = load i32, i32* @TXMAC_FRM_CNT, align 4
  %82 = call i32 @nw64_mac(i32 %81, i32 0)
  %83 = load i32, i32* @TXMAC_BYTE_CNT, align 4
  %84 = call i32 @nw64_mac(i32 %83, i32 0)
  ret void
}

declare dso_local i32 @nr64_mac(i32) #1

declare dso_local i32 @nw64_mac(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
