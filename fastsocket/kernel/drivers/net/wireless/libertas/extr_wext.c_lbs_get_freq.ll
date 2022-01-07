; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_get_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i64, i32 }
%struct.chan_freq_power = type { i64 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid channel %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"freq %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*)* @lbs_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_get_freq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_freq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lbs_private*, align 8
  %11 = alloca %struct.chan_freq_power*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.lbs_private*, %struct.lbs_private** %13, align 8
  store %struct.lbs_private* %14, %struct.lbs_private** %10, align 8
  %15 = load i32, i32* @LBS_DEB_WEXT, align 4
  %16 = call i32 @lbs_deb_enter(i32 %15)
  %17 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %18 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.chan_freq_power* @lbs_find_cfp_by_band_and_channel(%struct.lbs_private* %17, i32 0, i64 %21)
  store %struct.chan_freq_power* %22, %struct.chan_freq_power** %11, align 8
  %23 = load %struct.chan_freq_power*, %struct.chan_freq_power** %11, align 8
  %24 = icmp ne %struct.chan_freq_power* %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %4
  %26 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %55

40:                                               ; preds = %4
  %41 = load %struct.chan_freq_power*, %struct.chan_freq_power** %11, align 8
  %42 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = mul nsw i64 %43, 100000
  %45 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %46 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %48 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %50 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @LBS_DEB_WEXT, align 4
  %54 = call i32 @lbs_deb_leave(i32 %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %40, %37
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local %struct.chan_freq_power* @lbs_find_cfp_by_band_and_channel(%struct.lbs_private*, i32, i64) #1

declare dso_local i32 @lbs_deb_wext(i8*, i64) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
