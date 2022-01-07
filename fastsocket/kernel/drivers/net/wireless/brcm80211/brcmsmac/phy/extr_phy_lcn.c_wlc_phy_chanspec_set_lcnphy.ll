; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_chanspec_set_lcnphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_chanspec_set_lcnphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.brcms_phy = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.brcms_phy_pub = type { i32 }

@lcnphy_sfo_cfg = common dso_local global %struct.TYPE_4__* null, align 8
@BFL_FEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_chanspec_set_lcnphy(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @CHSPEC_CHANNEL(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %9 = bitcast %struct.brcms_phy* %8 to %struct.brcms_phy_pub*
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @wlc_phy_chanspec_radio_set(%struct.brcms_phy_pub* %9, i32 %10)
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @wlc_lcnphy_set_chanspec_tweaks(%struct.brcms_phy* %12, i32 %15)
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = call i32 @or_phy_reg(%struct.brcms_phy* %17, i32 1098, i32 68)
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = call i32 @write_phy_reg(%struct.brcms_phy* %19, i32 1098, i32 128)
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @wlc_lcnphy_radio_2064_channel_tune_4313(%struct.brcms_phy* %21, i32 %22)
  %24 = call i32 @udelay(i32 1000)
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %26 = call i32 @wlc_lcnphy_toggle_afe_pwdn(%struct.brcms_phy* %25)
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcnphy_sfo_cfg, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @write_phy_reg(%struct.brcms_phy* %27, i32 1623, i32 %34)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lcnphy_sfo_cfg, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @write_phy_reg(%struct.brcms_phy* %36, i32 1624, i32 %43)
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %46 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @CHSPEC_CHANNEL(i32 %47)
  %49 = icmp eq i32 %48, 14
  br i1 %49, label %50, label %55

50:                                               ; preds = %2
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = call i32 @mod_phy_reg(%struct.brcms_phy* %51, i32 1096, i32 768, i32 512)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %54 = call i32 @wlc_lcnphy_load_tx_iir_filter(%struct.brcms_phy* %53, i32 0, i32 3)
  br label %60

55:                                               ; preds = %2
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %57 = call i32 @mod_phy_reg(%struct.brcms_phy* %56, i32 1096, i32 768, i32 256)
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %59 = call i32 @wlc_lcnphy_load_tx_iir_filter(%struct.brcms_phy* %58, i32 0, i32 2)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %62 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BFL_FEM, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %71 = call i32 @wlc_lcnphy_load_tx_iir_filter(%struct.brcms_phy* %70, i32 1, i32 0)
  br label %75

72:                                               ; preds = %60
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %74 = call i32 @wlc_lcnphy_load_tx_iir_filter(%struct.brcms_phy* %73, i32 1, i32 3)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %77 = call i32 @mod_phy_reg(%struct.brcms_phy* %76, i32 1259, i32 56, i32 8)
  ret void
}

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @wlc_phy_chanspec_radio_set(%struct.brcms_phy_pub*, i32) #1

declare dso_local i32 @wlc_lcnphy_set_chanspec_tweaks(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_radio_2064_channel_tune_4313(%struct.brcms_phy*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlc_lcnphy_toggle_afe_pwdn(%struct.brcms_phy*) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_load_tx_iir_filter(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
