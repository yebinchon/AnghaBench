; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_setrxfilter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_setrxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@ATH9K_RX_FILTER_CONTROL_WRAPPER = common dso_local global i32 0, align 4
@AR_RX_FILTER = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PHYRADAR = common dso_local global i32 0, align 4
@AR_PHY_ERR_RADAR = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PHYERR = common dso_local global i32 0, align 4
@AR_PHY_ERR_OFDM_TIMING = common dso_local global i32 0, align 4
@AR_PHY_ERR_CCK_TIMING = common dso_local global i32 0, align 4
@AR_PHY_ERR = common dso_local global i32 0, align 4
@AR_RXCFG = common dso_local global i32 0, align 4
@AR_RXCFG_ZLFDMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_setrxfilter(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %6)
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = call i64 @AR_SREV_9462(%struct.ath_hw* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = call i64 @AR_SREV_9565(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @ATH9K_RX_FILTER_CONTROL_WRAPPER, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = load i32, i32* @AR_RX_FILTER, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @REG_WRITE(%struct.ath_hw* %20, i32 %21, i32 %22)
  store i32 0, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ATH9K_RX_FILTER_PHYRADAR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @AR_PHY_ERR_RADAR, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %19
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ATH9K_RX_FILTER_PHYERR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @AR_PHY_ERR_OFDM_TIMING, align 4
  %39 = load i32, i32* @AR_PHY_ERR_CCK_TIMING, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = load i32, i32* @AR_PHY_ERR, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @REG_WRITE(%struct.ath_hw* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = load i32, i32* @AR_RXCFG, align 4
  %53 = load i32, i32* @AR_RXCFG_ZLFDMA, align 4
  %54 = call i32 @REG_SET_BIT(%struct.ath_hw* %51, i32 %52, i32 %53)
  br label %60

55:                                               ; preds = %43
  %56 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %57 = load i32, i32* @AR_RXCFG, align 4
  %58 = load i32, i32* @AR_RXCFG_ZLFDMA, align 4
  %59 = call i32 @REG_CLR_BIT(%struct.ath_hw* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %61)
  ret void
}

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
