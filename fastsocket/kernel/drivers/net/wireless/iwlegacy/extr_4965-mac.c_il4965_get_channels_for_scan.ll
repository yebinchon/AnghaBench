; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_get_channels_for_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_get_channels_for_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_channel** }
%struct.ieee80211_channel = type { i32, i64, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.il_scan_channel = type { i32, i32, i32, i8*, i8*, i8* }
%struct.ieee80211_supported_band = type { i32 }
%struct.il_channel_info = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Channel %d is INVALID for this band.\0A\00", align 1
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@SCAN_CHANNEL_TYPE_PASSIVE = common dso_local global i32 0, align 4
@SCAN_CHANNEL_TYPE_ACTIVE = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Scanning ch=%d prob=0x%X [%s %d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"PASSIVE\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"total channels to scan %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.ieee80211_vif*, i32, i64, i64, %struct.il_scan_channel*)* @il4965_get_channels_for_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_get_channels_for_scan(%struct.il_priv* %0, %struct.ieee80211_vif* %1, i32 %2, i64 %3, i64 %4, %struct.il_scan_channel* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.il_priv*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.il_scan_channel*, align 8
  %14 = alloca %struct.ieee80211_channel*, align 8
  %15 = alloca %struct.ieee80211_supported_band*, align 8
  %16 = alloca %struct.il_channel_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %8, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.il_scan_channel* %5, %struct.il_scan_channel** %13, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %22 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.ieee80211_supported_band* @il_get_hw_mode(%struct.il_priv* %22, i32 %23)
  store %struct.ieee80211_supported_band* %24, %struct.ieee80211_supported_band** %15, align 8
  %25 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %26 = icmp ne %struct.ieee80211_supported_band* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %178

28:                                               ; preds = %6
  %29 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i64, i64* %12, align 8
  %32 = call i64 @il_get_active_dwell_time(%struct.il_priv* %29, i32 %30, i64 %31)
  store i64 %32, i64* %18, align 8
  %33 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %36 = call i64 @il_get_passive_dwell_time(%struct.il_priv* %33, i32 %34, %struct.ieee80211_vif* %35)
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %17, align 8
  %38 = load i64, i64* %18, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i64, i64* %18, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %17, align 8
  br label %43

43:                                               ; preds = %40, %28
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %171, %43
  %45 = load i32, i32* %20, align 4
  %46 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %174

52:                                               ; preds = %44
  %53 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %54 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %56, align 8
  %58 = load i32, i32* %20, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %57, i64 %59
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %60, align 8
  store %struct.ieee80211_channel* %61, %struct.ieee80211_channel** %14, align 8
  %62 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %63 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %171

68:                                               ; preds = %52
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %70 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %21, align 8
  %72 = load i64, i64* %21, align 8
  %73 = call i8* @cpu_to_le16(i64 %72)
  %74 = load %struct.il_scan_channel*, %struct.il_scan_channel** %13, align 8
  %75 = getelementptr inbounds %struct.il_scan_channel, %struct.il_scan_channel* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i64, i64* %21, align 8
  %79 = call %struct.il_channel_info* @il_get_channel_info(%struct.il_priv* %76, i32 %77, i64 %78)
  store %struct.il_channel_info* %79, %struct.il_channel_info** %16, align 8
  %80 = load %struct.il_channel_info*, %struct.il_channel_info** %16, align 8
  %81 = call i32 @il_is_channel_valid(%struct.il_channel_info* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %68
  %84 = load i64, i64* %21, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 (i8*, i32, ...) @D_SCAN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %171

87:                                               ; preds = %68
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load %struct.il_channel_info*, %struct.il_channel_info** %16, align 8
  %92 = call i64 @il_is_channel_passive(%struct.il_channel_info* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %96 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94, %90, %87
  %102 = load i32, i32* @SCAN_CHANNEL_TYPE_PASSIVE, align 4
  %103 = load %struct.il_scan_channel*, %struct.il_scan_channel** %13, align 8
  %104 = getelementptr inbounds %struct.il_scan_channel, %struct.il_scan_channel* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %109

105:                                              ; preds = %94
  %106 = load i32, i32* @SCAN_CHANNEL_TYPE_ACTIVE, align 4
  %107 = load %struct.il_scan_channel*, %struct.il_scan_channel** %13, align 8
  %108 = getelementptr inbounds %struct.il_scan_channel, %struct.il_scan_channel* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i64, i64* %12, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @IL_SCAN_PROBE_MASK(i64 %113)
  %115 = load %struct.il_scan_channel*, %struct.il_scan_channel** %13, align 8
  %116 = getelementptr inbounds %struct.il_scan_channel, %struct.il_scan_channel* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %112, %109
  %120 = load i64, i64* %18, align 8
  %121 = call i8* @cpu_to_le16(i64 %120)
  %122 = load %struct.il_scan_channel*, %struct.il_scan_channel** %13, align 8
  %123 = getelementptr inbounds %struct.il_scan_channel, %struct.il_scan_channel* %122, i32 0, i32 4
  store i8* %121, i8** %123, align 8
  %124 = load i64, i64* %17, align 8
  %125 = call i8* @cpu_to_le16(i64 %124)
  %126 = load %struct.il_scan_channel*, %struct.il_scan_channel** %13, align 8
  %127 = getelementptr inbounds %struct.il_scan_channel, %struct.il_scan_channel* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  %128 = load %struct.il_scan_channel*, %struct.il_scan_channel** %13, align 8
  %129 = getelementptr inbounds %struct.il_scan_channel, %struct.il_scan_channel* %128, i32 0, i32 1
  store i32 110, i32* %129, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %119
  %134 = load %struct.il_scan_channel*, %struct.il_scan_channel** %13, align 8
  %135 = getelementptr inbounds %struct.il_scan_channel, %struct.il_scan_channel* %134, i32 0, i32 2
  store i32 59, i32* %135, align 8
  br label %139

136:                                              ; preds = %119
  %137 = load %struct.il_scan_channel*, %struct.il_scan_channel** %13, align 8
  %138 = getelementptr inbounds %struct.il_scan_channel, %struct.il_scan_channel* %137, i32 0, i32 2
  store i32 40, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i64, i64* %21, align 8
  %141 = trunc i64 %140 to i32
  %142 = load %struct.il_scan_channel*, %struct.il_scan_channel** %13, align 8
  %143 = getelementptr inbounds %struct.il_scan_channel, %struct.il_scan_channel* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @le32_to_cpu(i32 %144)
  %146 = load %struct.il_scan_channel*, %struct.il_scan_channel** %13, align 8
  %147 = getelementptr inbounds %struct.il_scan_channel, %struct.il_scan_channel* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @SCAN_CHANNEL_TYPE_ACTIVE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %154 = load %struct.il_scan_channel*, %struct.il_scan_channel** %13, align 8
  %155 = getelementptr inbounds %struct.il_scan_channel, %struct.il_scan_channel* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @SCAN_CHANNEL_TYPE_ACTIVE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %139
  %161 = load i64, i64* %18, align 8
  br label %164

162:                                              ; preds = %139
  %163 = load i64, i64* %17, align 8
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i64 [ %161, %160 ], [ %163, %162 ]
  %166 = call i32 (i8*, i32, ...) @D_SCAN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 %145, i8* %153, i64 %165)
  %167 = load %struct.il_scan_channel*, %struct.il_scan_channel** %13, align 8
  %168 = getelementptr inbounds %struct.il_scan_channel, %struct.il_scan_channel* %167, i32 1
  store %struct.il_scan_channel* %168, %struct.il_scan_channel** %13, align 8
  %169 = load i32, i32* %19, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %19, align 4
  br label %171

171:                                              ; preds = %164, %83, %67
  %172 = load i32, i32* %20, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %20, align 4
  br label %44

174:                                              ; preds = %44
  %175 = load i32, i32* %19, align 4
  %176 = call i32 (i8*, i32, ...) @D_SCAN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %19, align 4
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %174, %27
  %179 = load i32, i32* %7, align 4
  ret i32 %179
}

declare dso_local %struct.ieee80211_supported_band* @il_get_hw_mode(%struct.il_priv*, i32) #1

declare dso_local i64 @il_get_active_dwell_time(%struct.il_priv*, i32, i64) #1

declare dso_local i64 @il_get_passive_dwell_time(%struct.il_priv*, i32, %struct.ieee80211_vif*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local %struct.il_channel_info* @il_get_channel_info(%struct.il_priv*, i32, i64) #1

declare dso_local i32 @il_is_channel_valid(%struct.il_channel_info*) #1

declare dso_local i32 @D_SCAN(i8*, i32, ...) #1

declare dso_local i64 @il_is_channel_passive(%struct.il_channel_info*) #1

declare dso_local i32 @IL_SCAN_PROBE_MASK(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
