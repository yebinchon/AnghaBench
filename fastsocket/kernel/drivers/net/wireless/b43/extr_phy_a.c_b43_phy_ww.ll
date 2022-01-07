; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_phy_ww.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_phy_ww.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_PHY_CRS0 = common dso_local global i32 0, align 4
@B43_PHY_CRS0_EN = common dso_local global i32 0, align 4
@B43_PHY_PWRDOWN = common dso_local global i32 0, align 4
@B43_PHY_OTABLEQ = common dso_local global i32 0, align 4
@B43_OFDMTAB_AGC1_R1 = common dso_local global i32 0, align 4
@B43_PHY_OFDM61 = common dso_local global i32 0, align 4
@B43_OFDMTAB_AGC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_ww to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ww(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  store i32 65535, i32* %5, align 4
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = load i32, i32* @B43_PHY_CRS0, align 4
  %9 = load i32, i32* @B43_PHY_CRS0_EN, align 4
  %10 = xor i32 %9, -1
  %11 = call i32 @b43_phy_mask(%struct.b43_wldev* %7, i32 %8, i32 %10)
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %13 = call i32 @B43_PHY_OFDM(i32 27)
  %14 = call i32 @b43_phy_set(%struct.b43_wldev* %12, i32 %13, i32 4096)
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = call i32 @B43_PHY_OFDM(i32 130)
  %17 = call i32 @b43_phy_maskset(%struct.b43_wldev* %15, i32 %16, i32 61695, i32 768)
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = call i32 @b43_radio_set(%struct.b43_wldev* %18, i32 9, i32 128)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = call i32 @b43_radio_maskset(%struct.b43_wldev* %20, i32 18, i32 65532, i32 2)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = call i32 @b43_wa_initgains(%struct.b43_wldev* %22)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = call i32 @B43_PHY_OFDM(i32 186)
  %26 = call i32 @b43_phy_write(%struct.b43_wldev* %24, i32 %25, i32 16085)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = load i32, i32* @B43_PHY_PWRDOWN, align 4
  %29 = call i32 @b43_phy_read(%struct.b43_wldev* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = load i32, i32* @B43_PHY_PWRDOWN, align 4
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 65528
  %34 = or i32 %33, 5
  %35 = call i32 @b43_phy_write(%struct.b43_wldev* %30, i32 %31, i32 %34)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = call i32 @b43_radio_set(%struct.b43_wldev* %36, i32 4, i32 4)
  store i32 16, i32* %6, align 4
  br label %38

38:                                               ; preds = %66, %1
  %39 = load i32, i32* %6, align 4
  %40 = icmp sle i32 %39, 32
  br i1 %40, label %41, label %69

41:                                               ; preds = %38
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @b43_radio_write16(%struct.b43_wldev* %42, i32 19, i32 %43)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = load i32, i32* @B43_PHY_OTABLEQ, align 4
  %47 = call i32 @b43_phy_read(%struct.b43_wldev* %45, i32 %46)
  %48 = and i32 %47, 255
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %69

52:                                               ; preds = %41
  %53 = load i32, i32* %4, align 4
  %54 = icmp sge i32 %53, 128
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 256, %56
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %38

69:                                               ; preds = %51, %38
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = load i32, i32* @B43_PHY_PWRDOWN, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @b43_phy_write(%struct.b43_wldev* %70, i32 %71, i32 %72)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = call i32 @b43_radio_mask(%struct.b43_wldev* %74, i32 4, i32 65531)
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @b43_radio_write16(%struct.b43_wldev* %76, i32 19, i32 %77)
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = load i32, i32* @B43_OFDMTAB_AGC1_R1, align 4
  %81 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %79, i32 %80, i32 0, i32 65516)
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = call i32 @B43_PHY_OFDM(i32 183)
  %84 = call i32 @b43_phy_write(%struct.b43_wldev* %82, i32 %83, i32 7808)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %86 = call i32 @B43_PHY_OFDM(i32 182)
  %87 = call i32 @b43_phy_write(%struct.b43_wldev* %85, i32 %86, i32 7168)
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %89 = call i32 @B43_PHY_OFDM(i32 181)
  %90 = call i32 @b43_phy_write(%struct.b43_wldev* %88, i32 %89, i32 3776)
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %92 = call i32 @B43_PHY_OFDM(i32 178)
  %93 = call i32 @b43_phy_write(%struct.b43_wldev* %91, i32 %92, i32 192)
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %95 = call i32 @B43_PHY_OFDM(i32 185)
  %96 = call i32 @b43_phy_write(%struct.b43_wldev* %94, i32 %95, i32 8191)
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = call i32 @B43_PHY_OFDM(i32 187)
  %99 = call i32 @b43_phy_maskset(%struct.b43_wldev* %97, i32 %98, i32 61440, i32 83)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %101 = load i32, i32* @B43_PHY_OFDM61, align 4
  %102 = call i32 @b43_phy_maskset(%struct.b43_wldev* %100, i32 %101, i32 65055, i32 288)
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = call i32 @B43_PHY_OFDM(i32 19)
  %105 = call i32 @b43_phy_maskset(%struct.b43_wldev* %103, i32 %104, i32 4095, i32 12288)
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %107 = call i32 @B43_PHY_OFDM(i32 20)
  %108 = call i32 @b43_phy_maskset(%struct.b43_wldev* %106, i32 %107, i32 4095, i32 12288)
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %110 = load i32, i32* @B43_OFDMTAB_AGC1, align 4
  %111 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %109, i32 %110, i32 6, i32 23)
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %120, %69
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %113, 6
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %117 = load i32, i32* @B43_OFDMTAB_AGC1, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %116, i32 %117, i32 %118, i32 15)
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %112

123:                                              ; preds = %112
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %125 = load i32, i32* @B43_OFDMTAB_AGC1, align 4
  %126 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %124, i32 %125, i32 13, i32 14)
  %127 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %128 = load i32, i32* @B43_OFDMTAB_AGC1, align 4
  %129 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %127, i32 %128, i32 14, i32 17)
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %131 = load i32, i32* @B43_OFDMTAB_AGC1, align 4
  %132 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %130, i32 %131, i32 15, i32 19)
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %134 = call i32 @B43_PHY_OFDM(i32 51)
  %135 = call i32 @b43_phy_write(%struct.b43_wldev* %133, i32 %134, i32 20528)
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %137 = load i32, i32* @B43_PHY_CRS0, align 4
  %138 = load i32, i32* @B43_PHY_CRS0_EN, align 4
  %139 = call i32 @b43_phy_set(%struct.b43_wldev* %136, i32 %137, i32 %138)
  ret void
}

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_wa_initgains(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_ofdmtab_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
