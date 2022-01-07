; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio_postinit_2056.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio_postinit_2056.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RADIO_2056_SYN_COM_CTRL = common dso_local global i32 0, align 4
@RADIO_2056_SYN_COM_PU = common dso_local global i32 0, align 4
@RADIO_2056_SYN_COM_RESET = common dso_local global i32 0, align 4
@BFL2_LEGACY = common dso_local global i32 0, align 4
@BFL2_XTALBUFOUTEN = common dso_local global i32 0, align 4
@RADIO_2056_SYN_PLL_MAST2 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_RCCAL_CTRL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_radio_postinit_2056 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_radio_postinit_2056(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %3 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %4 = load i32, i32* @RADIO_2056_SYN_COM_CTRL, align 4
  %5 = call i32 @mod_radio_reg(%struct.brcms_phy* %3, i32 %4, i32 11, i32 11)
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %7 = load i32, i32* @RADIO_2056_SYN_COM_PU, align 4
  %8 = call i32 @mod_radio_reg(%struct.brcms_phy* %6, i32 %7, i32 2, i32 2)
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = load i32, i32* @RADIO_2056_SYN_COM_RESET, align 4
  %11 = call i32 @mod_radio_reg(%struct.brcms_phy* %9, i32 %10, i32 2, i32 2)
  %12 = call i32 @udelay(i32 1000)
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = load i32, i32* @RADIO_2056_SYN_COM_RESET, align 4
  %15 = call i32 @mod_radio_reg(%struct.brcms_phy* %13, i32 %14, i32 2, i32 0)
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BFL2_LEGACY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %1
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BFL2_XTALBUFOUTEN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24, %1
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %35 = load i32, i32* @RADIO_2056_SYN_PLL_MAST2, align 4
  %36 = call i32 @mod_radio_reg(%struct.brcms_phy* %34, i32 %35, i32 244, i32 0)
  br label %41

37:                                               ; preds = %24
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %39 = load i32, i32* @RADIO_2056_SYN_PLL_MAST2, align 4
  %40 = call i32 @mod_radio_reg(%struct.brcms_phy* %38, i32 %39, i32 252, i32 0)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %43 = load i32, i32* @RADIO_2056_SYN_RCCAL_CTRL0, align 4
  %44 = call i32 @mod_radio_reg(%struct.brcms_phy* %42, i32 %43, i32 1, i32 0)
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %46 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = call i32 @wlc_phy_radio205x_rcal(%struct.brcms_phy* %50)
  br label %52

52:                                               ; preds = %49, %41
  ret void
}

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlc_phy_radio205x_rcal(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
