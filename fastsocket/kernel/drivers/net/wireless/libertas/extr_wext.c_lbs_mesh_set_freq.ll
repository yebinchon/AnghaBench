; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_mesh_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_mesh_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32, i32 }
%struct.chan_freq_power = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid freq %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"mesh channel change forces eth disconnect\0A\00", align 1
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@CMD_ACT_MESH_CONFIG_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*)* @lbs_mesh_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_mesh_set_freq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_freq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lbs_private*, align 8
  %10 = alloca %struct.chan_freq_power*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.lbs_private*, %struct.lbs_private** %14, align 8
  store %struct.lbs_private* %15, %struct.lbs_private** %9, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @LBS_DEB_WEXT, align 4
  %19 = call i32 @lbs_deb_enter(i32 %18)
  %20 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %21 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %47

24:                                               ; preds = %4
  %25 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %26 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 100000
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %12, align 8
  %30 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call %struct.chan_freq_power* @find_cfp_by_band_and_freq(%struct.lbs_private* %30, i32 0, i64 %31)
  store %struct.chan_freq_power* %32, %struct.chan_freq_power** %10, align 8
  %33 = load %struct.chan_freq_power*, %struct.chan_freq_power** %10, align 8
  %34 = icmp ne %struct.chan_freq_power* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i64, i64* %12, align 8
  %37 = call i32 (i8*, ...) @lbs_deb_wext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %111

38:                                               ; preds = %24
  %39 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %40 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.chan_freq_power*, %struct.chan_freq_power** %10, align 8
  %42 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %46 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %38, %4
  %48 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %49 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 1000
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %54 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %47
  br label %111

58:                                               ; preds = %52
  %59 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %60 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %61 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.chan_freq_power* @lbs_find_cfp_by_band_and_channel(%struct.lbs_private* %59, i32 0, i32 %62)
  store %struct.chan_freq_power* %63, %struct.chan_freq_power** %10, align 8
  %64 = load %struct.chan_freq_power*, %struct.chan_freq_power** %10, align 8
  %65 = icmp ne %struct.chan_freq_power* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %111

67:                                               ; preds = %58
  %68 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %69 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %72 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %70, %74
  br i1 %75, label %76, label %102

76:                                               ; preds = %67
  %77 = call i32 (i8*, ...) @lbs_deb_wext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %79 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IW_MODE_INFRA, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %85 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %86 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %90 = call i32 @lbs_cmd_80211_deauthenticate(%struct.lbs_private* %84, i32 %88, i32 %89)
  br label %101

91:                                               ; preds = %76
  %92 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %93 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IW_MODE_ADHOC, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %99 = call i32 @lbs_adhoc_stop(%struct.lbs_private* %98)
  br label %100

100:                                              ; preds = %97, %91
  br label %101

101:                                              ; preds = %100, %83
  br label %102

102:                                              ; preds = %101, %67
  %103 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %104 = load i32, i32* @CMD_ACT_MESH_CONFIG_START, align 4
  %105 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %106 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @lbs_mesh_config(%struct.lbs_private* %103, i32 %104, i32 %107)
  %109 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %110 = call i32 @lbs_update_channel(%struct.lbs_private* %109)
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %102, %66, %57, %35
  %112 = load i32, i32* @LBS_DEB_WEXT, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @lbs_deb_leave_args(i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %11, align 4
  ret i32 %115
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local %struct.chan_freq_power* @find_cfp_by_band_and_freq(%struct.lbs_private*, i32, i64) #1

declare dso_local i32 @lbs_deb_wext(i8*, ...) #1

declare dso_local %struct.chan_freq_power* @lbs_find_cfp_by_band_and_channel(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @lbs_cmd_80211_deauthenticate(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @lbs_adhoc_stop(%struct.lbs_private*) #1

declare dso_local i32 @lbs_mesh_config(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @lbs_update_channel(%struct.lbs_private*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
