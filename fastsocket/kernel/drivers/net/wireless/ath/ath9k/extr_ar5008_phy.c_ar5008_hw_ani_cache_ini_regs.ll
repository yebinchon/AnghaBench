; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_ani_cache_ini_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_ani_cache_ini_regs.c"
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
@AR_PHY_FIND_SIG_FIRSTEP_LOW = common dso_local global i32 0, align 4
@AR_PHY_TIMING5 = common dso_local global i32 0, align 4
@AR_PHY_TIMING5_CYCPWR_THR1 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA = common dso_local global i32 0, align 4
@AR_PHY_EXT_TIMING5_CYCPWR_THR1 = common dso_local global i32 0, align 4
@ATH9K_ANI_SPUR_IMMUNE_LVL = common dso_local global i32 0, align 4
@ATH9K_ANI_FIRSTEP_LVL = common dso_local global i32 0, align 4
@ATH9K_ANI_USE_OFDM_WEAK_SIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar5008_hw_ani_cache_ini_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_hw_ani_cache_ini_regs(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.ar5416AniState*, align 8
  %6 = alloca %struct.ath9k_ani_default*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %3, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 2
  %12 = load %struct.ath9k_channel*, %struct.ath9k_channel** %11, align 8
  store %struct.ath9k_channel* %12, %struct.ath9k_channel** %4, align 8
  %13 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %14 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %13, i32 0, i32 2
  store %struct.ar5416AniState* %14, %struct.ar5416AniState** %5, align 8
  %15 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %16 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %15, i32 0, i32 4
  store %struct.ath9k_ani_default* %16, %struct.ath9k_ani_default** %6, align 8
  %17 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %18 = load i32, i32* @ANI, align 4
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %31 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %34 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ath_dbg(%struct.ath_common* %17, i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = load i32, i32* @AR_PHY_SFCORR, align 4
  %39 = call i32 @REG_READ(%struct.ath_hw* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @AR_PHY_SFCORR_M1_THRESH, align 4
  %42 = call i8* @MS(i32 %40, i32 %41)
  %43 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %44 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %43, i32 0, i32 13
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @AR_PHY_SFCORR_M2_THRESH, align 4
  %47 = call i8* @MS(i32 %45, i32 %46)
  %48 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %49 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %48, i32 0, i32 12
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @AR_PHY_SFCORR_M2COUNT_THR, align 4
  %52 = call i8* @MS(i32 %50, i32 %51)
  %53 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %54 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %53, i32 0, i32 11
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %56 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %57 = call i32 @REG_READ(%struct.ath_hw* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @AR_PHY_SFCORR_LOW_M1_THRESH_LOW, align 4
  %60 = call i8* @MS(i32 %58, i32 %59)
  %61 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %62 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %61, i32 0, i32 10
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @AR_PHY_SFCORR_LOW_M2_THRESH_LOW, align 4
  %65 = call i8* @MS(i32 %63, i32 %64)
  %66 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %67 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW, align 4
  %70 = call i8* @MS(i32 %68, i32 %69)
  %71 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %72 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %71, i32 0, i32 8
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %74 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %75 = call i32 @REG_READ(%struct.ath_hw* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH, align 4
  %78 = call i8* @MS(i32 %76, i32 %77)
  %79 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %80 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH, align 4
  %83 = call i8* @MS(i32 %81, i32 %82)
  %84 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %85 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH_LOW, align 4
  %88 = call i8* @MS(i32 %86, i32 %87)
  %89 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %90 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH_LOW, align 4
  %93 = call i8* @MS(i32 %91, i32 %92)
  %94 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %95 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %97 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %98 = load i32, i32* @AR_PHY_FIND_SIG_FIRSTEP, align 4
  %99 = call i8* @REG_READ_FIELD(%struct.ath_hw* %96, i32 %97, i32 %98)
  %100 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %101 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %103 = load i32, i32* @AR_PHY_FIND_SIG_LOW, align 4
  %104 = load i32, i32* @AR_PHY_FIND_SIG_FIRSTEP_LOW, align 4
  %105 = call i8* @REG_READ_FIELD(%struct.ath_hw* %102, i32 %103, i32 %104)
  %106 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %107 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %109 = load i32, i32* @AR_PHY_TIMING5, align 4
  %110 = load i32, i32* @AR_PHY_TIMING5_CYCPWR_THR1, align 4
  %111 = call i8* @REG_READ_FIELD(%struct.ath_hw* %108, i32 %109, i32 %110)
  %112 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %113 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %115 = load i32, i32* @AR_PHY_EXT_CCA, align 4
  %116 = load i32, i32* @AR_PHY_EXT_TIMING5_CYCPWR_THR1, align 4
  %117 = call i8* @REG_READ_FIELD(%struct.ath_hw* %114, i32 %115, i32 %116)
  %118 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %119 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 4
  %121 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %122 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @ATH9K_ANI_FIRSTEP_LVL, align 4
  %124 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %125 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @ATH9K_ANI_USE_OFDM_WEAK_SIG, align 4
  %127 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %128 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %130 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
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
