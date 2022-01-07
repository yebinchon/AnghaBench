; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_cfg.c_orinoco_wiphy_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_cfg.c_orinoco_wiphy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32, i32, i32, i64, i32, i32*, i32, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.orinoco_private = type { i64, i32, i32, i32, i64, i32, i32, i32*, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@FIRMWARE_TYPE_AGERE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@force_monitor = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@orinoco_rates = common dso_local global i32 0, align 4
@NUM_CHANNELS = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@CFG80211_SIGNAL_TYPE_MBM = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orinoco_wiphy_register(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.orinoco_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %6 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %7 = call %struct.orinoco_private* @wiphy_priv(%struct.wiphy* %6)
  store %struct.orinoco_private* %7, %struct.orinoco_private** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %9 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FIRMWARE_TYPE_AGERE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %15 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %18 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %23 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %25 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %24, i32 0, i32 14
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %32 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %28, %19
  %36 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %37 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64, i64* @force_monitor, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40, %35
  %44 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %47 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %40
  %51 = load i32, i32* @orinoco_rates, align 4
  %52 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %53 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %52, i32 0, i32 11
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @orinoco_rates, align 4
  %56 = call i32 @ARRAY_SIZE(i32 %55)
  %57 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %58 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %57, i32 0, i32 11
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %86, %50
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @NUM_CHANNELS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %66 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = shl i32 1, %68
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 @ieee80211_dsss_chan_to_freq(i32 %74)
  %76 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %77 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %76, i32 0, i32 12
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %75, i32* %82, align 4
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %72, %64
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %60

89:                                               ; preds = %60
  %90 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %91 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %90, i32 0, i32 12
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = ptrtoint %struct.TYPE_3__* %92 to i32
  %94 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %95 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %94, i32 0, i32 11
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %99 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %98, i32 0, i32 11
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %102 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %101, i32 0, i32 11
  %103 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %104 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %103, i32 0, i32 8
  %105 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %104, align 8
  %106 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %105, i64 %106
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %107, align 8
  %108 = load i32, i32* @CFG80211_SIGNAL_TYPE_MBM, align 4
  %109 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %110 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 8
  store i32 0, i32* %4, align 4
  %111 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %112 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %111, i32 0, i32 10
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %140

115:                                              ; preds = %89
  %116 = load i32, i32* @WLAN_CIPHER_SUITE_WEP40, align 4
  %117 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %118 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %117, i32 0, i32 7
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  %125 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %126 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %125, i32 0, i32 9
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %115
  %130 = load i32, i32* @WLAN_CIPHER_SUITE_WEP104, align 4
  %131 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %132 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %131, i32 0, i32 7
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %130, i32* %136, align 4
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %129, %115
  br label %140

140:                                              ; preds = %139, %89
  %141 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %142 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %141, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %140
  %146 = load i32, i32* @WLAN_CIPHER_SUITE_TKIP, align 4
  %147 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %148 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %147, i32 0, i32 7
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %145, %140
  %156 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %157 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %156, i32 0, i32 7
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %160 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %159, i32 0, i32 6
  store i32* %158, i32** %160, align 8
  %161 = load i32, i32* %4, align 4
  %162 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %163 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %165 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %168 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  %169 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %170 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %155
  %174 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %175 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 1
  %178 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %179 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %178, i32 0, i32 4
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %173, %155
  %181 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %182 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %185 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %187 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %190 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %192 = call i32 @wiphy_register(%struct.wiphy* %191)
  ret i32 %192
}

declare dso_local %struct.orinoco_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ieee80211_dsss_chan_to_freq(i32) #1

declare dso_local i32 @wiphy_register(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
