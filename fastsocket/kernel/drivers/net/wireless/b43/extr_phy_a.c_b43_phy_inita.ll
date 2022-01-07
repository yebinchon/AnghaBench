; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_phy_inita.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_phy_inita.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__*, %struct.b43_phy }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.b43_phy = type { i64, i32, i64 }

@B43_PHYTYPE_A = common dso_local global i64 0, align 8
@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@B43_PHY_ENCORE = common dso_local global i32 0, align 4
@B43_PHY_ENCORE_EN = common dso_local global i32 0, align 4
@B43_PHY_CRS0 = common dso_local global i32 0, align 4
@B43_PHY_CRS0_EN = common dso_local global i32 0, align 4
@SSB_BOARDVENDOR_BCM = common dso_local global i64 0, align 8
@SSB_BOARD_BU4306 = common dso_local global i64 0, align 8
@SSB_BOARD_BU4309 = common dso_local global i64 0, align 8
@B43_BFL_PACTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_phy_inita(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 1
  store %struct.b43_phy* %5, %struct.b43_phy** %3, align 8
  %6 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %7 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @B43_PHYTYPE_A, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %13 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @B43_PHYTYPE_G, align 8
  %16 = icmp ne i64 %14, %15
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ false, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @B43_WARN_ON(i32 %19)
  %21 = call i32 (...) @might_sleep()
  %22 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %23 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 6
  br i1 %25, label %26, label %52

26:                                               ; preds = %17
  %27 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %28 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @B43_PHYTYPE_A, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = call i32 @B43_PHY_OFDM(i32 27)
  %35 = call i32 @b43_phy_mask(%struct.b43_wldev* %33, i32 %34, i32 -4097)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = load i32, i32* @B43_PHY_ENCORE, align 4
  %39 = call i32 @b43_phy_read(%struct.b43_wldev* %37, i32 %38)
  %40 = load i32, i32* @B43_PHY_ENCORE_EN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = load i32, i32* @B43_PHY_ENCORE, align 4
  %46 = call i32 @b43_phy_set(%struct.b43_wldev* %44, i32 %45, i32 16)
  br label %51

47:                                               ; preds = %36
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = load i32, i32* @B43_PHY_ENCORE, align 4
  %50 = call i32 @b43_phy_mask(%struct.b43_wldev* %48, i32 %49, i32 -4113)
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %17
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = call i32 @b43_wa_all(%struct.b43_wldev* %53)
  %55 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %56 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @B43_PHYTYPE_A, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %117

60:                                               ; preds = %52
  %61 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %62 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %67 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = call i32 @b43_phy_set(%struct.b43_wldev* %71, i32 52, i32 1)
  br label %73

73:                                               ; preds = %70, %65, %60
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = call i32 @b43_phy_rssiagc(%struct.b43_wldev* %74, i32 0)
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %77 = load i32, i32* @B43_PHY_CRS0, align 4
  %78 = load i32, i32* @B43_PHY_CRS0_EN, align 4
  %79 = call i32 @b43_phy_set(%struct.b43_wldev* %76, i32 %77, i32 %78)
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = call i32 @b43_radio_init2060(%struct.b43_wldev* %80)
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %73
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SSB_BOARD_BU4306, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %89
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SSB_BOARD_BU4309, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97, %89
  br label %106

106:                                              ; preds = %105, %97, %73
  %107 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %108 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp sge i32 %109, 3
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %113 = call i32 @b43_phy_ww(%struct.b43_wldev* %112)
  br label %114

114:                                              ; preds = %111, %106
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %116 = call i32 @hardware_pctl_init_aphy(%struct.b43_wldev* %115)
  br label %117

117:                                              ; preds = %114, %52
  %118 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %119 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @B43_PHYTYPE_G, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %117
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %125 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @B43_BFL_PACTRL, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %123
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %136 = call i32 @B43_PHY_OFDM(i32 110)
  %137 = call i32 @b43_phy_maskset(%struct.b43_wldev* %135, i32 %136, i32 57344, i32 975)
  br label %138

138:                                              ; preds = %134, %123, %117
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_wa_all(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_rssiagc(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_init2060(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_ww(%struct.b43_wldev*) #1

declare dso_local i32 @hardware_pctl_init_aphy(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
