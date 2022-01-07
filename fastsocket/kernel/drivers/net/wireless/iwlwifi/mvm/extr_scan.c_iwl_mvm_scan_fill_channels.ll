; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_fill_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_fill_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_scan_cmd = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_scan_request = type { %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.iwl_scan_channel = type { i8*, i8*, i8*, i32, i8* }

@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@SCAN_CHANNEL_TYPE_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_scan_cmd*, %struct.cfg80211_scan_request*)* @iwl_mvm_scan_fill_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_scan_fill_channels(%struct.iwl_scan_cmd* %0, %struct.cfg80211_scan_request* %1) #0 {
  %3 = alloca %struct.iwl_scan_cmd*, align 8
  %4 = alloca %struct.cfg80211_scan_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_scan_channel*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_scan_cmd* %0, %struct.iwl_scan_cmd** %3, align 8
  store %struct.cfg80211_scan_request* %1, %struct.cfg80211_scan_request** %4, align 8
  %9 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %10 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %11, i64 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @iwl_mvm_get_passive_dwell(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %18 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %25 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @iwl_mvm_get_active_dwell(i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le16_to_cpu(i32 %34)
  %36 = add nsw i64 %30, %35
  %37 = inttoptr i64 %36 to %struct.iwl_scan_channel*
  store %struct.iwl_scan_channel* %37, %struct.iwl_scan_channel** %7, align 8
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %99, %2
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %102

44:                                               ; preds = %38
  %45 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %46 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %7, align 8
  %56 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %58 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @BIT(i32 %59)
  %61 = sub nsw i64 %60, 1
  %62 = call i32 @cpu_to_le32(i64 %61)
  %63 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %7, align 8
  %64 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %66 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %67, i64 %69
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %44
  %78 = load i64, i64* @SCAN_CHANNEL_TYPE_ACTIVE, align 8
  %79 = xor i64 %78, -1
  %80 = call i32 @cpu_to_le32(i64 %79)
  %81 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %7, align 8
  %82 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %77, %44
  %86 = load i32, i32* %6, align 4
  %87 = call i8* @cpu_to_le16(i32 %86)
  %88 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %7, align 8
  %89 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %7, align 8
  %93 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = call i8* @cpu_to_le16(i32 1)
  %95 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %7, align 8
  %96 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %7, align 8
  %98 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %97, i32 1
  store %struct.iwl_scan_channel* %98, %struct.iwl_scan_channel** %7, align 8
  br label %99

99:                                               ; preds = %85
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %38

102:                                              ; preds = %38
  ret void
}

declare dso_local i32 @iwl_mvm_get_passive_dwell(i32) #1

declare dso_local i32 @iwl_mvm_get_active_dwell(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
