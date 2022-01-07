; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_lo.c_lo_measure_feedthrough.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_lo.c_lo_measure_feedthrough.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__*, %struct.b43_phy }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.b43_phy = type { i32, i64 }

@B43_PHY_RFOVERVAL_LNA_SHIFT = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL_PGA_SHIFT = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL_LNA = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL_PGA = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL_TRSWRX = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL_BW = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL_UNK = common dso_local global i32 0, align 4
@B43_BFL_EXTLNA = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL_EXTLNA = common dso_local global i32 0, align 4
@B43_PHY_PGACTL = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL_BW_LBW = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL_BW_LPF = common dso_local global i32 0, align 4
@B43_PHY_PGACTL_UNKNOWN = common dso_local global i32 0, align 4
@B43_PHY_PGACTL_LOWBANDW = common dso_local global i32 0, align 4
@B43_PHY_PGACTL_LPF = common dso_local global i32 0, align 4
@B43_PHY_LO_LEAKAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32, i32, i32)* @lo_measure_feedthrough to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lo_measure_feedthrough(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43_phy*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 1
  store %struct.b43_phy* %13, %struct.b43_phy** %9, align 8
  %14 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %97

18:                                               ; preds = %4
  %19 = load i32, i32* @B43_PHY_RFOVERVAL_LNA_SHIFT, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @B43_PHY_RFOVERVAL_PGA_SHIFT, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @B43_PHY_RFOVERVAL_LNA, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @B43_WARN_ON(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @B43_PHY_RFOVERVAL_PGA, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i32 @B43_WARN_ON(i32 %33)
  %35 = load i32, i32* @B43_PHY_RFOVERVAL_TRSWRX, align 4
  %36 = load i32, i32* @B43_PHY_RFOVERVAL_BW, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @B43_PHY_RFOVERVAL_UNK, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %51 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @B43_BFL_EXTLNA, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %18
  %61 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %62 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 6
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @B43_PHY_RFOVERVAL_EXTLNA, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %60, %18
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %71 = load i32, i32* @B43_PHY_PGACTL, align 4
  %72 = call i32 @b43_phy_write(%struct.b43_wldev* %70, i32 %71, i32 58112)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %74 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @b43_phy_write(%struct.b43_wldev* %73, i32 %74, i32 %75)
  %77 = call i32 @udelay(i32 10)
  %78 = load i32, i32* @B43_PHY_RFOVERVAL_BW_LBW, align 4
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %82 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @b43_phy_write(%struct.b43_wldev* %81, i32 %82, i32 %83)
  %85 = call i32 @udelay(i32 10)
  %86 = load i32, i32* @B43_PHY_RFOVERVAL_BW_LPF, align 4
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %90 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @b43_phy_write(%struct.b43_wldev* %89, i32 %90, i32 %91)
  %93 = call i32 @udelay(i32 10)
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %95 = load i32, i32* @B43_PHY_PGACTL, align 4
  %96 = call i32 @b43_phy_write(%struct.b43_wldev* %94, i32 %95, i32 62208)
  br label %121

97:                                               ; preds = %4
  %98 = load i32, i32* @B43_PHY_PGACTL_UNKNOWN, align 4
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %102 = load i32, i32* @B43_PHY_PGACTL, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @b43_phy_write(%struct.b43_wldev* %101, i32 %102, i32 %103)
  %105 = call i32 @udelay(i32 10)
  %106 = load i32, i32* @B43_PHY_PGACTL_LOWBANDW, align 4
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %110 = load i32, i32* @B43_PHY_PGACTL, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @b43_phy_write(%struct.b43_wldev* %109, i32 %110, i32 %111)
  %113 = call i32 @udelay(i32 10)
  %114 = load i32, i32* @B43_PHY_PGACTL_LPF, align 4
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %118 = load i32, i32* @B43_PHY_PGACTL, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @b43_phy_write(%struct.b43_wldev* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %97, %69
  %122 = call i32 @udelay(i32 21)
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %124 = load i32, i32* @B43_PHY_LO_LEAKAGE, align 4
  %125 = call i32 @b43_phy_read(%struct.b43_wldev* %123, i32 %124)
  store i32 %125, i32* %11, align 4
  %126 = call i32 (...) @cond_resched()
  %127 = load i32, i32* %11, align 4
  ret i32 %127
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
