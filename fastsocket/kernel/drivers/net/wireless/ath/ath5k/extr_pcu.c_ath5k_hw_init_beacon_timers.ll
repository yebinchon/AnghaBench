; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_init_beacon_timers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_init_beacon_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i64 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_STA_ID1 = common dso_local global i32 0, align 4
@AR5K_STA_ID1_PCF = common dso_local global i32 0, align 4
@AR5K_TXCFG = common dso_local global i32 0, align 4
@AR5K_TXCFG_ADHOC_BCN_ATIM = common dso_local global i32 0, align 4
@AR5K_TUNE_DMA_BEACON_RESP = common dso_local global i32 0, align 4
@AR5K_TUNE_SW_BEACON_RESP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@AR5K_TIMER0 = common dso_local global i32 0, align 4
@AR5K_TIMER1 = common dso_local global i32 0, align 4
@AR5K_TIMER2 = common dso_local global i32 0, align 4
@AR5K_TIMER3 = common dso_local global i32 0, align 4
@AR5K_BEACON_RESET_TSF = common dso_local global i32 0, align 4
@AR5K_BEACON_PERIOD = common dso_local global i32 0, align 4
@AR5K_BEACON_ENABLE = common dso_local global i32 0, align 4
@AR5K_BEACON = common dso_local global i32 0, align 4
@AR5K_ISR_BMISS = common dso_local global i32 0, align 4
@AR5K_ISR = common dso_local global i32 0, align 4
@AR5K_PISR = common dso_local global i32 0, align 4
@AR5K_STA_ID1_PWR_SV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_hw_init_beacon_timers(%struct.ath5k_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %31 [
    i32 129, label %13
    i32 128, label %13
    i32 130, label %26
  ]

13:                                               ; preds = %3, %3
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AR5K_AR5210, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %21

20:                                               ; preds = %13
  store i32 65535, i32* %7, align 4
  store i32 524287, i32* %8, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %23 = load i32, i32* @AR5K_STA_ID1, align 4
  %24 = load i32, i32* @AR5K_STA_ID1_PCF, align 4
  %25 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %22, i32 %23, i32 %24)
  br label %40

26:                                               ; preds = %3
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %28 = load i32, i32* @AR5K_TXCFG, align 4
  %29 = load i32, i32* @AR5K_TXCFG_ADHOC_BCN_ATIM, align 4
  %30 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %3, %26
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @AR5K_TUNE_DMA_BEACON_RESP, align 4
  %34 = sub nsw i32 %32, %33
  %35 = shl i32 %34, 3
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @AR5K_TUNE_SW_BEACON_RESP, align 4
  %38 = sub nsw i32 %36, %37
  %39 = shl i32 %38, 3
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %31, %21
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %44 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %40
  %49 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %50 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48, %40
  %55 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %56 = load i32, i32* @AR5K_TIMER0, align 4
  %57 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %55, i32 0, i32 %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @AR5K_TIMER0, align 4
  %62 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %59, i32 %60, i32 %61)
  %63 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @AR5K_TIMER1, align 4
  %66 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %63, i32 %64, i32 %65)
  %67 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @AR5K_TIMER2, align 4
  %70 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %67, i32 %68, i32 %69)
  %71 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @AR5K_TIMER3, align 4
  %74 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @AR5K_BEACON_RESET_TSF, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %58
  %80 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %81 = call i32 @ath5k_hw_reset_tsf(%struct.ath5k_hw* %80)
  br label %82

82:                                               ; preds = %79, %58
  %83 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @AR5K_BEACON_PERIOD, align 4
  %86 = load i32, i32* @AR5K_BEACON_ENABLE, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = load i32, i32* @AR5K_BEACON, align 4
  %90 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %83, i32 %88, i32 %89)
  %91 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %92 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AR5K_AR5210, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %82
  %97 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %98 = load i32, i32* @AR5K_ISR_BMISS, align 4
  %99 = load i32, i32* @AR5K_ISR, align 4
  %100 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %97, i32 %98, i32 %99)
  br label %106

101:                                              ; preds = %82
  %102 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %103 = load i32, i32* @AR5K_ISR_BMISS, align 4
  %104 = load i32, i32* @AR5K_PISR, align 4
  %105 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %108 = load i32, i32* @AR5K_STA_ID1, align 4
  %109 = load i32, i32* @AR5K_STA_ID1_PWR_SV, align 4
  %110 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %107, i32 %108, i32 %109)
  ret void
}

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_reset_tsf(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
