; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32, i64, i64, i64 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i64 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@FW_CAPINFO_PS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LBS802_11POWERMODECAM = common dso_local global i64 0, align 8
@PS_STATE_FULL_POWER = common dso_local global i64 0, align 8
@CMD_OPTION_WAITFORRSP = common dso_local global i32 0, align 4
@IW_POWER_TYPE = common dso_local global i32 0, align 4
@IW_POWER_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"setting power timeout is not supported\0A\00", align 1
@IW_POWER_PERIOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"setting power period not supported\0A\00", align 1
@LBS802_11POWERMODEMAX_PSP = common dso_local global i64 0, align 8
@LBS_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @lbs_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_power(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lbs_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.lbs_private*, %struct.lbs_private** %12, align 8
  store %struct.lbs_private* %13, %struct.lbs_private** %10, align 8
  %14 = load i32, i32* @LBS_DEB_WEXT, align 4
  %15 = call i32 @lbs_deb_enter(i32 %14)
  %16 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %17 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FW_CAPINFO_PS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %4
  %23 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %24 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %98

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %98

31:                                               ; preds = %4
  %32 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %33 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load i64, i64* @LBS802_11POWERMODECAM, align 8
  %38 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %39 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PS_STATE_FULL_POWER, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %47 = load i32, i32* @CMD_OPTION_WAITFORRSP, align 4
  %48 = call i32 @lbs_ps_wakeup(%struct.lbs_private* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %36
  store i32 0, i32* %5, align 4
  br label %98

50:                                               ; preds = %31
  %51 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %52 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IW_POWER_TYPE, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @IW_POWER_TIMEOUT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %98

62:                                               ; preds = %50
  %63 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %64 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IW_POWER_TYPE, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @IW_POWER_PERIOD, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %98

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %77 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @LBS802_11POWERMODECAM, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %98

82:                                               ; preds = %75
  %83 = load i64, i64* @LBS802_11POWERMODEMAX_PSP, align 8
  %84 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %85 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %87 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LBS_CONNECTED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %93 = load i32, i32* @CMD_OPTION_WAITFORRSP, align 4
  %94 = call i32 @lbs_ps_sleep(%struct.lbs_private* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %82
  %96 = load i32, i32* @LBS_DEB_WEXT, align 4
  %97 = call i32 @lbs_deb_leave(i32 %96)
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %95, %81, %70, %58, %49, %28, %27
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_ps_wakeup(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_deb_wext(i8*) #1

declare dso_local i32 @lbs_ps_sleep(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
