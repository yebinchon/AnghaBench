; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_radio_interference_mitigation_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_radio_interference_mitigation_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32* }

@B43_PHY_G_CRS = common dso_local global i32 0, align 4
@B43_PHY_RADIO_BITFIELD = common dso_local global i32 0, align 4
@B43_HF_ACIW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_radio_interference_mitigation_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_interference_mitigation_disable(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca %struct.b43_phy_g*, align 8
  %7 = alloca i32*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 1
  store %struct.b43_phy* %9, %struct.b43_phy** %5, align 8
  %10 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %11 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %10, i32 0, i32 1
  %12 = load %struct.b43_phy_g*, %struct.b43_phy_g** %11, align 8
  store %struct.b43_phy_g* %12, %struct.b43_phy_g** %6, align 8
  %13 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %14 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %126 [
    i32 128, label %17
    i32 129, label %58
  ]

17:                                               ; preds = %2
  %18 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %19 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = call i32 @b43_phy_mask(%struct.b43_wldev* %23, i32 1067, i32 -2049)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = load i32, i32* @B43_PHY_G_CRS, align 4
  %27 = call i32 @b43_phy_set(%struct.b43_wldev* %25, i32 %26, i32 16384)
  br label %128

28:                                               ; preds = %17
  %29 = call i32 @radio_stackrestore(i32 120)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = call i32 @b43_calc_nrssi_threshold(%struct.b43_wldev* %30)
  %32 = call i32 @phy_stackrestore(i32 1030)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = call i32 @b43_phy_mask(%struct.b43_wldev* %33, i32 1067, i32 -2049)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %28
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = load i32, i32* @B43_PHY_RADIO_BITFIELD, align 4
  %42 = call i32 @b43_phy_mask(%struct.b43_wldev* %40, i32 %41, i32 -2049)
  br label %43

43:                                               ; preds = %39, %28
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = load i32, i32* @B43_PHY_G_CRS, align 4
  %46 = call i32 @b43_phy_set(%struct.b43_wldev* %44, i32 %45, i32 16384)
  %47 = call i32 @phy_stackrestore(i32 1184)
  %48 = call i32 @phy_stackrestore(i32 1185)
  %49 = call i32 @phy_stackrestore(i32 1186)
  %50 = call i32 @phy_stackrestore(i32 1192)
  %51 = call i32 @phy_stackrestore(i32 1195)
  %52 = call i32 @phy_stackrestore(i32 1191)
  %53 = call i32 @phy_stackrestore(i32 1187)
  %54 = call i32 @phy_stackrestore(i32 1193)
  %55 = call i32 @phy_stackrestore(i32 1171)
  %56 = call i32 @phy_stackrestore(i32 1194)
  %57 = call i32 @phy_stackrestore(i32 1196)
  br label %128

58:                                               ; preds = %2
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %60 = call i32 @b43_phy_read(%struct.b43_wldev* %59, i32 51)
  %61 = and i32 %60, 2048
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %128

64:                                               ; preds = %58
  %65 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %66 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load i32, i32* @B43_PHY_RADIO_BITFIELD, align 4
  %68 = call i32 @phy_stackrestore(i32 %67)
  %69 = load i32, i32* @B43_PHY_G_CRS, align 4
  %70 = call i32 @phy_stackrestore(i32 %69)
  %71 = call i32 @phy_stackrestore(i32 51)
  %72 = call i32 @phy_stackrestore(i32 1187)
  %73 = call i32 @phy_stackrestore(i32 1193)
  %74 = call i32 @phy_stackrestore(i32 1171)
  %75 = call i32 @phy_stackrestore(i32 1194)
  %76 = call i32 @phy_stackrestore(i32 1196)
  %77 = call i32 @phy_stackrestore(i32 1184)
  %78 = call i32 @phy_stackrestore(i32 1191)
  %79 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %80 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %81, 2
  br i1 %82, label %83, label %86

83:                                               ; preds = %64
  %84 = call i32 @phy_stackrestore(i32 1216)
  %85 = call i32 @phy_stackrestore(i32 1217)
  br label %88

86:                                               ; preds = %64
  %87 = call i32 @phy_stackrestore(i32 1030)
  br label %88

88:                                               ; preds = %86, %83
  %89 = call i32 @phy_stackrestore(i32 1185)
  %90 = call i32 @phy_stackrestore(i32 1195)
  %91 = call i32 @phy_stackrestore(i32 1192)
  %92 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %93 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = call i32 @phy_stackrestore(i32 1197)
  %98 = call i32 @phy_stackrestore(i32 1198)
  br label %112

99:                                               ; preds = %88
  %100 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %101 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sge i32 %102, 3
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = call i32 @phy_stackrestore(i32 1197)
  %106 = call i32 @phy_stackrestore(i32 1045)
  %107 = call i32 @phy_stackrestore(i32 1046)
  %108 = call i32 @phy_stackrestore(i32 1047)
  %109 = call i32 @ofdmtab_stackrestore(i32 6656, i32 2)
  %110 = call i32 @ofdmtab_stackrestore(i32 6656, i32 3)
  br label %111

111:                                              ; preds = %104, %99
  br label %112

112:                                              ; preds = %111, %96
  %113 = call i32 @phy_stackrestore(i32 1186)
  %114 = call i32 @phy_stackrestore(i32 1162)
  %115 = call i32 @phy_stackrestore(i32 1067)
  %116 = call i32 @phy_stackrestore(i32 1164)
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %119 = call i32 @b43_hf_read(%struct.b43_wldev* %118)
  %120 = load i32, i32* @B43_HF_ACIW, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  %123 = call i32 @b43_hf_write(%struct.b43_wldev* %117, i32 %122)
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %125 = call i32 @b43_calc_nrssi_slope(%struct.b43_wldev* %124)
  br label %128

126:                                              ; preds = %2
  %127 = call i32 @B43_WARN_ON(i32 1)
  br label %128

128:                                              ; preds = %126, %112, %63, %43, %22
  ret void
}

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @radio_stackrestore(i32) #1

declare dso_local i32 @b43_calc_nrssi_threshold(%struct.b43_wldev*) #1

declare dso_local i32 @phy_stackrestore(i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @ofdmtab_stackrestore(i32, i32) #1

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @b43_calc_nrssi_slope(%struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
