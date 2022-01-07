; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rev0_baseband_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rev0_baseband_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32, i32, i32 }

@RADIO_2064_REG11C = common dso_local global i32 0, align 4
@BFL_FEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_rev0_baseband_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_rev0_baseband_init(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %7, align 8
  store %struct.brcms_phy_lcnphy* %8, %struct.brcms_phy_lcnphy** %4, align 8
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = load i32, i32* @RADIO_2064_REG11C, align 4
  %11 = call i32 @write_radio_reg(%struct.brcms_phy* %9, i32 %10, i32 0)
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %13 = call i32 @write_phy_reg(%struct.brcms_phy* %12, i32 1083, i32 0)
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %15 = call i32 @write_phy_reg(%struct.brcms_phy* %14, i32 1084, i32 0)
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = call i32 @write_phy_reg(%struct.brcms_phy* %16, i32 1100, i32 0)
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = call i32 @write_phy_reg(%struct.brcms_phy* %18, i32 1254, i32 0)
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %21 = call i32 @write_phy_reg(%struct.brcms_phy* %20, i32 1273, i32 0)
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = call i32 @write_phy_reg(%struct.brcms_phy* %22, i32 1200, i32 0)
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %25 = call i32 @write_phy_reg(%struct.brcms_phy* %24, i32 2360, i32 0)
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = call i32 @write_phy_reg(%struct.brcms_phy* %26, i32 1200, i32 0)
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = call i32 @write_phy_reg(%struct.brcms_phy* %28, i32 1102, i32 0)
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = call i32 @or_phy_reg(%struct.brcms_phy* %30, i32 1383, i32 3)
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %33 = call i32 @or_phy_reg(%struct.brcms_phy* %32, i32 1098, i32 68)
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %35 = call i32 @write_phy_reg(%struct.brcms_phy* %34, i32 1098, i32 128)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BFL_FEM, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %1
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %46 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %45, i32 52)
  br label %47

47:                                               ; preds = %44, %1
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %49 = call i32 @mod_phy_reg(%struct.brcms_phy* %48, i32 1588, i32 255, i32 12)
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BFL_FEM, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %60 = call i32 @mod_phy_reg(%struct.brcms_phy* %59, i32 1588, i32 255, i32 10)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %62 = call i32 @write_phy_reg(%struct.brcms_phy* %61, i32 2320, i32 1)
  br label %63

63:                                               ; preds = %58, %47
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %65 = call i32 @mod_phy_reg(%struct.brcms_phy* %64, i32 1096, i32 768, i32 256)
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %67 = call i32 @mod_phy_reg(%struct.brcms_phy* %66, i32 1544, i32 255, i32 23)
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %69 = call i32 @mod_phy_reg(%struct.brcms_phy* %68, i32 1540, i32 2047, i32 1002)
  ret void
}

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
