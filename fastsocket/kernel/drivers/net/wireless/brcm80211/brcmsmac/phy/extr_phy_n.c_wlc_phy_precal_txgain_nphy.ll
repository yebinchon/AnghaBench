; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_precal_txgain_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_precal_txgain_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_precal_txgain_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_precal_txgain_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 10, i32* %5, align 4
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %7 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %166

10:                                               ; preds = %1
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @NREV_GE(i32 %14, i32 7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %10
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %25 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %35, label %49

35:                                               ; preds = %29, %23, %17
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %46, i32 3, i32 %47, i32 0)
  br label %63

49:                                               ; preds = %29
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %52 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %57 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %55, i32* %59, align 4
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %60, i32 3, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %49, %35
  store i32 1, i32* %3, align 4
  br label %165

64:                                               ; preds = %10
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @NREV_LT(i32 %68, i32 5)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %64
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %73 = call i32 @wlc_phy_cal_txgainctrl_nphy(%struct.brcms_phy* %72, i32 11, i32 0)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %75 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %74, i32 0, i32 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 3
  br i1 %79, label %80, label %97

80:                                               ; preds = %71
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %82 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %87 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 %85, i32* %89, align 4
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %92 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %90, i32 3, i32 %95, i32 1)
  store i32 1, i32* %3, align 4
  br label %97

97:                                               ; preds = %80, %71
  br label %164

98:                                               ; preds = %64
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %100 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @NREV_IS(i32 %102, i32 5)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %98
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %107 = call i64 @PHY_IPA(%struct.brcms_phy* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  %110 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %111 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @CHSPEC_IS2G(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %117 = call i32 @wlc_phy_cal_txgainctrl_nphy(%struct.brcms_phy* %116, i32 12, i32 0)
  br label %129

118:                                              ; preds = %109
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %120 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 80, i32* %122, align 4
  %123 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %124 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 80, i32* %126, align 4
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %128 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %127, i32 3, i32 80, i32 0)
  store i32 1, i32* %3, align 4
  br label %129

129:                                              ; preds = %118, %115
  br label %133

130:                                              ; preds = %105
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %132 = call i32 @wlc_phy_internal_cal_txgain_nphy(%struct.brcms_phy* %131)
  store i32 1, i32* %3, align 4
  br label %133

133:                                              ; preds = %130, %129
  br label %163

134:                                              ; preds = %98
  %135 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %136 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @NREV_IS(i32 %138, i32 6)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %134
  %142 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %143 = call i64 @PHY_IPA(%struct.brcms_phy* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %141
  %146 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %147 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @CHSPEC_IS2G(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %153 = call i32 @wlc_phy_cal_txgainctrl_nphy(%struct.brcms_phy* %152, i32 12, i32 0)
  br label %157

154:                                              ; preds = %145
  %155 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %156 = call i32 @wlc_phy_cal_txgainctrl_nphy(%struct.brcms_phy* %155, i32 14, i32 0)
  br label %157

157:                                              ; preds = %154, %151
  br label %161

158:                                              ; preds = %141
  %159 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %160 = call i32 @wlc_phy_internal_cal_txgain_nphy(%struct.brcms_phy* %159)
  store i32 1, i32* %3, align 4
  br label %161

161:                                              ; preds = %158, %157
  br label %162

162:                                              ; preds = %161, %134
  br label %163

163:                                              ; preds = %162, %133
  br label %164

164:                                              ; preds = %163, %97
  br label %165

165:                                              ; preds = %164, %63
  br label %169

166:                                              ; preds = %1
  %167 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %168 = call i32 @wlc_phy_cal_txgainctrl_nphy(%struct.brcms_phy* %167, i32 10, i32 0)
  br label %169

169:                                              ; preds = %166, %165
  %170 = load i32, i32* %3, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %174 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %175 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %174, i32 0, i32 1
  %176 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %173, i32 15, i32 1, i32 87, i32 16, i32* %175)
  br label %177

177:                                              ; preds = %172, %169
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @wlc_phy_cal_txgainctrl_nphy(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_phy_internal_cal_txgain_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
