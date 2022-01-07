; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_sromlimit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_sromlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i32, i32*, i32*, i32*, i32*, i32* }

@BRCMS_TXPWR_DB_FACTOR = common dso_local global i32 0, align 4
@TXP_FIRST_CCK = common dso_local global i32 0, align 4
@CH_MAX_2G_CHANNEL = common dso_local global i64 0, align 8
@BRCMS_TXPWR_MAX = common dso_local global i32 0, align 4
@TXP_FIRST_OFDM = common dso_local global i32 0, align 4
@chan_info_all = common dso_local global %struct.TYPE_3__* null, align 8
@FIRST_MID_5G_CHAN = common dso_local global i64 0, align 8
@LAST_MID_5G_CHAN = common dso_local global i64 0, align 8
@FIRST_HIGH_5G_CHAN = common dso_local global i64 0, align 8
@LAST_HIGH_5G_CHAN = common dso_local global i64 0, align 8
@FIRST_LOW_5G_CHAN = common dso_local global i64 0, align 8
@LAST_LOW_5G_CHAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpower_sromlimit(%struct.brcms_phy_pub* %0, i64 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.brcms_phy_pub*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.brcms_phy*, align 8
  %12 = alloca i64, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %6, align 8
  %14 = bitcast %struct.brcms_phy_pub* %13 to %struct.brcms_phy*
  store %struct.brcms_phy* %14, %struct.brcms_phy** %11, align 8
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %11, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BRCMS_TXPWR_DB_FACTOR, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %11, align 8
  %22 = call i64 @ISNPHY(%struct.brcms_phy* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @TXP_FIRST_CCK, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %11, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @wlc_phy_txpower_sromlimit_get_nphy(%struct.brcms_phy* %30, i64 %31, i32* %32, i32 %33)
  br label %146

35:                                               ; preds = %5
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @CH_MAX_2G_CHANNEL, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @TXP_FIRST_CCK, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %11, align 8
  %46 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %145

53:                                               ; preds = %35
  %54 = load i32, i32* @BRCMS_TXPWR_MAX, align 4
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @TXP_FIRST_OFDM, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %58, %53
  store i64 0, i64* %12, align 8
  br label %61

61:                                               ; preds = %76, %60
  %62 = load i64, i64* %12, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chan_info_all, align 8
  %64 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %63)
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chan_info_all, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %67, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %79

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %12, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %12, align 8
  br label %61

79:                                               ; preds = %74, %61
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %11, align 8
  %81 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %11, align 8
  %86 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  br label %144

92:                                               ; preds = %79
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @FIRST_MID_5G_CHAN, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* @LAST_MID_5G_CHAN, align 8
  %99 = icmp sle i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %11, align 8
  %102 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %100, %96, %92
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* @FIRST_HIGH_5G_CHAN, align 8
  %112 = icmp sge i64 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* @LAST_HIGH_5G_CHAN, align 8
  %116 = icmp sle i64 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %11, align 8
  %119 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %117, %113, %109
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* @FIRST_LOW_5G_CHAN, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %126
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* @LAST_LOW_5G_CHAN, align 8
  %133 = icmp sle i64 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load %struct.brcms_phy*, %struct.brcms_phy** %11, align 8
  %136 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %135, i32 0, i32 5
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %134, %130, %126
  br label %144

144:                                              ; preds = %143, %84
  br label %145

145:                                              ; preds = %144, %44
  br label %146

146:                                              ; preds = %145, %29
  ret void
}

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_txpower_sromlimit_get_nphy(%struct.brcms_phy*, i64, i32*, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
