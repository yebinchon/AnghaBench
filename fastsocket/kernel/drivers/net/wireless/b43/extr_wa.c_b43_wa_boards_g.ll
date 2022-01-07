; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_boards_g.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_boards_g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__*, %struct.b43_phy }
%struct.TYPE_2__ = type { i64, i64, i32, %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32 }
%struct.b43_phy = type { i32 }

@SSB_BOARDVENDOR_BCM = common dso_local global i64 0, align 8
@SSB_BOARD_BU4306 = common dso_local global i64 0, align 8
@B43_OFDMTAB_GAINX_R1 = common dso_local global i32 0, align 4
@B43_OFDMTAB_GAINX = common dso_local global i32 0, align 4
@B43_BFL_EXTLNA = common dso_local global i32 0, align 4
@B43_BFL_FEM = common dso_local global i32 0, align 4
@B43_PHY_GTABCTL = common dso_local global i32 0, align 4
@B43_PHY_GTABDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_wa_boards_g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_wa_boards_g(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  store %struct.ssb_sprom* %9, %struct.ssb_sprom** %3, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  store %struct.b43_phy* %11, %struct.b43_phy** %4, align 8
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %34, label %19

19:                                               ; preds = %1
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SSB_BOARD_BU4306, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %19
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 23
  br i1 %33, label %34, label %88

34:                                               ; preds = %27, %19, %1
  %35 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %36 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = load i32, i32* @B43_OFDMTAB_GAINX_R1, align 4
  %42 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %40, i32 %41, i32 1, i32 2)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = load i32, i32* @B43_OFDMTAB_GAINX_R1, align 4
  %45 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %43, i32 %44, i32 2, i32 1)
  br label %87

46:                                               ; preds = %34
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load i32, i32* @B43_OFDMTAB_GAINX, align 4
  %49 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %47, i32 %48, i32 1, i32 2)
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = load i32, i32* @B43_OFDMTAB_GAINX, align 4
  %52 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %50, i32 %51, i32 2, i32 1)
  %53 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %54 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @B43_BFL_EXTLNA, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %46
  %60 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %61 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 7
  br i1 %63, label %64, label %86

64:                                               ; preds = %59
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = call i32 @B43_PHY_EXTG(i32 17)
  %67 = call i32 @b43_phy_mask(%struct.b43_wldev* %65, i32 %66, i32 63487)
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = load i32, i32* @B43_OFDMTAB_GAINX, align 4
  %70 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %68, i32 %69, i32 32, i32 1)
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = load i32, i32* @B43_OFDMTAB_GAINX, align 4
  %73 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %71, i32 %72, i32 33, i32 1)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = load i32, i32* @B43_OFDMTAB_GAINX, align 4
  %76 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %74, i32 %75, i32 34, i32 1)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = load i32, i32* @B43_OFDMTAB_GAINX, align 4
  %79 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %77, i32 %78, i32 35, i32 0)
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = load i32, i32* @B43_OFDMTAB_GAINX, align 4
  %82 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %80, i32 %81, i32 0, i32 0)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = load i32, i32* @B43_OFDMTAB_GAINX, align 4
  %85 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %83, i32 %84, i32 3, i32 2)
  br label %86

86:                                               ; preds = %64, %59, %46
  br label %87

87:                                               ; preds = %86, %39
  br label %88

88:                                               ; preds = %87, %27
  %89 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %90 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @B43_BFL_FEM, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %97 = load i32, i32* @B43_PHY_GTABCTL, align 4
  %98 = call i32 @b43_phy_write(%struct.b43_wldev* %96, i32 %97, i32 12576)
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %100 = load i32, i32* @B43_PHY_GTABDATA, align 4
  %101 = call i32 @b43_phy_write(%struct.b43_wldev* %99, i32 %100, i32 50304)
  br label %102

102:                                              ; preds = %95, %88
  ret void
}

declare dso_local i32 @b43_ofdmtab_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_PHY_EXTG(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
