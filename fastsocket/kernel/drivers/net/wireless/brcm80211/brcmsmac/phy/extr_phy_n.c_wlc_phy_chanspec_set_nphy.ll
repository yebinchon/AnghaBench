; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_chanspec_set_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_chanspec_set_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.chan_info_nphy_radio2057 = type { i32 }
%struct.chan_info_nphy_radio205x = type { i32 }
%struct.chan_info_nphy_radio2057_rev5 = type { i32 }
%struct.chan_info_nphy_2055 = type { i32 }
%struct.brcms_phy_pub = type { i32 }
%struct.nphy_sfo_cfg = type { i32 }

@BPHY_BAND_SEL_UP20 = common dso_local global i32 0, align 4
@PRIM_SEL_UP20 = common dso_local global i32 0, align 4
@RADIO_2057_TIA_CONFIG_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_TIA_CONFIG_CORE1 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_COM_CTRL = common dso_local global i32 0, align 4
@RADIO_2056_SYN = common dso_local global i32 0, align 4
@RADIO_2055_MASTER_CNTRL1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_chanspec_set_nphy(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.chan_info_nphy_radio2057*, align 8
  %7 = alloca %struct.chan_info_nphy_radio205x*, align 8
  %8 = alloca %struct.chan_info_nphy_radio2057_rev5*, align 8
  %9 = alloca %struct.chan_info_nphy_2055*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.chan_info_nphy_radio2057* null, %struct.chan_info_nphy_radio2057** %6, align 8
  store %struct.chan_info_nphy_radio205x* null, %struct.chan_info_nphy_radio205x** %7, align 8
  store %struct.chan_info_nphy_radio2057_rev5* null, %struct.chan_info_nphy_radio2057_rev5** %8, align 8
  store %struct.chan_info_nphy_2055* null, %struct.chan_info_nphy_2055** %9, align 8
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @CHSPEC_CHANNEL(i32 %11)
  %13 = call i32 @wlc_phy_chan2freq_nphy(%struct.brcms_phy* %10, i32 %12, i32* %5, %struct.chan_info_nphy_radio2057** %6, %struct.chan_info_nphy_radio205x** %7, %struct.chan_info_nphy_radio2057_rev5** %8, %struct.chan_info_nphy_2055** %9)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %183

16:                                               ; preds = %2
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = bitcast %struct.brcms_phy* %17 to %struct.brcms_phy_pub*
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @wlc_phy_chanspec_radio_set(%struct.brcms_phy_pub* %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @CHSPEC_BW(i32 %21)
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @CHSPEC_BW(i32 %33)
  %35 = call i32 @wlapi_bmac_bw_set(i32 %32, i64 %34)
  br label %36

36:                                               ; preds = %27, %16
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @CHSPEC_IS40(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @CHSPEC_SB_UPPER(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %46 = load i32, i32* @BPHY_BAND_SEL_UP20, align 4
  %47 = call i32 @or_phy_reg(%struct.brcms_phy* %45, i32 160, i32 %46)
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %49 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @NREV_GE(i32 %51, i32 7)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %56 = load i32, i32* @PRIM_SEL_UP20, align 4
  %57 = call i32 @or_phy_reg(%struct.brcms_phy* %55, i32 784, i32 %56)
  br label %58

58:                                               ; preds = %54, %44
  br label %77

59:                                               ; preds = %40
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %61 = load i32, i32* @BPHY_BAND_SEL_UP20, align 4
  %62 = xor i32 %61, -1
  %63 = call i32 @and_phy_reg(%struct.brcms_phy* %60, i32 160, i32 %62)
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @NREV_GE(i32 %67, i32 7)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %72 = load i32, i32* @PRIM_SEL_UP20, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %73, 65535
  %75 = call i32 @and_phy_reg(%struct.brcms_phy* %71, i32 784, i32 %74)
  br label %76

76:                                               ; preds = %70, %59
  br label %77

77:                                               ; preds = %76, %58
  br label %78

78:                                               ; preds = %77, %36
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %80 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @NREV_GE(i32 %82, i32 3)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %165

85:                                               ; preds = %78
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %87 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @NREV_GE(i32 %89, i32 7)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %144

92:                                               ; preds = %85
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %94 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sle i32 %96, 4
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %100 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 6
  br i1 %103, label %104, label %121

104:                                              ; preds = %98, %92
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %106 = load i32, i32* @RADIO_2057_TIA_CONFIG_CORE0, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i64 @CHSPEC_IS5G(i32 %107)
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 2, i32 0
  %112 = call i32 @mod_radio_reg(%struct.brcms_phy* %105, i32 %106, i32 2, i32 %111)
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %114 = load i32, i32* @RADIO_2057_TIA_CONFIG_CORE1, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i64 @CHSPEC_IS5G(i32 %115)
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 2, i32 0
  %120 = call i32 @mod_radio_reg(%struct.brcms_phy* %113, i32 %114, i32 2, i32 %119)
  br label %121

121:                                              ; preds = %104, %98
  %122 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %123 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %6, align 8
  %124 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %8, align 8
  %125 = call i32 @wlc_phy_chanspec_radio2057_setup(%struct.brcms_phy* %122, %struct.chan_info_nphy_radio2057* %123, %struct.chan_info_nphy_radio2057_rev5* %124)
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %129 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 5
  br i1 %132, label %133, label %137

133:                                              ; preds = %121
  %134 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %8, align 8
  %135 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %134, i32 0, i32 0
  %136 = bitcast i32* %135 to %struct.nphy_sfo_cfg*
  br label %141

137:                                              ; preds = %121
  %138 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %6, align 8
  %139 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %138, i32 0, i32 0
  %140 = bitcast i32* %139 to %struct.nphy_sfo_cfg*
  br label %141

141:                                              ; preds = %137, %133
  %142 = phi %struct.nphy_sfo_cfg* [ %136, %133 ], [ %140, %137 ]
  %143 = call i32 @wlc_phy_chanspec_nphy_setup(%struct.brcms_phy* %126, i32 %127, %struct.nphy_sfo_cfg* %142)
  br label %164

144:                                              ; preds = %85
  %145 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %146 = load i32, i32* @RADIO_2056_SYN_COM_CTRL, align 4
  %147 = load i32, i32* @RADIO_2056_SYN, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* %4, align 4
  %150 = call i64 @CHSPEC_IS5G(i32 %149)
  %151 = icmp ne i64 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 4, i32 0
  %154 = call i32 @mod_radio_reg(%struct.brcms_phy* %145, i32 %148, i32 4, i32 %153)
  %155 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %156 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %7, align 8
  %157 = call i32 @wlc_phy_chanspec_radio2056_setup(%struct.brcms_phy* %155, %struct.chan_info_nphy_radio205x* %156)
  %158 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %159 = load i32, i32* %4, align 4
  %160 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %7, align 8
  %161 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %160, i32 0, i32 0
  %162 = bitcast i32* %161 to %struct.nphy_sfo_cfg*
  %163 = call i32 @wlc_phy_chanspec_nphy_setup(%struct.brcms_phy* %158, i32 %159, %struct.nphy_sfo_cfg* %162)
  br label %164

164:                                              ; preds = %144, %141
  br label %183

165:                                              ; preds = %78
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %167 = load i32, i32* @RADIO_2055_MASTER_CNTRL1, align 4
  %168 = load i32, i32* %4, align 4
  %169 = call i64 @CHSPEC_IS5G(i32 %168)
  %170 = icmp ne i64 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 32, i32 80
  %173 = call i32 @mod_radio_reg(%struct.brcms_phy* %166, i32 %167, i32 112, i32 %172)
  %174 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %175 = load %struct.chan_info_nphy_2055*, %struct.chan_info_nphy_2055** %9, align 8
  %176 = call i32 @wlc_phy_chanspec_radio2055_setup(%struct.brcms_phy* %174, %struct.chan_info_nphy_2055* %175)
  %177 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %178 = load i32, i32* %4, align 4
  %179 = load %struct.chan_info_nphy_2055*, %struct.chan_info_nphy_2055** %9, align 8
  %180 = getelementptr inbounds %struct.chan_info_nphy_2055, %struct.chan_info_nphy_2055* %179, i32 0, i32 0
  %181 = bitcast i32* %180 to %struct.nphy_sfo_cfg*
  %182 = call i32 @wlc_phy_chanspec_nphy_setup(%struct.brcms_phy* %177, i32 %178, %struct.nphy_sfo_cfg* %181)
  br label %183

183:                                              ; preds = %15, %165, %164
  ret void
}

declare dso_local i32 @wlc_phy_chan2freq_nphy(%struct.brcms_phy*, i32, i32*, %struct.chan_info_nphy_radio2057**, %struct.chan_info_nphy_radio205x**, %struct.chan_info_nphy_radio2057_rev5**, %struct.chan_info_nphy_2055**) #1

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @wlc_phy_chanspec_radio_set(%struct.brcms_phy_pub*, i32) #1

declare dso_local i64 @CHSPEC_BW(i32) #1

declare dso_local i32 @wlapi_bmac_bw_set(i32, i64) #1

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i64 @CHSPEC_SB_UPPER(i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @wlc_phy_chanspec_radio2057_setup(%struct.brcms_phy*, %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057_rev5*) #1

declare dso_local i32 @wlc_phy_chanspec_nphy_setup(%struct.brcms_phy*, i32, %struct.nphy_sfo_cfg*) #1

declare dso_local i32 @wlc_phy_chanspec_radio2056_setup(%struct.brcms_phy*, %struct.chan_info_nphy_radio205x*) #1

declare dso_local i32 @wlc_phy_chanspec_radio2055_setup(%struct.brcms_phy*, %struct.chan_info_nphy_2055*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
