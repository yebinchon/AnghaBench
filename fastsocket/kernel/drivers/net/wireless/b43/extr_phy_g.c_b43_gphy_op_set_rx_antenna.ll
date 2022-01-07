; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_op_set_rx_antenna.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_op_set_rx_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32 }

@B43_ANTENNA_AUTO0 = common dso_local global i32 0, align 4
@B43_ANTENNA_AUTO1 = common dso_local global i32 0, align 4
@B43_HF_ANTDIVHELP = common dso_local global i32 0, align 4
@B43_PHY_BBANDCFG = common dso_local global i32 0, align 4
@B43_PHY_BBANDCFG_RXANT = common dso_local global i32 0, align 4
@B43_PHY_BBANDCFG_RXANT_SHIFT = common dso_local global i32 0, align 4
@B43_PHY_ANTDWELL = common dso_local global i32 0, align 4
@B43_PHY_ANTDWELL_AUTODIV1 = common dso_local global i32 0, align 4
@B43_PHY_ANTWRSETT = common dso_local global i32 0, align 4
@B43_PHY_ANTWRSETT_ARXDIV = common dso_local global i32 0, align 4
@B43_PHY_OFDM61 = common dso_local global i32 0, align 4
@B43_PHY_OFDM61_10 = common dso_local global i32 0, align 4
@B43_PHY_DIVSRCHGAINBACK = common dso_local global i32 0, align 4
@B43_PHY_ADIVRELATED = common dso_local global i32 0, align 4
@B43_PHY_OFDM9B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_gphy_op_set_rx_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_gphy_op_set_rx_antenna(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  store %struct.b43_phy* %9, %struct.b43_phy** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @B43_ANTENNA_AUTO0, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @B43_ANTENNA_AUTO1, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  store i32 1, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %13
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = call i32 @b43_hf_read(%struct.b43_wldev* %20)
  %22 = load i32, i32* @B43_HF_ANTDIVHELP, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = call i32 @b43_hf_write(%struct.b43_wldev* %19, i32 %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = load i32, i32* @B43_PHY_BBANDCFG, align 4
  %28 = load i32, i32* @B43_PHY_BBANDCFG_RXANT, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @B43_ANTENNA_AUTO1, align 4
  br label %36

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32, i32* @B43_PHY_BBANDCFG_RXANT_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = call i32 @b43_phy_maskset(%struct.b43_wldev* %26, i32 %27, i32 %29, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %36
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = load i32, i32* @B43_PHY_ANTDWELL, align 4
  %46 = call i32 @b43_phy_read(%struct.b43_wldev* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @B43_ANTENNA_AUTO1, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* @B43_PHY_ANTDWELL_AUTODIV1, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %59

55:                                               ; preds = %43
  %56 = load i32, i32* @B43_PHY_ANTDWELL_AUTODIV1, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %61 = load i32, i32* @B43_PHY_ANTDWELL, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @b43_phy_write(%struct.b43_wldev* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %36
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %66 = load i32, i32* @B43_PHY_ANTWRSETT, align 4
  %67 = call i32 @b43_phy_read(%struct.b43_wldev* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* @B43_PHY_ANTWRSETT_ARXDIV, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %79

74:                                               ; preds = %64
  %75 = load i32, i32* @B43_PHY_ANTWRSETT_ARXDIV, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %81 = load i32, i32* @B43_PHY_ANTWRSETT, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @b43_phy_write(%struct.b43_wldev* %80, i32 %81, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %88 = load i32, i32* @B43_PHY_ANTWRSETT, align 4
  %89 = load i32, i32* @B43_PHY_ANTWRSETT_ARXDIV, align 4
  %90 = call i32 @b43_phy_set(%struct.b43_wldev* %87, i32 %88, i32 %89)
  br label %96

91:                                               ; preds = %79
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %93 = load i32, i32* @B43_PHY_ANTWRSETT, align 4
  %94 = load i32, i32* @B43_PHY_ANTWRSETT_ARXDIV, align 4
  %95 = call i32 @b43_phy_mask(%struct.b43_wldev* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %98 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 2
  br i1 %100, label %101, label %122

101:                                              ; preds = %96
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %103 = load i32, i32* @B43_PHY_OFDM61, align 4
  %104 = load i32, i32* @B43_PHY_OFDM61_10, align 4
  %105 = call i32 @b43_phy_set(%struct.b43_wldev* %102, i32 %103, i32 %104)
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %107 = load i32, i32* @B43_PHY_DIVSRCHGAINBACK, align 4
  %108 = call i32 @b43_phy_maskset(%struct.b43_wldev* %106, i32 %107, i32 65280, i32 21)
  %109 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %110 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %117

113:                                              ; preds = %101
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %115 = load i32, i32* @B43_PHY_ADIVRELATED, align 4
  %116 = call i32 @b43_phy_write(%struct.b43_wldev* %114, i32 %115, i32 8)
  br label %121

117:                                              ; preds = %101
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %119 = load i32, i32* @B43_PHY_ADIVRELATED, align 4
  %120 = call i32 @b43_phy_maskset(%struct.b43_wldev* %118, i32 %119, i32 65280, i32 8)
  br label %121

121:                                              ; preds = %117, %113
  br label %122

122:                                              ; preds = %121, %96
  %123 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %124 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp sge i32 %125, 6
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %129 = load i32, i32* @B43_PHY_OFDM9B, align 4
  %130 = call i32 @b43_phy_write(%struct.b43_wldev* %128, i32 %129, i32 220)
  br label %131

131:                                              ; preds = %127, %122
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %134 = call i32 @b43_hf_read(%struct.b43_wldev* %133)
  %135 = load i32, i32* @B43_HF_ANTDIVHELP, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @b43_hf_write(%struct.b43_wldev* %132, i32 %136)
  ret void
}

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
