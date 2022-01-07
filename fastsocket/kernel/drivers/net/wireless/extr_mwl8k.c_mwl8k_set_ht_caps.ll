; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_set_ht_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_set_ht_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_supported_band = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@MWL8K_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@MWL8K_CAP_GREENFIELD = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_GRN_FLD = common dso_local global i32 0, align 4
@MWL8K_CAP_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_HW_AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_64K = common dso_local global i32 0, align 4
@IEEE80211_HT_MPDU_DENSITY_NONE = common dso_local global i32 0, align 4
@MWL8K_CAP_RX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@MWL8K_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@MWL8K_CAP_SHORTGI_40MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@MWL8K_CAP_SHORTGI_20MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@MWL8K_CAP_DELAY_BA = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DELAY_BA = common dso_local global i32 0, align 4
@MWL8K_CAP_40MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@MWL8K_CAP_RX_ANTENNA_MASK = common dso_local global i32 0, align 4
@MWL8K_CAP_TX_ANTENNA_MASK = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_RX_DIFF = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_supported_band*, i32)* @mwl8k_set_ht_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_set_ht_caps(%struct.ieee80211_hw* %0, %struct.ieee80211_supported_band* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MWL8K_CAP_MAX_AMSDU, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %18 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %16, %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MWL8K_CAP_GREENFIELD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32, i32* @IEEE80211_HT_CAP_GRN_FLD, align 4
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MWL8K_CAP_AMPDU, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i32, i32* @IEEE80211_HW_AMPDU_AGGREGATION, align 4
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_64K, align 4
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @IEEE80211_HT_MPDU_DENSITY_NONE, align 4
  %51 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %40, %35
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @MWL8K_CAP_RX_STBC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %54
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @MWL8K_CAP_TX_STBC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %73 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %71, %66
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @MWL8K_CAP_SHORTGI_40MHZ, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %85 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %86 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %83, %78
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @MWL8K_CAP_SHORTGI_20MHZ, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %97 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %95, %90
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @MWL8K_CAP_DELAY_BA, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i32, i32* @IEEE80211_HT_CAP_DELAY_BA, align 4
  %109 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %110 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %107, %102
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @MWL8K_CAP_40MHZ, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %121 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %122 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %120
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %119, %114
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @MWL8K_CAP_RX_ANTENNA_MASK, align 4
  %129 = and i32 %127, %128
  %130 = call i32 @hweight32(i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @MWL8K_CAP_TX_ANTENNA_MASK, align 4
  %133 = and i32 %131, %132
  %134 = call i32 @hweight32(i32 %133)
  store i32 %134, i32* %8, align 4
  %135 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %136 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 255, i32* %140, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp sge i32 %141, 2
  br i1 %142, label %143, label %150

143:                                              ; preds = %126
  %144 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %145 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 255, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %126
  %151 = load i32, i32* %7, align 4
  %152 = icmp sge i32 %151, 3
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %155 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  store i32 255, i32* %159, align 4
  br label %160

160:                                              ; preds = %153, %150
  %161 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %162 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 4
  store i32 1, i32* %166, align 4
  %167 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %168 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %169 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  store i32 %167, i32* %171, align 8
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %193

175:                                              ; preds = %160
  %176 = load i32, i32* @IEEE80211_HT_MCS_TX_RX_DIFF, align 4
  %177 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %178 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %176
  store i32 %182, i32* %180, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sub nsw i32 %183, 1
  %185 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT, align 4
  %186 = shl i32 %184, %185
  %187 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %188 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %186
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %175, %160
  ret void
}

declare dso_local i32 @hweight32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
