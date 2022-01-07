; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_chanspec_band_firstch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_chanspec_band_firstch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i64, i64 }

@chan_info_all = common dso_local global %struct.TYPE_3__* null, align 8
@WL_CHANSPEC_BW_40 = common dso_local global i64 0, align 8
@CH_10MHZ_APART = common dso_local global i64 0, align 8
@WL_CHANSPEC_CTL_SB_LOWER = common dso_local global i64 0, align 8
@BRCM_BAND_2G = common dso_local global i64 0, align 8
@WL_CHANSPEC_BAND_2G = common dso_local global i64 0, align 8
@WL_CHANSPEC_BAND_5G = common dso_local global i64 0, align 8
@FIRST_REF5_CHANNUM = common dso_local global i64 0, align 8
@LAST_REF5_CHANNUM = common dso_local global i64 0, align 8
@CH_MAX_2G_CHANNEL = common dso_local global i64 0, align 8
@BRCM_BAND_5G = common dso_local global i64 0, align 8
@INVCHANSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wlc_phy_chanspec_band_firstch(%struct.brcms_phy_pub* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.brcms_phy_pub*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.brcms_phy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %4, align 8
  %12 = bitcast %struct.brcms_phy_pub* %11 to %struct.brcms_phy*
  store %struct.brcms_phy* %12, %struct.brcms_phy** %6, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %116, %2
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chan_info_all, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %15)
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %119

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chan_info_all, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %25 = call i64 @ISNPHY(%struct.brcms_phy* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %80

27:                                               ; preds = %18
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @WL_CHANSPEC_BW_40, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %27
  store i64 0, i64* %10, align 8
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chan_info_all, align 8
  %37 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %36)
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chan_info_all, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @CH_10MHZ_APART, align 8
  %47 = add i64 %45, %46
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %54

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %34

54:                                               ; preds = %49, %34
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chan_info_all, align 8
  %57 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %56)
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %116

60:                                               ; preds = %54
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @upper_20_sb(i64 %61)
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @WL_CHANSPEC_BW_40, align 8
  %65 = or i64 %63, %64
  %66 = load i64, i64* @WL_CHANSPEC_CTL_SB_LOWER, align 8
  %67 = or i64 %65, %66
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @BRCM_BAND_2G, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load i64, i64* @WL_CHANSPEC_BAND_2G, align 8
  %73 = load i64, i64* %9, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %9, align 8
  br label %79

75:                                               ; preds = %60
  %76 = load i64, i64* @WL_CHANSPEC_BAND_5G, align 8
  %77 = load i64, i64* %9, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %75, %71
  br label %83

80:                                               ; preds = %27, %18
  %81 = load i64, i64* %8, align 8
  %82 = call i64 @ch20mhz_chspec(i64 %81)
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %80, %79
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %85 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @FIRST_REF5_CHANNUM, align 8
  %91 = icmp uge i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @LAST_REF5_CHANNUM, align 8
  %95 = icmp ule i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %116

97:                                               ; preds = %92, %88, %83
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @BRCM_BAND_2G, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @CH_MAX_2G_CHANNEL, align 8
  %104 = icmp ule i64 %102, %103
  br i1 %104, label %113, label %105

105:                                              ; preds = %101, %97
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @BRCM_BAND_5G, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* @CH_MAX_2G_CHANNEL, align 8
  %112 = icmp ugt i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %101
  %114 = load i64, i64* %9, align 8
  store i64 %114, i64* %3, align 8
  br label %122

115:                                              ; preds = %109, %105
  br label %116

116:                                              ; preds = %115, %96, %59
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %7, align 8
  br label %13

119:                                              ; preds = %13
  %120 = load i32, i32* @INVCHANSPEC, align 4
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %3, align 8
  br label %122

122:                                              ; preds = %119, %113
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i64 @upper_20_sb(i64) #1

declare dso_local i64 @ch20mhz_chspec(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
