; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__*, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@PHY_NOISE_SAMPLE_MON = common dso_local global i32 0, align 4
@PHY_PERICAL_DISABLE = common dso_local global i64 0, align 8
@PHY_PERICAL_MANUAL = common dso_local global i64 0, align 8
@PHY_PERICAL_WATCHDOG = common dso_local global i32 0, align 4
@LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_watchdog(%struct.brcms_phy_pub* %0) #0 {
  %2 = alloca %struct.brcms_phy_pub*, align 8
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %2, align 8
  %5 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %2, align 8
  %6 = bitcast %struct.brcms_phy_pub* %5 to %struct.brcms_phy*
  store %struct.brcms_phy* %6, %struct.brcms_phy** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 7
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %222

18:                                               ; preds = %1
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = call i64 @SCAN_RM_IN_PROGRESS(%struct.brcms_phy* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %24 = call i64 @PLT_INPROG_PHY(%struct.brcms_phy* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %28 = bitcast %struct.brcms_phy* %27 to %struct.brcms_phy_pub*
  %29 = load i32, i32* @PHY_NOISE_SAMPLE_MON, align 4
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @CHSPEC_CHANNEL(i32 %32)
  %34 = call i32 @wlc_phy_noise_sample_request(%struct.brcms_phy_pub* %28, i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %26, %22, %18
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %37 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 7
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %47 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %45, %48
  %50 = icmp sgt i32 %49, 5
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %53 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %52, i32 0, i32 9
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %40, %35
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %56 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 7
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %67 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 7
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %69, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %59, %54
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %78 = call i32 @SCAN_INPROG_PHY(%struct.brcms_phy* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %76
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %82 = call i64 @wlc_phy_cal_txpower_recalc_sw(%struct.brcms_phy* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %86 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %85, i32 0, i32 7
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %92 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %84, %80, %76
  br label %94

94:                                               ; preds = %93, %59
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %96 = call i64 @SCAN_RM_IN_PROGRESS(%struct.brcms_phy* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %100 = call i64 @PLT_INPROG_PHY(%struct.brcms_phy* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %104 = call i64 @ASSOC_INPROG_PHY(%struct.brcms_phy* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %98, %94
  br label %222

107:                                              ; preds = %102
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %109 = call i64 @ISNPHY(%struct.brcms_phy* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %156

111:                                              ; preds = %107
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %113 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %156, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %156, label %119

119:                                              ; preds = %116
  %120 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %121 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PHY_PERICAL_DISABLE, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %153

125:                                              ; preds = %119
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %127 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @PHY_PERICAL_MANUAL, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %153

131:                                              ; preds = %125
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %133 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %132, i32 0, i32 7
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %139 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  %142 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %143 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %142, i32 0, i32 7
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp sge i64 %141, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %131
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %150 = bitcast %struct.brcms_phy* %149 to %struct.brcms_phy_pub*
  %151 = load i32, i32* @PHY_PERICAL_WATCHDOG, align 4
  %152 = call i32 @wlc_phy_cal_perical(%struct.brcms_phy_pub* %150, i32 %151)
  br label %153

153:                                              ; preds = %148, %131, %125, %119
  %154 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %155 = call i32 @wlc_phy_txpwr_papd_cal_nphy(%struct.brcms_phy* %154)
  br label %156

156:                                              ; preds = %153, %116, %111, %107
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %158 = call i64 @ISLCNPHY(%struct.brcms_phy* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %222

160:                                              ; preds = %156
  %161 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %162 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %161, i32 0, i32 8
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %182, label %165

165:                                              ; preds = %160
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %167 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %166, i32 0, i32 7
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %173 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %171, %174
  %176 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %177 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %176, i32 0, i32 7
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp sge i64 %175, %180
  br i1 %181, label %182, label %221

182:                                              ; preds = %165, %160
  %183 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %184 = call i64 @SCAN_RM_IN_PROGRESS(%struct.brcms_phy* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %182
  %187 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %188 = call i64 @ASSOC_INPROG_PHY(%struct.brcms_phy* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %192 = load i32, i32* @LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL, align 4
  %193 = call i32 @wlc_lcnphy_calib_modes(%struct.brcms_phy* %191, i32 %192)
  br label %194

194:                                              ; preds = %190, %186, %182
  %195 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %196 = call i64 @SCAN_RM_IN_PROGRESS(%struct.brcms_phy* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %220, label %198

198:                                              ; preds = %194
  %199 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %200 = call i64 @PLT_INPROG_PHY(%struct.brcms_phy* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %220, label %202

202:                                              ; preds = %198
  %203 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %204 = call i64 @ASSOC_INPROG_PHY(%struct.brcms_phy* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %220, label %206

206:                                              ; preds = %202
  %207 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %208 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %220, label %211

211:                                              ; preds = %206
  %212 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %213 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %212, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %211
  %217 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %218 = load i32, i32* @PHY_PERICAL_WATCHDOG, align 4
  %219 = call i32 @wlc_lcnphy_calib_modes(%struct.brcms_phy* %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %211, %206, %202, %198, %194
  br label %221

221:                                              ; preds = %220, %165
  br label %222

222:                                              ; preds = %17, %106, %221, %156
  ret void
}

declare dso_local i64 @SCAN_RM_IN_PROGRESS(%struct.brcms_phy*) #1

declare dso_local i64 @PLT_INPROG_PHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_noise_sample_request(%struct.brcms_phy_pub*, i32, i32) #1

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @SCAN_INPROG_PHY(%struct.brcms_phy*) #1

declare dso_local i64 @wlc_phy_cal_txpower_recalc_sw(%struct.brcms_phy*) #1

declare dso_local i64 @ASSOC_INPROG_PHY(%struct.brcms_phy*) #1

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_cal_perical(%struct.brcms_phy_pub*, i32) #1

declare dso_local i32 @wlc_phy_txpwr_papd_cal_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_calib_modes(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
