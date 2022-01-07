; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_ieee_hw_rate_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_ieee_hw_rate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64* }
%struct.ieee80211_hw = type { %struct.TYPE_10__*, %struct.brcms_info* }
%struct.TYPE_10__ = type { %struct.ieee80211_supported_band** }
%struct.brcms_info = type { %struct.TYPE_8__*, %struct.brcms_c_info* }
%struct.TYPE_8__ = type { i32 }
%struct.brcms_c_info = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.ieee80211_supported_band }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@PHY_TYPE_N = common dso_local global i64 0, align 8
@PHY_TYPE_LCN = common dso_local global i64 0, align 8
@BAND_2G_INDEX = common dso_local global i64 0, align 8
@brcms_band_2GHz_nphy_template = common dso_local global %struct.ieee80211_supported_band zeroinitializer, align 8
@EPERM = common dso_local global i32 0, align 4
@BAND_5G_INDEX = common dso_local global i64 0, align 8
@brcms_band_5GHz_nphy_template = common dso_local global %struct.ieee80211_supported_band zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @ieee_hw_rate_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_hw_rate_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.brcms_info*, align 8
  %5 = alloca %struct.brcms_c_info*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 1
  %11 = load %struct.brcms_info*, %struct.brcms_info** %10, align 8
  store %struct.brcms_info* %11, %struct.brcms_info** %4, align 8
  %12 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %13 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %12, i32 0, i32 1
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %13, align 8
  store %struct.brcms_c_info* %14, %struct.brcms_c_info** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %18, align 8
  %20 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %21 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, i64 %20
  store %struct.ieee80211_supported_band* null, %struct.ieee80211_supported_band** %21, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %25, align 8
  %27 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %28 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %26, i64 %27
  store %struct.ieee80211_supported_band* null, %struct.ieee80211_supported_band** %28, align 8
  %29 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %30 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %29, i32 0, i32 1
  %31 = load %struct.brcms_c_info*, %struct.brcms_c_info** %30, align 8
  %32 = call i64 @brcms_c_get_phy_type(%struct.brcms_c_info* %31, i32 0)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @PHY_TYPE_N, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %1
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @PHY_TYPE_LCN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %36, %1
  %41 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %42 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %42, align 8
  %44 = load i64, i64* @BAND_2G_INDEX, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %43, i64 %44
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store %struct.ieee80211_supported_band* %47, %struct.ieee80211_supported_band** %6, align 8
  %48 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %49 = bitcast %struct.ieee80211_supported_band* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 bitcast (%struct.ieee80211_supported_band* @brcms_band_2GHz_nphy_template to i8*), i64 16, i1 false)
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @PHY_TYPE_LCN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %40
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  store i64 0, i64* %59, align 8
  %60 = call i32 @cpu_to_le16(i32 72)
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  br label %65

65:                                               ; preds = %53, %40
  %66 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %70, align 8
  %72 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %73 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %71, i64 %72
  store %struct.ieee80211_supported_band* %66, %struct.ieee80211_supported_band** %73, align 8
  br label %77

74:                                               ; preds = %36
  %75 = load i32, i32* @EPERM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %117

77:                                               ; preds = %65
  %78 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %79 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %116

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @PHY_TYPE_N, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %84
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @PHY_TYPE_LCN, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %90, %84
  %95 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %96 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %96, align 8
  %98 = load i64, i64* @BAND_5G_INDEX, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %97, i64 %98
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store %struct.ieee80211_supported_band* %101, %struct.ieee80211_supported_band** %6, align 8
  %102 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %103 = bitcast %struct.ieee80211_supported_band* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 bitcast (%struct.ieee80211_supported_band* @brcms_band_5GHz_nphy_template to i8*), i64 16, i1 false)
  %104 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %106 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %108, align 8
  %110 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %111 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %109, i64 %110
  store %struct.ieee80211_supported_band* %104, %struct.ieee80211_supported_band** %111, align 8
  br label %115

112:                                              ; preds = %90
  %113 = load i32, i32* @EPERM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %117

115:                                              ; preds = %94
  br label %116

116:                                              ; preds = %115, %77
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %112, %74
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i64 @brcms_c_get_phy_type(%struct.brcms_c_info*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
