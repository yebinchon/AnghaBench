; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_rev3_rssi_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_rev3_rssi_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B1S0 = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B32S1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_UP1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_UP2 = common dso_local global i32 0, align 4
@N_RSSI_W1 = common dso_local global i32 0, align 4
@N_RSSI_W2 = common dso_local global i32 0, align 4
@N_RSSI_NB = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@N_RSSI_TBD = common dso_local global i32 0, align 4
@N_RSSI_IQ = common dso_local global i32 0, align 4
@B2055_PADDRV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32)* @b43_nphy_rev3_rssi_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_rev3_rssi_select(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %15 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %16 = call i32 @b43_phy_mask(%struct.b43_wldev* %14, i32 %15, i32 65023)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %18 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %19 = call i32 @b43_phy_mask(%struct.b43_wldev* %17, i32 %18, i32 65023)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %21 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %22 = call i32 @b43_phy_mask(%struct.b43_wldev* %20, i32 %21, i32 64767)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %24 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %25 = call i32 @b43_phy_mask(%struct.b43_wldev* %23, i32 %24, i32 64767)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %27 = load i32, i32* @B43_NPHY_TXF_40CO_B1S0, align 4
  %28 = call i32 @b43_phy_mask(%struct.b43_wldev* %26, i32 %27, i32 65503)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %30 = load i32, i32* @B43_NPHY_TXF_40CO_B32S1, align 4
  %31 = call i32 @b43_phy_mask(%struct.b43_wldev* %29, i32 %30, i32 65503)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %33 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  %34 = call i32 @b43_phy_mask(%struct.b43_wldev* %32, i32 %33, i32 65475)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %36 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  %37 = call i32 @b43_phy_mask(%struct.b43_wldev* %35, i32 %36, i32 65475)
  br label %219

38:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %215, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %218

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %54, label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51, %45
  br label %215

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %8, align 4
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @b43_phy_maskset(%struct.b43_wldev* %64, i32 %65, i32 65023, i32 512)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @N_RSSI_W1, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @N_RSSI_W2, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @N_RSSI_NB, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %136

78:                                               ; preds = %74, %70, %62
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %8, align 4
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @b43_phy_maskset(%struct.b43_wldev* %87, i32 %88, i32 64767, i32 0)
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* %8, align 4
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @b43_phy_maskset(%struct.b43_wldev* %98, i32 %99, i32 65475, i32 0)
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @N_RSSI_W1, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %106 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @b43_current_band(i32 %107)
  %109 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 4, i32 8
  store i32 %112, i32* %9, align 4
  br label %120

113:                                              ; preds = %96
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @N_RSSI_W2, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 16, i32* %9, align 4
  br label %119

118:                                              ; preds = %113
  store i32 32, i32* %9, align 4
  br label %119

119:                                              ; preds = %118, %117
  br label %120

120:                                              ; preds = %119, %104
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @b43_phy_set(%struct.b43_wldev* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @B43_NPHY_TXF_40CO_B1S0, align 4
  br label %131

129:                                              ; preds = %120
  %130 = load i32, i32* @B43_NPHY_TXF_40CO_B32S1, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  store i32 %132, i32* %8, align 4
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @b43_phy_set(%struct.b43_wldev* %133, i32 %134, i32 32)
  br label %214

136:                                              ; preds = %74
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @N_RSSI_TBD, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 256, i32* %9, align 4
  br label %148

141:                                              ; preds = %136
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @N_RSSI_IQ, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 512, i32* %9, align 4
  br label %147

146:                                              ; preds = %141
  store i32 768, i32* %9, align 4
  br label %147

147:                                              ; preds = %146, %145
  br label %148

148:                                              ; preds = %147, %140
  %149 = load i32, i32* %7, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  br label %155

153:                                              ; preds = %148
  %154 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  store i32 %156, i32* %8, align 4
  %157 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @b43_phy_maskset(%struct.b43_wldev* %157, i32 %158, i32 64767, i32 %159)
  %161 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %9, align 4
  %164 = shl i32 %163, 2
  %165 = call i32 @b43_phy_maskset(%struct.b43_wldev* %161, i32 %162, i32 62463, i32 %164)
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @N_RSSI_IQ, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %213

169:                                              ; preds = %155
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @N_RSSI_TBD, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %213

173:                                              ; preds = %169
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %175 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @b43_current_band(i32 %176)
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %10, align 4
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %180 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %173
  %183 = load i32, i32* %10, align 4
  %184 = zext i32 %183 to i64
  %185 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %186 = icmp eq i64 %184, %185
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 12, i32 14
  store i32 %188, i32* %9, align 4
  br label %190

189:                                              ; preds = %173
  store i32 17, i32* %9, align 4
  br label %190

190:                                              ; preds = %189, %182
  %191 = load i32, i32* %7, align 4
  %192 = icmp eq i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 8192, i32 12288
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* @B2055_PADDRV, align 4
  %196 = load i32, i32* %8, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %8, align 4
  %198 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @b43_radio_write(%struct.b43_wldev* %198, i32 %199, i32 %200)
  %202 = load i32, i32* %7, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %190
  %205 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  br label %208

206:                                              ; preds = %190
  %207 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  store i32 %209, i32* %8, align 4
  %210 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @b43_phy_set(%struct.b43_wldev* %210, i32 %211, i32 512)
  br label %213

213:                                              ; preds = %208, %169, %155
  br label %214

214:                                              ; preds = %213, %131
  br label %215

215:                                              ; preds = %214, %54
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %7, align 4
  br label %39

218:                                              ; preds = %39
  br label %219

219:                                              ; preds = %218, %13
  ret void
}

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
