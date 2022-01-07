; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_classifier_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_classifier_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_classifier_nphy(%struct.brcms_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @D11REV_IS(i32 %14, i32 16)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @maccontrol, align 4
  %22 = call i32 @D11REGOFFS(i32 %21)
  %23 = call i32 @bcma_read32(i32 %20, i32 %22)
  %24 = load i32, i32* @MCTL_EN_MAC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 1
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %17
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %33 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wlapi_suspend_mac_and_wait(i32 %36)
  br label %38

38:                                               ; preds = %31, %17
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %41 = call i32 @read_phy_reg(%struct.brcms_phy* %40, i32 176)
  %42 = and i32 %41, 7
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %47, %48
  %50 = or i32 %46, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @mod_phy_reg(%struct.brcms_phy* %51, i32 176, i32 7, i32 %52)
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %55 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @D11REV_IS(i32 %58, i32 16)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %39
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @wlapi_enable_mac(i32 %69)
  br label %71

71:                                               ; preds = %64, %61, %39
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i64 @D11REV_IS(i32, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
