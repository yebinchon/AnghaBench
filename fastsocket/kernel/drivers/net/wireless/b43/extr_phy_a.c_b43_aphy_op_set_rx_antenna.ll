; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_aphy_op_set_rx_antenna.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_aphy_op_set_rx_antenna.c"
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
@B43_PHY_OFDM61 = common dso_local global i32 0, align 4
@B43_PHY_CLIPPWRDOWNT = common dso_local global i32 0, align 4
@B43_PHY_ADIVRELATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_aphy_op_set_rx_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_aphy_op_set_rx_antenna(%struct.b43_wldev* %0, i32 %1) #0 {
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
  %65 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %66 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 3
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = load i32, i32* @B43_PHY_ANTDWELL, align 4
  %72 = call i32 @b43_phy_maskset(%struct.b43_wldev* %70, i32 %71, i32 65280, i32 36)
  br label %96

73:                                               ; preds = %64
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = load i32, i32* @B43_PHY_OFDM61, align 4
  %76 = call i32 @b43_phy_set(%struct.b43_wldev* %74, i32 %75, i32 16)
  %77 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %78 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %83 = load i32, i32* @B43_PHY_CLIPPWRDOWNT, align 4
  %84 = call i32 @b43_phy_write(%struct.b43_wldev* %82, i32 %83, i32 29)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %86 = load i32, i32* @B43_PHY_ADIVRELATED, align 4
  %87 = call i32 @b43_phy_write(%struct.b43_wldev* %85, i32 %86, i32 8)
  br label %95

88:                                               ; preds = %73
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %90 = load i32, i32* @B43_PHY_CLIPPWRDOWNT, align 4
  %91 = call i32 @b43_phy_write(%struct.b43_wldev* %89, i32 %90, i32 58)
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %93 = load i32, i32* @B43_PHY_ADIVRELATED, align 4
  %94 = call i32 @b43_phy_maskset(%struct.b43_wldev* %92, i32 %93, i32 65280, i32 8)
  br label %95

95:                                               ; preds = %88, %81
  br label %96

96:                                               ; preds = %95, %69
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %99 = call i32 @b43_hf_read(%struct.b43_wldev* %98)
  %100 = load i32, i32* @B43_HF_ANTDIVHELP, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @b43_hf_write(%struct.b43_wldev* %97, i32 %101)
  ret void
}

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
