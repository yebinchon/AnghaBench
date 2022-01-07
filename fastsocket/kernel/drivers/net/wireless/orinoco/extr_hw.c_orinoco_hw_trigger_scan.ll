; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hw.c_orinoco_hw_trigger_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hw.c_orinoco_hw_trigger_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i64, i32, i32, i64, %struct.hermes, %struct.net_device* }
%struct.hermes = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hermes*, i32, i32, i32, %struct.hermes_idstring*)* }
%struct.hermes_idstring = type { i32, i8* }
%struct.net_device = type { i32 }
%struct.cfg80211_ssid = type { i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@USER_BAP = common dso_local global i32 0, align 4
@HERMES_RID_CNFHOSTSCAN_SYMBOL = common dso_local global i32 0, align 4
@HERMES_HOSTSCAN_SYMBOL_ONCE = common dso_local global i32 0, align 4
@HERMES_HOSTSCAN_SYMBOL_BCAST = common dso_local global i32 0, align 4
@HERMES_RID_CNFHOSTSCAN = common dso_local global i32 0, align 4
@HERMES_RID_CNFSCANSSID_AGERE = common dso_local global i32 0, align 4
@HERMES_RID_CNFSCANCHANNELS2GHZ = common dso_local global i32 0, align 4
@HERMES_INQ_CHANNELINFO = common dso_local global i32 0, align 4
@HERMES_INQ_SCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orinoco_hw_trigger_scan(%struct.orinoco_private* %0, %struct.cfg80211_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.orinoco_private*, align 8
  %5 = alloca %struct.cfg80211_ssid*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.hermes*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i8*], align 16
  %11 = alloca %struct.hermes_idstring, align 8
  %12 = alloca i64, align 8
  store %struct.orinoco_private* %0, %struct.orinoco_private** %4, align 8
  store %struct.cfg80211_ssid* %1, %struct.cfg80211_ssid** %5, align 8
  %13 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %14 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %13, i32 0, i32 5
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %17 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %16, i32 0, i32 4
  store %struct.hermes* %17, %struct.hermes** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %19 = call i64 @orinoco_lock(%struct.orinoco_private* %18, i64* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %140

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call i32 @netif_running(%struct.net_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ENETDOWN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %136

31:                                               ; preds = %24
  %32 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %33 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %136

40:                                               ; preds = %31
  %41 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %42 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %131

45:                                               ; preds = %40
  %46 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %47 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %130 [
    i32 128, label %49
    i32 129, label %57
    i32 130, label %68
  ]

49:                                               ; preds = %45
  %50 = load %struct.hermes*, %struct.hermes** %7, align 8
  %51 = load i32, i32* @USER_BAP, align 4
  %52 = load i32, i32* @HERMES_RID_CNFHOSTSCAN_SYMBOL, align 4
  %53 = load i32, i32* @HERMES_HOSTSCAN_SYMBOL_ONCE, align 4
  %54 = load i32, i32* @HERMES_HOSTSCAN_SYMBOL_BCAST, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @hermes_write_wordrec(%struct.hermes* %50, i32 %51, i32 %52, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %130

57:                                               ; preds = %45
  %58 = call i8* @cpu_to_le16(i64 16383)
  %59 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  store i8* %58, i8** %59, align 16
  %60 = call i8* @cpu_to_le16(i64 1)
  %61 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 1
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 2
  store i8* null, i8** %62, align 16
  %63 = load %struct.hermes*, %struct.hermes** %7, align 8
  %64 = load i32, i32* @USER_BAP, align 4
  %65 = load i32, i32* @HERMES_RID_CNFHOSTSCAN, align 4
  %66 = bitcast [3 x i8*]* %10 to i8***
  %67 = call i32 @HERMES_WRITE_RECORD(%struct.hermes* %63, i32 %64, i32 %65, i8*** %66)
  store i32 %67, i32* %9, align 4
  br label %130

68:                                               ; preds = %45
  %69 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %5, align 8
  %70 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %68
  %74 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %5, align 8
  %75 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i8* @cpu_to_le16(i64 %77)
  %79 = getelementptr inbounds %struct.hermes_idstring, %struct.hermes_idstring* %11, i32 0, i32 1
  store i8* %78, i8** %79, align 8
  %80 = getelementptr inbounds %struct.hermes_idstring, %struct.hermes_idstring* %11, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %5, align 8
  %83 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @memcpy(i32 %81, i32 %84, i64 %85)
  %87 = load %struct.hermes*, %struct.hermes** %7, align 8
  %88 = getelementptr inbounds %struct.hermes, %struct.hermes* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32 (%struct.hermes*, i32, i32, i32, %struct.hermes_idstring*)*, i32 (%struct.hermes*, i32, i32, i32, %struct.hermes_idstring*)** %90, align 8
  %92 = load %struct.hermes*, %struct.hermes** %7, align 8
  %93 = load i32, i32* @USER_BAP, align 4
  %94 = load i32, i32* @HERMES_RID_CNFSCANSSID_AGERE, align 4
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %95, 2
  %97 = call i32 @HERMES_BYTES_TO_RECLEN(i64 %96)
  %98 = call i32 %91(%struct.hermes* %92, i32 %93, i32 %94, i32 %97, %struct.hermes_idstring* %11)
  store i32 %98, i32* %9, align 4
  br label %104

99:                                               ; preds = %68
  %100 = load %struct.hermes*, %struct.hermes** %7, align 8
  %101 = load i32, i32* @USER_BAP, align 4
  %102 = load i32, i32* @HERMES_RID_CNFSCANSSID_AGERE, align 4
  %103 = call i32 @hermes_write_wordrec(%struct.hermes* %100, i32 %101, i32 %102, i32 0)
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %99, %73
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %130

108:                                              ; preds = %104
  %109 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %110 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load %struct.hermes*, %struct.hermes** %7, align 8
  %115 = load i32, i32* @USER_BAP, align 4
  %116 = load i32, i32* @HERMES_RID_CNFSCANCHANNELS2GHZ, align 4
  %117 = call i32 @hermes_write_wordrec(%struct.hermes* %114, i32 %115, i32 %116, i32 32767)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %136

121:                                              ; preds = %113
  %122 = load %struct.hermes*, %struct.hermes** %7, align 8
  %123 = load i32, i32* @HERMES_INQ_CHANNELINFO, align 4
  %124 = call i32 @hermes_inquire(%struct.hermes* %122, i32 %123)
  store i32 %124, i32* %9, align 4
  br label %129

125:                                              ; preds = %108
  %126 = load %struct.hermes*, %struct.hermes** %7, align 8
  %127 = load i32, i32* @HERMES_INQ_SCAN, align 4
  %128 = call i32 @hermes_inquire(%struct.hermes* %126, i32 %127)
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %125, %121
  br label %130

130:                                              ; preds = %45, %129, %107, %57, %49
  br label %135

131:                                              ; preds = %40
  %132 = load %struct.hermes*, %struct.hermes** %7, align 8
  %133 = load i32, i32* @HERMES_INQ_SCAN, align 4
  %134 = call i32 @hermes_inquire(%struct.hermes* %132, i32 %133)
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %131, %130
  br label %136

136:                                              ; preds = %135, %120, %37, %28
  %137 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %138 = call i32 @orinoco_unlock(%struct.orinoco_private* %137, i64* %8)
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %21
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @hermes_write_wordrec(%struct.hermes*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @HERMES_WRITE_RECORD(%struct.hermes*, i32, i32, i8***) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @HERMES_BYTES_TO_RECLEN(i64) #1

declare dso_local i32 @hermes_inquire(%struct.hermes*, i32) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
