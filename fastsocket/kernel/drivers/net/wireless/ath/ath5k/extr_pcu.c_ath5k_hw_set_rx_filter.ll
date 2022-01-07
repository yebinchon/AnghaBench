; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_set_rx_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_set_rx_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64 }

@AR5K_AR5212 = common dso_local global i64 0, align 8
@AR5K_RX_FILTER_RADARERR = common dso_local global i32 0, align 4
@AR5K_PHY_ERR_FIL_RADAR = common dso_local global i32 0, align 4
@AR5K_RX_FILTER_PHYERR = common dso_local global i32 0, align 4
@AR5K_PHY_ERR_FIL_OFDM = common dso_local global i32 0, align 4
@AR5K_PHY_ERR_FIL_CCK = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_RX_FILTER_PROM = common dso_local global i32 0, align 4
@AR5K_RXCFG = common dso_local global i32 0, align 4
@AR5K_RXCFG_ZLFDMA = common dso_local global i32 0, align 4
@AR5K_RX_FILTER = common dso_local global i32 0, align 4
@AR5K_PHY_ERR_FIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_hw_set_rx_filter(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AR5K_AR5212, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AR5K_RX_FILTER_RADARERR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @AR5K_PHY_ERR_FIL_RADAR, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @AR5K_RX_FILTER_PHYERR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* @AR5K_PHY_ERR_FIL_OFDM, align 4
  %27 = load i32, i32* @AR5K_PHY_ERR_FIL_CCK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %25, %20
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AR5K_AR5210, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @AR5K_RX_FILTER_RADARERR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* @AR5K_RX_FILTER_RADARERR, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @AR5K_RX_FILTER_PROM, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %38, %32
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %56 = load i32, i32* @AR5K_RXCFG, align 4
  %57 = load i32, i32* @AR5K_RXCFG_ZLFDMA, align 4
  %58 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %55, i32 %56, i32 %57)
  br label %64

59:                                               ; preds = %51
  %60 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %61 = load i32, i32* @AR5K_RXCFG, align 4
  %62 = load i32, i32* @AR5K_RXCFG_ZLFDMA, align 4
  %63 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 255
  %68 = load i32, i32* @AR5K_RX_FILTER, align 4
  %69 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %65, i32 %67, i32 %68)
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AR5K_AR5212, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %64
  %76 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @AR5K_PHY_ERR_FIL, align 4
  %79 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %64
  ret void
}

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
