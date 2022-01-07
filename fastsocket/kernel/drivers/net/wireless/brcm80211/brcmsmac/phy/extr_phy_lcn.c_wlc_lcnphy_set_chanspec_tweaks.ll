; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_chanspec_tweaks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_chanspec_tweaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32)* @wlc_lcnphy_set_chanspec_tweaks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_set_chanspec_tweaks(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @CHSPEC_CHANNEL(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %11, align 8
  store %struct.brcms_phy_lcnphy* %12, %struct.brcms_phy_lcnphy** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 14
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %17 = call i32 @mod_phy_reg(%struct.brcms_phy* %16, i32 1096, i32 768, i32 512)
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = call i32 @mod_phy_reg(%struct.brcms_phy* %19, i32 1096, i32 768, i32 256)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %23 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %22, i32 0, i32 0
  store i32 2, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %28 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %27, i32 0, i32 0
  store i32 4, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %53, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 9
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 11
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 12
  br i1 %52, label %53, label %88

53:                                               ; preds = %50, %47, %44, %41, %38, %35, %32, %29
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %55 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @si_pmu_pllcontrol(i32 %58, i32 2, i32 -1, i32 50334724)
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @si_pmu_pllcontrol(i32 %64, i32 3, i32 16777215, i32 0)
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %67 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @si_pmu_pllcontrol(i32 %70, i32 4, i32 -1, i32 536872384)
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %73 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @si_pmu_pllupd(i32 %76)
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %79 = call i32 @write_phy_reg(%struct.brcms_phy* %78, i32 2370, i32 0)
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %81 = call i32 @wlc_lcnphy_txrx_spur_avoidance_mode(%struct.brcms_phy* %80, i32 0)
  %82 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %83 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %85 = call i32 @mod_phy_reg(%struct.brcms_phy* %84, i32 1060, i32 65280, i32 6912)
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %87 = call i32 @write_phy_reg(%struct.brcms_phy* %86, i32 1061, i32 22791)
  br label %123

88:                                               ; preds = %50
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %90 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @si_pmu_pllcontrol(i32 %93, i32 2, i32 -1, i32 51645444)
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %96 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @si_pmu_pllcontrol(i32 %99, i32 3, i32 16777215, i32 3355443)
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %102 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @si_pmu_pllcontrol(i32 %105, i32 4, i32 -1, i32 539764768)
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %108 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @si_pmu_pllupd(i32 %111)
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %114 = call i32 @write_phy_reg(%struct.brcms_phy* %113, i32 2370, i32 0)
  %115 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %116 = call i32 @wlc_lcnphy_txrx_spur_avoidance_mode(%struct.brcms_phy* %115, i32 1)
  %117 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %118 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %120 = call i32 @mod_phy_reg(%struct.brcms_phy* %119, i32 1060, i32 65280, i32 7936)
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %122 = call i32 @write_phy_reg(%struct.brcms_phy* %121, i32 1061, i32 22794)
  br label %123

123:                                              ; preds = %88, %53
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %125 = call i32 @or_phy_reg(%struct.brcms_phy* %124, i32 1098, i32 68)
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %127 = call i32 @write_phy_reg(%struct.brcms_phy* %126, i32 1098, i32 128)
  ret void
}

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @si_pmu_pllcontrol(i32, i32, i32, i32) #1

declare dso_local i32 @si_pmu_pllupd(i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_txrx_spur_avoidance_mode(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
