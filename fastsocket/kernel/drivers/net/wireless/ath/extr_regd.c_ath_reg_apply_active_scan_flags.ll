; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_regd.c_ath_reg_apply_active_scan_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_regd.c_ath_reg_apply_active_scan_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211_reg_rule = type { i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@NL80211_RRF_PASSIVE_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, i32)* @ath_reg_apply_active_scan_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_reg_apply_active_scan_flags(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ieee80211_reg_rule*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %9 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %9, align 8
  %11 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %12 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, i64 %11
  %13 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  store %struct.ieee80211_supported_band* %13, %struct.ieee80211_supported_band** %5, align 8
  %14 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %15 = icmp ne %struct.ieee80211_supported_band* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %130

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %23, align 8
  %25 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %24, i64 11
  store %struct.ieee80211_channel* %25, %struct.ieee80211_channel** %6, align 8
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %21
  %40 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %40, i32 0, i32 0
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %41, align 8
  %43 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %42, i64 12
  store %struct.ieee80211_channel* %43, %struct.ieee80211_channel** %6, align 8
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %39
  br label %130

58:                                               ; preds = %17
  %59 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %59, i32 0, i32 0
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %60, align 8
  %62 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %61, i64 11
  store %struct.ieee80211_channel* %62, %struct.ieee80211_channel** %6, align 8
  %63 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy* %63, i32 %66)
  store %struct.ieee80211_reg_rule* %67, %struct.ieee80211_reg_rule** %7, align 8
  %68 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %69 = call i32 @IS_ERR(%struct.ieee80211_reg_rule* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %94, label %71

71:                                               ; preds = %58
  %72 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NL80211_RRF_PASSIVE_SCAN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %71
  %79 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %89 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %78
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93, %58
  %95 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %96 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %95, i32 0, i32 0
  %97 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %96, align 8
  %98 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %97, i64 12
  store %struct.ieee80211_channel* %98, %struct.ieee80211_channel** %6, align 8
  %99 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %100 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %101 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy* %99, i32 %102)
  store %struct.ieee80211_reg_rule* %103, %struct.ieee80211_reg_rule** %7, align 8
  %104 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %105 = call i32 @IS_ERR(%struct.ieee80211_reg_rule* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %130, label %107

107:                                              ; preds = %94
  %108 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %109 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @NL80211_RRF_PASSIVE_SCAN, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %107
  %115 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %116 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %125 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %121, %114
  br label %129

129:                                              ; preds = %128, %107
  br label %130

130:                                              ; preds = %16, %57, %129, %94
  ret void
}

declare dso_local %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy*, i32) #1

declare dso_local i32 @IS_ERR(%struct.ieee80211_reg_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
