; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_iq_cal_gain_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_iq_cal_gain_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nphy_txgains = type { i32*, i32*, i32*, i32* }
%struct.nphy_iqcal_params = type { i32, i32, i32, i32, i32, i32* }

@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@tbl_iqcal_gainparams = common dso_local global i64*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i64, %struct.nphy_txgains*, %struct.nphy_iqcal_params*)* @b43_nphy_iq_cal_gain_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_iq_cal_gain_params(%struct.b43_wldev* %0, i64 %1, %struct.nphy_txgains* byval(%struct.nphy_txgains) align 8 %2, %struct.nphy_iqcal_params* %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nphy_iqcal_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nphy_iqcal_params* %3, %struct.nphy_iqcal_params** %7, align 8
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 3
  br i1 %16, label %17, label %80

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %24 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %31 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %38 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %45 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %47 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 12
  %50 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %51 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %49, %53
  %55 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %56 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 4
  %59 = or i32 %54, %58
  %60 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %61 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %59, %62
  %64 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %65 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %76, %17
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 5
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %71 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 121, i32* %75, align 4
  br label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %66

79:                                               ; preds = %66
  br label %221

80:                                               ; preds = %4
  %81 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 4
  %92 = or i32 %85, %91
  %93 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 8
  %99 = or i32 %92, %98
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %11, align 8
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %102 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @b43_current_band(i32 %103)
  %105 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  store i32 %108, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %128, %80
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 9
  br i1 %111, label %112, label %131

112:                                              ; preds = %109
  %113 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64**, i64*** %113, i64 %115
  %117 = load i64**, i64*** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64*, i64** %117, i64 %119
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %11, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  br label %131

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %109

131:                                              ; preds = %126, %109
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @min(i32 %132, i32 8)
  store i32 %133, i32* %8, align 4
  %134 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64**, i64*** %134, i64 %136
  %138 = load i64**, i64*** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64*, i64** %138, i64 %140
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 1
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %147 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64**, i64*** %148, i64 %150
  %152 = load i64**, i64*** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64*, i64** %152, i64 %154
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 2
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %161 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64**, i64*** %162, i64 %164
  %166 = load i64**, i64*** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64*, i64** %166, i64 %168
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 3
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %175 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %177 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = shl i32 %178, 7
  %180 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %181 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 4
  %184 = or i32 %179, %183
  %185 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %186 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = shl i32 %187, 2
  %189 = or i32 %184, %188
  %190 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %191 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 8
  store i32 0, i32* %9, align 4
  br label %192

192:                                              ; preds = %217, %131
  %193 = load i32, i32* %9, align 4
  %194 = icmp slt i32 %193, 4
  br i1 %194, label %195, label %220

195:                                              ; preds = %192
  %196 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64**, i64*** %196, i64 %198
  %200 = load i64**, i64*** %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64*, i64** %200, i64 %202
  %204 = load i64*, i64** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 4, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %204, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %212 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  br label %217

217:                                              ; preds = %195
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  br label %192

220:                                              ; preds = %192
  br label %221

221:                                              ; preds = %220, %79
  ret void
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
