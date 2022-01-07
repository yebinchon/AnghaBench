; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_ani_cache_ini_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_ani_cache_ini_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__, %struct.ath9k_channel* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ath9k_channel = type { i32, i32, %struct.ar5416AniState }
%struct.ar5416AniState = type { i32, i32, i32, i32, %struct.ath9k_ani_default }
%struct.ath9k_ani_default = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ath_common = type { i32 }

@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ver %d.%d opmode %u chan %d Mhz/0x%x\0A\00", align 1
@AR_PHY_SFCORR = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M1_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M2_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M2COUNT_THR = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M1_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M2_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M1_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M2_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M1_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M2_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_FIRSTEP = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW = common dso_local global i32 0, align 4
@AR_PHY_TIMING5 = common dso_local global i32 0, align 4
@AR_PHY_TIMING5_CYCPWR_THR1 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA = common dso_local global i32 0, align 4
@AR_PHY_EXT_CYCPWR_THR1 = common dso_local global i32 0, align 4
@ATH9K_ANI_SPUR_IMMUNE_LVL = common dso_local global i32 0, align 4
@ATH9K_ANI_FIRSTEP_LVL = common dso_local global i32 0, align 4
@ATH9K_ANI_USE_OFDM_WEAK_SIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_ani_cache_ini_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_ani_cache_ini_regs(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ar5416AniState*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath9k_ani_default*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %4, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 2
  %12 = load %struct.ath9k_channel*, %struct.ath9k_channel** %11, align 8
  store %struct.ath9k_channel* %12, %struct.ath9k_channel** %5, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 2
  %15 = load %struct.ath9k_channel*, %struct.ath9k_channel** %14, align 8
  %16 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %15, i32 0, i32 2
  store %struct.ar5416AniState* %16, %struct.ar5416AniState** %3, align 8
  %17 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %18 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %17, i32 0, i32 4
  store %struct.ath9k_ani_default* %18, %struct.ath9k_ani_default** %6, align 8
  %19 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %20 = load i32, i32* @ANI, align 4
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %33 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %36 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ath_dbg(%struct.ath_common* %19, i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = load i32, i32* @AR_PHY_SFCORR, align 4
  %41 = call i32 @REG_READ(%struct.ath_hw* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @AR_PHY_SFCORR_M1_THRESH, align 4
  %44 = call i8* @MS(i32 %42, i32 %43)
  %45 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %46 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %45, i32 0, i32 13
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @AR_PHY_SFCORR_M2_THRESH, align 4
  %49 = call i8* @MS(i32 %47, i32 %48)
  %50 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %51 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %50, i32 0, i32 12
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @AR_PHY_SFCORR_M2COUNT_THR, align 4
  %54 = call i8* @MS(i32 %52, i32 %53)
  %55 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %56 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %55, i32 0, i32 11
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %58 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %59 = call i32 @REG_READ(%struct.ath_hw* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @AR_PHY_SFCORR_LOW_M1_THRESH_LOW, align 4
  %62 = call i8* @MS(i32 %60, i32 %61)
  %63 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %64 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %63, i32 0, i32 10
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @AR_PHY_SFCORR_LOW_M2_THRESH_LOW, align 4
  %67 = call i8* @MS(i32 %65, i32 %66)
  %68 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %69 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %68, i32 0, i32 9
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW, align 4
  %72 = call i8* @MS(i32 %70, i32 %71)
  %73 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %74 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %73, i32 0, i32 8
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %76 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %77 = call i32 @REG_READ(%struct.ath_hw* %75, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH, align 4
  %80 = call i8* @MS(i32 %78, i32 %79)
  %81 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %82 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH, align 4
  %85 = call i8* @MS(i32 %83, i32 %84)
  %86 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %87 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %86, i32 0, i32 6
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH_LOW, align 4
  %90 = call i8* @MS(i32 %88, i32 %89)
  %91 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %92 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH_LOW, align 4
  %95 = call i8* @MS(i32 %93, i32 %94)
  %96 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %97 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %99 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %100 = load i32, i32* @AR_PHY_FIND_SIG_FIRSTEP, align 4
  %101 = call i8* @REG_READ_FIELD(%struct.ath_hw* %98, i32 %99, i32 %100)
  %102 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %103 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %105 = load i32, i32* @AR_PHY_FIND_SIG_LOW, align 4
  %106 = load i32, i32* @AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW, align 4
  %107 = call i8* @REG_READ_FIELD(%struct.ath_hw* %104, i32 %105, i32 %106)
  %108 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %109 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %111 = load i32, i32* @AR_PHY_TIMING5, align 4
  %112 = load i32, i32* @AR_PHY_TIMING5_CYCPWR_THR1, align 4
  %113 = call i8* @REG_READ_FIELD(%struct.ath_hw* %110, i32 %111, i32 %112)
  %114 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %115 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %117 = load i32, i32* @AR_PHY_EXT_CCA, align 4
  %118 = load i32, i32* @AR_PHY_EXT_CYCPWR_THR1, align 4
  %119 = call i8* @REG_READ_FIELD(%struct.ath_hw* %116, i32 %117, i32 %118)
  %120 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %121 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 4
  %123 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %124 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @ATH9K_ANI_FIRSTEP_LVL, align 4
  %126 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %127 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* @ATH9K_ANI_USE_OFDM_WEAK_SIG, align 4
  %129 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %130 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %132 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i8* @MS(i32, i32) #1

declare dso_local i8* @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
