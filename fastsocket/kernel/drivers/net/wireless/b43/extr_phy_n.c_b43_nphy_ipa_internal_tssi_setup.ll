; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_ipa_internal_tssi_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_ipa_internal_tssi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B2056_SYN_RESERVED_ADDR31 = common dso_local global i32 0, align 4
@B2056_SYN_RESERVED_ADDR30 = common dso_local global i32 0, align 4
@B2056_SYN_GPIO_MASTER1 = common dso_local global i32 0, align 4
@B2056_TX1 = common dso_local global i32 0, align 4
@B2056_TX0 = common dso_local global i32 0, align 4
@B2056_TX_IQCAL_VCM_HG = common dso_local global i32 0, align 4
@B2056_TX_IQCAL_IDAC = common dso_local global i32 0, align 4
@B2056_TX_TSSI_VCM = common dso_local global i32 0, align 4
@B2056_TX_TX_AMP_DET = common dso_local global i32 0, align 4
@B2056_TX_TSSI_MISC1 = common dso_local global i32 0, align 4
@B2056_TX_TSSI_MISC2 = common dso_local global i32 0, align 4
@B2056_TX_TSSI_MISC3 = common dso_local global i32 0, align 4
@B2056_TX_TX_SSI_MASTER = common dso_local global i32 0, align 4
@B2056_TX_TSSIA = common dso_local global i32 0, align 4
@B2056_TX_TSSIG = common dso_local global i32 0, align 4
@B2056_TX_TX_SSI_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_ipa_internal_tssi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_ipa_internal_tssi_setup(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 1
  store %struct.b43_phy* %7, %struct.b43_phy** %3, align 8
  %8 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %9 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 7
  br i1 %11, label %12, label %110

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %106, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %109

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 400, i32 368
  store i32 %20, i32* %5, align 4
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @b43_current_band(i32 %23)
  %25 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %16
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 5
  %31 = call i32 @b43_radio_write(%struct.b43_wldev* %28, i32 %30, i32 5)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 9
  %35 = call i32 @b43_radio_write(%struct.b43_wldev* %32, i32 %34, i32 14)
  %36 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %37 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 5
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 10
  %44 = call i32 @b43_radio_write(%struct.b43_wldev* %41, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %40, %27
  %46 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %47 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 7
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 11
  %54 = call i32 @b43_radio_write(%struct.b43_wldev* %51, i32 %53, i32 1)
  br label %60

55:                                               ; preds = %45
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 11
  %59 = call i32 @b43_radio_write(%struct.b43_wldev* %56, i32 %58, i32 49)
  br label %60

60:                                               ; preds = %55, %50
  br label %89

61:                                               ; preds = %16
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 5
  %65 = call i32 @b43_radio_write(%struct.b43_wldev* %62, i32 %64, i32 9)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 9
  %69 = call i32 @b43_radio_write(%struct.b43_wldev* %66, i32 %68, i32 12)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 11
  %73 = call i32 @b43_radio_write(%struct.b43_wldev* %70, i32 %72, i32 0)
  %74 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %75 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 5
  br i1 %77, label %78, label %83

78:                                               ; preds = %61
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 10
  %82 = call i32 @b43_radio_write(%struct.b43_wldev* %79, i32 %81, i32 1)
  br label %88

83:                                               ; preds = %61
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 10
  %87 = call i32 @b43_radio_write(%struct.b43_wldev* %84, i32 %86, i32 49)
  br label %88

88:                                               ; preds = %83, %78
  br label %89

89:                                               ; preds = %88, %60
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 6
  %93 = call i32 @b43_radio_write(%struct.b43_wldev* %90, i32 %92, i32 0)
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 7
  %97 = call i32 @b43_radio_write(%struct.b43_wldev* %94, i32 %96, i32 0)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 8
  %101 = call i32 @b43_radio_write(%struct.b43_wldev* %98, i32 %100, i32 3)
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 12
  %105 = call i32 @b43_radio_write(%struct.b43_wldev* %102, i32 %104, i32 0)
  br label %106

106:                                              ; preds = %89
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %13

109:                                              ; preds = %13
  br label %250

110:                                              ; preds = %1
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %112 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @b43_current_band(i32 %113)
  %115 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %119 = load i32, i32* @B2056_SYN_RESERVED_ADDR31, align 4
  %120 = call i32 @b43_radio_write(%struct.b43_wldev* %118, i32 %119, i32 296)
  br label %125

121:                                              ; preds = %110
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %123 = load i32, i32* @B2056_SYN_RESERVED_ADDR31, align 4
  %124 = call i32 @b43_radio_write(%struct.b43_wldev* %122, i32 %123, i32 128)
  br label %125

125:                                              ; preds = %121, %117
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = load i32, i32* @B2056_SYN_RESERVED_ADDR30, align 4
  %128 = call i32 @b43_radio_write(%struct.b43_wldev* %126, i32 %127, i32 0)
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %130 = load i32, i32* @B2056_SYN_GPIO_MASTER1, align 4
  %131 = call i32 @b43_radio_write(%struct.b43_wldev* %129, i32 %130, i32 41)
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %246, %125
  %133 = load i32, i32* %4, align 4
  %134 = icmp slt i32 %133, 2
  br i1 %134, label %135, label %249

135:                                              ; preds = %132
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* @B2056_TX1, align 4
  br label %142

140:                                              ; preds = %135
  %141 = load i32, i32* @B2056_TX0, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  store i32 %143, i32* %5, align 4
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @B2056_TX_IQCAL_VCM_HG, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @b43_radio_write(%struct.b43_wldev* %144, i32 %147, i32 0)
  %149 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @B2056_TX_IQCAL_IDAC, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @b43_radio_write(%struct.b43_wldev* %149, i32 %152, i32 0)
  %154 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @B2056_TX_TSSI_VCM, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @b43_radio_write(%struct.b43_wldev* %154, i32 %157, i32 3)
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @B2056_TX_TX_AMP_DET, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @b43_radio_write(%struct.b43_wldev* %159, i32 %162, i32 0)
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @B2056_TX_TSSI_MISC1, align 4
  %167 = or i32 %165, %166
  %168 = call i32 @b43_radio_write(%struct.b43_wldev* %164, i32 %167, i32 8)
  %169 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @B2056_TX_TSSI_MISC2, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @b43_radio_write(%struct.b43_wldev* %169, i32 %172, i32 0)
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @B2056_TX_TSSI_MISC3, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @b43_radio_write(%struct.b43_wldev* %174, i32 %177, i32 0)
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %180 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @b43_current_band(i32 %181)
  %183 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %224

185:                                              ; preds = %142
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @B2056_TX_TX_SSI_MASTER, align 4
  %189 = or i32 %187, %188
  %190 = call i32 @b43_radio_write(%struct.b43_wldev* %186, i32 %189, i32 5)
  %191 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %192 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 5
  br i1 %194, label %195, label %201

195:                                              ; preds = %185
  %196 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* @B2056_TX_TSSIA, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @b43_radio_write(%struct.b43_wldev* %196, i32 %199, i32 0)
  br label %201

201:                                              ; preds = %195, %185
  %202 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %203 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp sge i32 %204, 5
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @B2056_TX_TSSIG, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @b43_radio_write(%struct.b43_wldev* %207, i32 %210, i32 49)
  br label %218

212:                                              ; preds = %201
  %213 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @B2056_TX_TSSIG, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @b43_radio_write(%struct.b43_wldev* %213, i32 %216, i32 17)
  br label %218

218:                                              ; preds = %212, %206
  %219 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %222 = or i32 %220, %221
  %223 = call i32 @b43_radio_write(%struct.b43_wldev* %219, i32 %222, i32 14)
  br label %245

224:                                              ; preds = %142
  %225 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @B2056_TX_TX_SSI_MASTER, align 4
  %228 = or i32 %226, %227
  %229 = call i32 @b43_radio_write(%struct.b43_wldev* %225, i32 %228, i32 9)
  %230 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* @B2056_TX_TSSIA, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @b43_radio_write(%struct.b43_wldev* %230, i32 %233, i32 49)
  %235 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* @B2056_TX_TSSIG, align 4
  %238 = or i32 %236, %237
  %239 = call i32 @b43_radio_write(%struct.b43_wldev* %235, i32 %238, i32 0)
  %240 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @b43_radio_write(%struct.b43_wldev* %240, i32 %243, i32 12)
  br label %245

245:                                              ; preds = %224, %218
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %4, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %4, align 4
  br label %132

249:                                              ; preds = %132
  br label %250

250:                                              ; preds = %249, %109
  ret void
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
