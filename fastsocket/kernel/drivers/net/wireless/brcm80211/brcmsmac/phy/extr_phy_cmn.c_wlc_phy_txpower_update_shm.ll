; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_update_shm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_update_shm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@M_TXPWR_MAX = common dso_local global i32 0, align 4
@M_TXPWR_N = common dso_local global i32 0, align 4
@NUM_TSSI_FRAMES = common dso_local global i32 0, align 4
@M_TXPWR_TARGET = common dso_local global i32 0, align 4
@M_TXPWR_CUR = common dso_local global i32 0, align 4
@TXP_FIRST_OFDM = common dso_local global i32 0, align 4
@TXP_LAST_OFDM = common dso_local global i32 0, align 4
@__const.wlc_phy_txpower_update_shm.ucode_ofdm_rates = private unnamed_addr constant [8 x i32] [i32 12, i32 18, i32 24, i32 36, i32 48, i32 72, i32 96, i32 108], align 16
@MHF2 = common dso_local global i32 0, align 4
@MHF2_HWPWRCTL = common dso_local global i32 0, align 4
@BRCM_BAND_ALL = common dso_local global i32 0, align 4
@M_OFDM_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpower_update_shm(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %8 = call i64 @ISNPHY(%struct.brcms_phy* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %170

11:                                               ; preds = %1
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %170

19:                                               ; preds = %11
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %128

24:                                               ; preds = %19
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @M_TXPWR_MAX, align 4
  %31 = call i32 @wlapi_bmac_write_shm(i32 %29, i32 %30, i32 63)
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %33 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @M_TXPWR_N, align 4
  %38 = load i32, i32* @NUM_TSSI_FRAMES, align 4
  %39 = shl i32 1, %38
  %40 = call i32 @wlapi_bmac_write_shm(i32 %36, i32 %37, i32 %39)
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @M_TXPWR_TARGET, align 4
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @NUM_TSSI_FRAMES, align 4
  %51 = shl i32 %49, %50
  %52 = call i32 @wlapi_bmac_write_shm(i32 %45, i32 %46, i32 %51)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @M_TXPWR_CUR, align 4
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %60 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @wlapi_bmac_write_shm(i32 %57, i32 %58, i32 %61)
  %63 = load i32, i32* @TXP_FIRST_OFDM, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %114, %24
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @TXP_LAST_OFDM, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %117

68:                                               ; preds = %64
  %69 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %69, i8* align 16 bitcast ([8 x i32]* @__const.wlc_phy_txpower_update_shm.ucode_ofdm_rates to i8*), i64 32, i1 false)
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @TXP_FIRST_OFDM, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @wlapi_bmac_rate_shm_offset(i32 %74, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %83 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 6
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %90 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @wlapi_bmac_write_shm(i32 %86, i32 %88, i32 %95)
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %98 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 14
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %105 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sdiv i32 %110, 2
  %112 = sub nsw i32 0, %111
  %113 = call i32 @wlapi_bmac_write_shm(i32 %101, i32 %103, i32 %112)
  br label %114

114:                                              ; preds = %68
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  br label %64

117:                                              ; preds = %64
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %119 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %118, i32 0, i32 3
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MHF2, align 4
  %124 = load i32, i32* @MHF2_HWPWRCTL, align 4
  %125 = load i32, i32* @MHF2_HWPWRCTL, align 4
  %126 = load i32, i32* @BRCM_BAND_ALL, align 4
  %127 = call i32 @wlapi_bmac_mhf(i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  br label %170

128:                                              ; preds = %19
  %129 = load i32, i32* @TXP_FIRST_OFDM, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %150, %128
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @TXP_LAST_OFDM, align 4
  %133 = icmp sle i32 %131, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %130
  %135 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %136 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @roundup(i32 %141, i32 8)
  %143 = trunc i64 %142 to i32
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %145 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %143, i32* %149, align 4
  br label %150

150:                                              ; preds = %134
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %130

153:                                              ; preds = %130
  %154 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %155 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %154, i32 0, i32 3
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @M_OFDM_OFFSET, align 4
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %161 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* @TXP_FIRST_OFDM, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 7
  %168 = ashr i32 %167, 3
  %169 = call i32 @wlapi_bmac_write_shm(i32 %158, i32 %159, i32 %168)
  br label %170

170:                                              ; preds = %10, %18, %153, %117
  ret void
}

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlapi_bmac_write_shm(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wlapi_bmac_rate_shm_offset(i32, i32) #1

declare dso_local i32 @wlapi_bmac_mhf(i32, i32, i32, i32, i32) #1

declare dso_local i64 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
