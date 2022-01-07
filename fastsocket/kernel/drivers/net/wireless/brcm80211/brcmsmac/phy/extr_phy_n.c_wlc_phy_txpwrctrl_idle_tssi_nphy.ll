; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwrctrl_idle_tssi_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwrctrl_idle_tssi_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@NPHY_REV7_RFCTRLOVERRIDE_ID0 = common dso_local global i32 0, align 4
@NPHY_RSSI_SEL_TSSI_2G = common dso_local global i64 0, align 8
@RADIO_MIMO_CORESEL_OFF = common dso_local global i32 0, align 4
@PHY_CORE_0 = common dso_local global i64 0, align 8
@PHY_CORE_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_txpwrctrl_idle_tssi_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_txpwrctrl_idle_tssi_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = call i64 @SCAN_RM_IN_PROGRESS(%struct.brcms_phy* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = call i64 @PLT_INPROG_PHY(%struct.brcms_phy* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = call i64 @PHY_MUTED(%struct.brcms_phy* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8, %1
  br label %179

17:                                               ; preds = %12
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = call i64 @PHY_IPA(%struct.brcms_phy* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = call i32 @wlc_phy_ipa_internal_tssi_setup_nphy(%struct.brcms_phy* %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @NREV_GE(i32 %28, i32 7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %33 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %34 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %32, i32 4096, i32 0, i32 3, i32 0, i32 %33)
  br label %46

35:                                               ; preds = %24
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @NREV_GE(i32 %39, i32 3)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %44 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %43, i32 8192, i32 0, i32 3, i32 0)
  br label %45

45:                                               ; preds = %42, %35
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %48 = call i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy* %47)
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %50 = call i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy* %49, i32 4000, i32 0, i32 0, i32 0, i32 0)
  %51 = call i32 @udelay(i32 20)
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %53 = load i64, i64* @NPHY_RSSI_SEL_TSSI_2G, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %56 = call i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %52, i8* %54, i32* %55, i32 1)
  store i32 %56, i32* %4, align 4
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %58 = call i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy* %57)
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %60 = load i32, i32* @RADIO_MIMO_CORESEL_OFF, align 4
  %61 = call i32 @wlc_phy_rssisel_nphy(%struct.brcms_phy* %59, i32 %60, i32 0)
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %63 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @NREV_GE(i32 %65, i32 7)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %46
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %70 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %71 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %69, i32 4096, i32 0, i32 3, i32 1, i32 %70)
  br label %83

72:                                               ; preds = %46
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %74 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @NREV_GE(i32 %76, i32 3)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %81 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %80, i32 8192, i32 0, i32 3, i32 1)
  br label %82

82:                                               ; preds = %79, %72
  br label %83

83:                                               ; preds = %82, %68
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %85 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @NREV_GE(i32 %87, i32 3)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %135

90:                                               ; preds = %83
  %91 = load i32, i32* %4, align 4
  %92 = ashr i32 %91, 24
  %93 = and i32 %92, 255
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %97 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i64, i64* @PHY_CORE_0, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i8* %95, i8** %101, align 8
  %102 = load i32, i32* %4, align 4
  %103 = ashr i32 %102, 24
  %104 = and i32 %103, 255
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %108 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i64, i64* @PHY_CORE_0, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i8* %106, i8** %112, align 8
  %113 = load i32, i32* %4, align 4
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 255
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %119 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i64, i64* @PHY_CORE_1, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i8* %117, i8** %123, align 8
  %124 = load i32, i32* %4, align 4
  %125 = ashr i32 %124, 8
  %126 = and i32 %125, 255
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %130 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i64, i64* @PHY_CORE_1, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i8* %128, i8** %134, align 8
  br label %179

135:                                              ; preds = %83
  %136 = load i32, i32* %4, align 4
  %137 = ashr i32 %136, 24
  %138 = and i32 %137, 255
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %142 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %141, i32 0, i32 0
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i64, i64* @PHY_CORE_0, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  store i8* %140, i8** %146, align 8
  %147 = load i32, i32* %4, align 4
  %148 = ashr i32 %147, 8
  %149 = and i32 %148, 255
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %153 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i64, i64* @PHY_CORE_1, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  store i8* %151, i8** %157, align 8
  %158 = load i32, i32* %4, align 4
  %159 = ashr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %164 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i64, i64* @PHY_CORE_0, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  store i8* %162, i8** %168, align 8
  %169 = load i32, i32* %4, align 4
  %170 = and i32 %169, 255
  %171 = sext i32 %170 to i64
  %172 = inttoptr i64 %171 to i8*
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %174 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i64, i64* @PHY_CORE_1, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  store i8* %172, i8** %178, align 8
  br label %179

179:                                              ; preds = %16, %135, %90
  ret void
}

declare dso_local i64 @SCAN_RM_IN_PROGRESS(%struct.brcms_phy*) #1

declare dso_local i64 @PLT_INPROG_PHY(%struct.brcms_phy*) #1

declare dso_local i64 @PHY_MUTED(%struct.brcms_phy*) #1

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_ipa_internal_tssi_setup_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy*, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy*, i8*, i32*, i32) #1

declare dso_local i32 @wlc_phy_rssisel_nphy(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
