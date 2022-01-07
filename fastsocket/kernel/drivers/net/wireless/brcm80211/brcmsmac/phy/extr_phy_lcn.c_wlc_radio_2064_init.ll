; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_radio_2064_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_radio_2064_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcnphy_radio_regs = type { i32, i64, i64, i64, i64 }
%struct.brcms_phy = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@lcnphy_radio_regs_2064 = common dso_local global %struct.lcnphy_radio_regs* null, align 8
@RADIO_DEFAULT_CORE = common dso_local global i32 0, align 4
@RADIO_2064_REG032 = common dso_local global i32 0, align 4
@RADIO_2064_REG033 = common dso_local global i32 0, align 4
@RADIO_2064_REG090 = common dso_local global i32 0, align 4
@RADIO_2064_REG010 = common dso_local global i32 0, align 4
@RADIO_2064_REG060 = common dso_local global i32 0, align 4
@RADIO_2064_REG061 = common dso_local global i32 0, align 4
@RADIO_2064_REG062 = common dso_local global i32 0, align 4
@RADIO_2064_REG01D = common dso_local global i32 0, align 4
@RADIO_2064_REG01E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_radio_2064_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_radio_2064_init(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.lcnphy_radio_regs*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store %struct.lcnphy_radio_regs* null, %struct.lcnphy_radio_regs** %4, align 8
  %5 = load %struct.lcnphy_radio_regs*, %struct.lcnphy_radio_regs** @lcnphy_radio_regs_2064, align 8
  store %struct.lcnphy_radio_regs* %5, %struct.lcnphy_radio_regs** %4, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %69, %1
  %7 = load %struct.lcnphy_radio_regs*, %struct.lcnphy_radio_regs** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %7, i64 %8
  %10 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 65535
  br i1 %12, label %13, label %72

13:                                               ; preds = %6
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %15 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @CHSPEC_IS5G(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = load %struct.lcnphy_radio_regs*, %struct.lcnphy_radio_regs** %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %20, i64 %21
  %23 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %28 = load %struct.lcnphy_radio_regs*, %struct.lcnphy_radio_regs** %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %28, i64 %29
  %31 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 16383
  %34 = load i32, i32* @RADIO_DEFAULT_CORE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.lcnphy_radio_regs*, %struct.lcnphy_radio_regs** %4, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %36, i64 %37
  %39 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @write_radio_reg(%struct.brcms_phy* %27, i32 %35, i32 %41)
  br label %68

43:                                               ; preds = %19, %13
  %44 = load %struct.lcnphy_radio_regs*, %struct.lcnphy_radio_regs** %4, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %44, i64 %45
  %47 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %52 = load %struct.lcnphy_radio_regs*, %struct.lcnphy_radio_regs** %4, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %52, i64 %53
  %55 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 16383
  %58 = load i32, i32* @RADIO_DEFAULT_CORE, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.lcnphy_radio_regs*, %struct.lcnphy_radio_regs** %4, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %60, i64 %61
  %63 = getelementptr inbounds %struct.lcnphy_radio_regs, %struct.lcnphy_radio_regs* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @write_radio_reg(%struct.brcms_phy* %51, i32 %59, i32 %65)
  br label %67

67:                                               ; preds = %50, %43
  br label %68

68:                                               ; preds = %67, %26
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %3, align 8
  br label %6

72:                                               ; preds = %6
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %74 = load i32, i32* @RADIO_2064_REG032, align 4
  %75 = call i32 @write_radio_reg(%struct.brcms_phy* %73, i32 %74, i32 98)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %77 = load i32, i32* @RADIO_2064_REG033, align 4
  %78 = call i32 @write_radio_reg(%struct.brcms_phy* %76, i32 %77, i32 25)
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %80 = load i32, i32* @RADIO_2064_REG090, align 4
  %81 = call i32 @write_radio_reg(%struct.brcms_phy* %79, i32 %80, i32 16)
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %83 = load i32, i32* @RADIO_2064_REG010, align 4
  %84 = call i32 @write_radio_reg(%struct.brcms_phy* %82, i32 %83, i32 0)
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %86 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @LCNREV_IS(i32 %88, i32 1)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %72
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %93 = load i32, i32* @RADIO_2064_REG060, align 4
  %94 = call i32 @write_radio_reg(%struct.brcms_phy* %92, i32 %93, i32 127)
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %96 = load i32, i32* @RADIO_2064_REG061, align 4
  %97 = call i32 @write_radio_reg(%struct.brcms_phy* %95, i32 %96, i32 114)
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %99 = load i32, i32* @RADIO_2064_REG062, align 4
  %100 = call i32 @write_radio_reg(%struct.brcms_phy* %98, i32 %99, i32 127)
  br label %101

101:                                              ; preds = %91, %72
  %102 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %103 = load i32, i32* @RADIO_2064_REG01D, align 4
  %104 = call i32 @write_radio_reg(%struct.brcms_phy* %102, i32 %103, i32 2)
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %106 = load i32, i32* @RADIO_2064_REG01E, align 4
  %107 = call i32 @write_radio_reg(%struct.brcms_phy* %105, i32 %106, i32 6)
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %109 = call i32 @mod_phy_reg(%struct.brcms_phy* %108, i32 1258, i32 7, i32 0)
  %110 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %111 = call i32 @mod_phy_reg(%struct.brcms_phy* %110, i32 1258, i32 56, i32 8)
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %113 = call i32 @mod_phy_reg(%struct.brcms_phy* %112, i32 1258, i32 448, i32 128)
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %115 = call i32 @mod_phy_reg(%struct.brcms_phy* %114, i32 1258, i32 3584, i32 1536)
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %117 = call i32 @mod_phy_reg(%struct.brcms_phy* %116, i32 1258, i32 28672, i32 16384)
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %119 = call i32 @write_phy_reg(%struct.brcms_phy* %118, i32 1258, i32 18056)
  %120 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %121 = call i32 @mod_phy_reg(%struct.brcms_phy* %120, i32 1259, i32 7, i32 2)
  %122 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %123 = call i32 @mod_phy_reg(%struct.brcms_phy* %122, i32 1259, i32 448, i32 0)
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %125 = call i32 @mod_phy_reg(%struct.brcms_phy* %124, i32 1130, i32 65535, i32 25)
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %127 = call i32 @wlc_lcnphy_set_tx_locc(%struct.brcms_phy* %126, i32 0)
  %128 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %129 = call i32 @wlc_lcnphy_rcal(%struct.brcms_phy* %128)
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %131 = call i32 @wlc_lcnphy_rc_cal(%struct.brcms_phy* %130)
  ret void
}

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_locc(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_rcal(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_rc_cal(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
