; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_set_ifs_intervals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_set_ifs_intervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, %struct.TYPE_2__*, %struct.ieee80211_channel* }
%struct.TYPE_2__ = type { %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_channel = type { i64 }

@AR5K_SLOT_TIME_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_SLOT_TIME = common dso_local global i32 0, align 4
@AR5K_IFS1_EIFS = common dso_local global i32 0, align 4
@AR5K_IFS1_PIFS = common dso_local global i32 0, align 4
@AR5K_IFS0_DIFS_S = common dso_local global i32 0, align 4
@AR5K_IFS0 = common dso_local global i32 0, align 4
@AR5K_INIT_CARR_SENSE_EN = common dso_local global i32 0, align 4
@AR5K_IFS1_CS_EN_S = common dso_local global i32 0, align 4
@AR5K_IFS1 = common dso_local global i32 0, align 4
@AR5K_DCU_GBL_IFS_SLOT = common dso_local global i32 0, align 4
@AR5K_DCU_GBL_IFS_EIFS = common dso_local global i32 0, align 4
@AR5K_DCU_GBL_IFS_MISC = common dso_local global i32 0, align 4
@AR5K_DCU_GBL_IFS_MISC_SIFS_DUR_USEC = common dso_local global i32 0, align 4
@AR5K_DCU_GBL_IFS_SIFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_set_ifs_intervals(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_rate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %19, i32 0, i32 2
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %20, align 8
  store %struct.ieee80211_channel* %21, %struct.ieee80211_channel** %6, align 8
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ath5k_hw_htoclock(%struct.ath5k_hw* %22, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %25, 6
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @AR5K_SLOT_TIME_MAX, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %139

34:                                               ; preds = %27
  %35 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %36 = call i32 @ath5k_hw_get_default_sifs(%struct.ath5k_hw* %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sub nsw i32 %38, 2
  %40 = call i32 @ath5k_hw_htoclock(%struct.ath5k_hw* %37, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  br label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %53 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %58, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %59, i64 0
  store %struct.ieee80211_rate* %60, %struct.ieee80211_rate** %8, align 8
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %64 = call i32 @ath5k_hw_get_frame_duration(%struct.ath5k_hw* %61, i32 %62, i32 10, %struct.ieee80211_rate* %63, i32 0)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %5, align 4
  %69 = mul i32 2, %68
  %70 = add i32 %67, %69
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ath5k_hw_htoclock(%struct.ath5k_hw* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %75 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AR5K_AR5210, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %121

79:                                               ; preds = %51
  %80 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @AR5K_SLOT_TIME, align 4
  %83 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %80, i32 %81, i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @AR5K_IFS1_EIFS, align 4
  %86 = call i32 @AR5K_REG_SM(i32 %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %12, align 4
  %89 = add i32 %87, %88
  store i32 %89, i32* %15, align 4
  %90 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @ath5k_hw_htoclock(%struct.ath5k_hw* %90, i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @AR5K_IFS1_PIFS, align 4
  %95 = call i32 @AR5K_REG_SM(i32 %93, i32 %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %5, align 4
  %98 = mul i32 2, %97
  %99 = add i32 %96, %98
  store i32 %99, i32* %17, align 4
  %100 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @ath5k_hw_htoclock(%struct.ath5k_hw* %100, i32 %101)
  store i32 %102, i32* %18, align 4
  %103 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* @AR5K_IFS0_DIFS_S, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* %13, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @AR5K_IFS0, align 4
  %110 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %103, i32 %108, i32 %109)
  %111 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %11, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @AR5K_INIT_CARR_SENSE_EN, align 4
  %116 = load i32, i32* @AR5K_IFS1_CS_EN_S, align 4
  %117 = shl i32 %115, %116
  %118 = or i32 %114, %117
  %119 = load i32, i32* @AR5K_IFS1, align 4
  %120 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %111, i32 %118, i32 %119)
  store i32 0, i32* %3, align 4
  br label %139

121:                                              ; preds = %51
  %122 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @AR5K_DCU_GBL_IFS_SLOT, align 4
  %125 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %122, i32 %123, i32 %124)
  %126 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @AR5K_DCU_GBL_IFS_EIFS, align 4
  %129 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %126, i32 %127, i32 %128)
  %130 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %131 = load i32, i32* @AR5K_DCU_GBL_IFS_MISC, align 4
  %132 = load i32, i32* @AR5K_DCU_GBL_IFS_MISC_SIFS_DUR_USEC, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %130, i32 %131, i32 %132, i32 %133)
  %135 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @AR5K_DCU_GBL_IFS_SIFS, align 4
  %138 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %135, i32 %136, i32 %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %121, %79, %31
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @ath5k_hw_htoclock(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_get_default_sifs(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_get_frame_duration(%struct.ath5k_hw*, i32, i32, %struct.ieee80211_rate*, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_SM(i32, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
