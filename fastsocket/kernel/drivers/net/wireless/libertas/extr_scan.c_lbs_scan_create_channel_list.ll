; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_scan.c_lbs_scan_create_channel_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_scan.c_lbs_scan_create_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64, i32, i64, %struct.region_channel*, %struct.region_channel* }
%struct.region_channel = type { i32, i64, %struct.chan_freq_power*, i32 }
%struct.chan_freq_power = type { i32 }
%struct.chanscanparamset = type { i32, %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@CMD_SCAN_TYPE_ACTIVE = common dso_local global i64 0, align 8
@LBS_CONNECTED = common dso_local global i64 0, align 8
@BAND_B = common dso_local global i64 0, align 8
@BAND_G = common dso_local global i64 0, align 8
@CMD_SCAN_RADIO_TYPE_BG = common dso_local global i32 0, align 4
@CMD_SCAN_TYPE_PASSIVE = common dso_local global i64 0, align 8
@MRVDRV_PASSIVE_SCAN_CHAN_TIME = common dso_local global i32 0, align 4
@MRVDRV_ACTIVE_SCAN_CHAN_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.chanscanparamset*)* @lbs_scan_create_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_scan_create_channel_list(%struct.lbs_private* %0, %struct.chanscanparamset* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.chanscanparamset*, align 8
  %5 = alloca %struct.region_channel*, align 8
  %6 = alloca %struct.chan_freq_power*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.chanscanparamset*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.chanscanparamset* %1, %struct.chanscanparamset** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* @CMD_SCAN_TYPE_ACTIVE, align 8
  store i64 %12, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %153, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 4
  %17 = load %struct.region_channel*, %struct.region_channel** %16, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.region_channel* %17)
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %156

20:                                               ; preds = %13
  %21 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %22 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LBS_CONNECTED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LBS_CONNECTED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %39 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %38, i32 0, i32 5
  %40 = load %struct.region_channel*, %struct.region_channel** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %40, i64 %42
  %44 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  br label %153

48:                                               ; preds = %37
  %49 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %50 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %49, i32 0, i32 5
  %51 = load %struct.region_channel*, %struct.region_channel** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %51, i64 %53
  store %struct.region_channel* %54, %struct.region_channel** %5, align 8
  %55 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %56 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %55, i32 0, i32 2
  %57 = call i32 @memset(i32* %56, i32 0, i32 4)
  br label %76

58:                                               ; preds = %31, %25, %20
  %59 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %60 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %59, i32 0, i32 4
  %61 = load %struct.region_channel*, %struct.region_channel** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %61, i64 %63
  %65 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  br label %153

69:                                               ; preds = %58
  %70 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %71 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %70, i32 0, i32 4
  %72 = load %struct.region_channel*, %struct.region_channel** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %72, i64 %74
  store %struct.region_channel* %75, %struct.region_channel** %5, align 8
  br label %76

76:                                               ; preds = %69, %48
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %147, %76
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.region_channel*, %struct.region_channel** %5, align 8
  %80 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %152

83:                                               ; preds = %77
  %84 = load %struct.chanscanparamset*, %struct.chanscanparamset** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.chanscanparamset, %struct.chanscanparamset* %84, i64 %86
  store %struct.chanscanparamset* %87, %struct.chanscanparamset** %11, align 8
  %88 = load %struct.region_channel*, %struct.region_channel** %5, align 8
  %89 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %88, i32 0, i32 2
  %90 = load %struct.chan_freq_power*, %struct.chan_freq_power** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %90, i64 %92
  store %struct.chan_freq_power* %93, %struct.chan_freq_power** %6, align 8
  %94 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %95 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %83
  %99 = load %struct.chan_freq_power*, %struct.chan_freq_power** %6, align 8
  %100 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %103 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %102, i32 0, i32 2
  %104 = call i64 @lbs_get_scan_type_11d(i32 %101, i32* %103)
  store i64 %104, i64* %10, align 8
  br label %105

105:                                              ; preds = %98, %83
  %106 = load %struct.region_channel*, %struct.region_channel** %5, align 8
  %107 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @BAND_B, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.region_channel*, %struct.region_channel** %5, align 8
  %113 = getelementptr inbounds %struct.region_channel, %struct.region_channel* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @BAND_G, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111, %105
  %118 = load i32, i32* @CMD_SCAN_RADIO_TYPE_BG, align 4
  %119 = load %struct.chanscanparamset*, %struct.chanscanparamset** %11, align 8
  %120 = getelementptr inbounds %struct.chanscanparamset, %struct.chanscanparamset* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %117, %111
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @CMD_SCAN_TYPE_PASSIVE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load i32, i32* @MRVDRV_PASSIVE_SCAN_CHAN_TIME, align 4
  %127 = call i8* @cpu_to_le16(i32 %126)
  %128 = load %struct.chanscanparamset*, %struct.chanscanparamset** %11, align 8
  %129 = getelementptr inbounds %struct.chanscanparamset, %struct.chanscanparamset* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load %struct.chanscanparamset*, %struct.chanscanparamset** %11, align 8
  %131 = getelementptr inbounds %struct.chanscanparamset, %struct.chanscanparamset* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 4
  br label %141

133:                                              ; preds = %121
  %134 = load i32, i32* @MRVDRV_ACTIVE_SCAN_CHAN_TIME, align 4
  %135 = call i8* @cpu_to_le16(i32 %134)
  %136 = load %struct.chanscanparamset*, %struct.chanscanparamset** %11, align 8
  %137 = getelementptr inbounds %struct.chanscanparamset, %struct.chanscanparamset* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load %struct.chanscanparamset*, %struct.chanscanparamset** %11, align 8
  %139 = getelementptr inbounds %struct.chanscanparamset, %struct.chanscanparamset* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32 0, i32* %140, align 4
  br label %141

141:                                              ; preds = %133, %125
  %142 = load %struct.chan_freq_power*, %struct.chan_freq_power** %6, align 8
  %143 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.chanscanparamset*, %struct.chanscanparamset** %11, align 8
  %146 = getelementptr inbounds %struct.chanscanparamset, %struct.chanscanparamset* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %77

152:                                              ; preds = %77
  br label %153

153:                                              ; preds = %152, %68, %47
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %13

156:                                              ; preds = %13
  %157 = load i32, i32* %8, align 4
  ret i32 %157
}

declare dso_local i32 @ARRAY_SIZE(%struct.region_channel*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @lbs_get_scan_type_11d(i32, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
