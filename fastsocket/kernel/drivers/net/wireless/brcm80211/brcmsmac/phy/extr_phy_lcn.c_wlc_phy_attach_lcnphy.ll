; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_attach_lcnphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_attach_lcnphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BFL_NOPA = common dso_local global i32 0, align 4
@wlc_phy_init_lcnphy = common dso_local global i32 0, align 4
@wlc_phy_cal_init_lcnphy = common dso_local global i32 0, align 4
@wlc_phy_chanspec_set_lcnphy = common dso_local global i32 0, align 4
@wlc_phy_txpower_recalc_target_lcnphy = common dso_local global i32 0, align 4
@wlc_lcnphy_get_tx_iqcc = common dso_local global i32 0, align 4
@wlc_lcnphy_set_tx_iqcc = common dso_local global i32 0, align 4
@wlc_lcnphy_get_tx_locc = common dso_local global i32 0, align 4
@wlc_lcnphy_get_radio_loft = common dso_local global i32 0, align 4
@wlc_phy_detach_lcnphy = common dso_local global i32 0, align 4
@BFL_FEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_attach_lcnphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.brcms_phy_lcnphy* @kzalloc(i32 16, i32 %5)
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.brcms_phy_lcnphy* %6, %struct.brcms_phy_lcnphy** %9, align 8
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %12, align 8
  %14 = icmp eq %struct.brcms_phy_lcnphy* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %122

16:                                               ; preds = %1
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %19, align 8
  store %struct.brcms_phy_lcnphy* %20, %struct.brcms_phy_lcnphy** %4, align 8
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %22 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %21, i32 0, i32 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BFL_NOPA, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 0, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %16
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %33 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %16
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %36 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %35, i32 0, i32 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @si_pmu_alp_clock(i32 %39)
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %4, align 8
  %44 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @wlc_phy_init_lcnphy, align 4
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %47 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 8
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @wlc_phy_cal_init_lcnphy, align 4
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %51 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 7
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @wlc_phy_chanspec_set_lcnphy, align 4
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %55 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 6
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @wlc_phy_txpower_recalc_target_lcnphy, align 4
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %59 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @wlc_lcnphy_get_tx_iqcc, align 4
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %63 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @wlc_lcnphy_set_tx_iqcc, align 4
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %67 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @wlc_lcnphy_get_tx_locc, align 4
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @wlc_lcnphy_get_radio_loft, align 4
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %75 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @wlc_phy_detach_lcnphy, align 4
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %79 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %82 = call i32 @wlc_phy_txpwr_srom_read_lcnphy(%struct.brcms_phy* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %122

85:                                               ; preds = %34
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %87 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %86, i32 0, i32 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BFL_FEM, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %85
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %96 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @LCNREV_IS(i32 %98, i32 1)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %94
  %102 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %4, align 8
  %103 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %108 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %110 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %112 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %111, i32 0, i32 2
  store i32 0, i32* %112, align 8
  br label %120

113:                                              ; preds = %101
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %115 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %117 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %119 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %118, i32 0, i32 2
  store i32 1, i32* %119, align 8
  br label %120

120:                                              ; preds = %113, %106
  br label %121

121:                                              ; preds = %120, %94, %85
  store i32 1, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %84, %15
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.brcms_phy_lcnphy* @kzalloc(i32, i32) #1

declare dso_local i32 @si_pmu_alp_clock(i32) #1

declare dso_local i32 @wlc_phy_txpwr_srom_read_lcnphy(%struct.brcms_phy*) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
