; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32, i32 }
%struct.chan_freq_power = type { i64 }
%struct.assoc_request = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid freq %ld\0A\00", align 1
@ASSOC_FLAG_CHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*)* @lbs_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_freq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_freq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lbs_private*, align 8
  %11 = alloca %struct.chan_freq_power*, align 8
  %12 = alloca %struct.assoc_request*, align 8
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.lbs_private*, %struct.lbs_private** %17, align 8
  store %struct.lbs_private* %18, %struct.lbs_private** %10, align 8
  %19 = load i32, i32* @LBS_DEB_WEXT, align 4
  %20 = call i32 @lbs_deb_enter(i32 %19)
  %21 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %22 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %25 = call %struct.assoc_request* @lbs_get_association_request(%struct.lbs_private* %24)
  store %struct.assoc_request* %25, %struct.assoc_request** %12, align 8
  %26 = load %struct.assoc_request*, %struct.assoc_request** %12, align 8
  %27 = icmp ne %struct.assoc_request* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %85

31:                                               ; preds = %4
  %32 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %33 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %38 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 100000
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %13, align 8
  %42 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call %struct.chan_freq_power* @find_cfp_by_band_and_freq(%struct.lbs_private* %42, i32 0, i64 %43)
  store %struct.chan_freq_power* %44, %struct.chan_freq_power** %11, align 8
  %45 = load %struct.chan_freq_power*, %struct.chan_freq_power** %11, align 8
  %46 = icmp ne %struct.chan_freq_power* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = load i64, i64* %13, align 8
  %49 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %85

50:                                               ; preds = %36
  %51 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %52 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = load %struct.chan_freq_power*, %struct.chan_freq_power** %11, align 8
  %54 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %58 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %50, %31
  %60 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %61 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 1000
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %66 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %59
  br label %85

70:                                               ; preds = %64
  %71 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %72 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %73 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.chan_freq_power* @lbs_find_cfp_by_band_and_channel(%struct.lbs_private* %71, i32 0, i32 %74)
  store %struct.chan_freq_power* %75, %struct.chan_freq_power** %11, align 8
  %76 = load %struct.chan_freq_power*, %struct.chan_freq_power** %11, align 8
  %77 = icmp ne %struct.chan_freq_power* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  br label %85

79:                                               ; preds = %70
  %80 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %81 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.assoc_request*, %struct.assoc_request** %12, align 8
  %84 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %79, %78, %69, %47, %28
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32, i32* @ASSOC_FLAG_CHANNEL, align 4
  %90 = load %struct.assoc_request*, %struct.assoc_request** %12, align 8
  %91 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %90, i32 0, i32 1
  %92 = call i32 @set_bit(i32 %89, i32* %91)
  %93 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %94 = call i32 @lbs_postpone_association_work(%struct.lbs_private* %93)
  br label %98

95:                                               ; preds = %85
  %96 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %97 = call i32 @lbs_cancel_association_work(%struct.lbs_private* %96)
  br label %98

98:                                               ; preds = %95, %88
  %99 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %100 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* @LBS_DEB_WEXT, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @lbs_deb_leave_args(i32 %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.assoc_request* @lbs_get_association_request(%struct.lbs_private*) #1

declare dso_local %struct.chan_freq_power* @find_cfp_by_band_and_freq(%struct.lbs_private*, i32, i64) #1

declare dso_local i32 @lbs_deb_wext(i8*, i64) #1

declare dso_local %struct.chan_freq_power* @lbs_find_cfp_by_band_and_channel(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @lbs_postpone_association_work(%struct.lbs_private*) #1

declare dso_local i32 @lbs_cancel_association_work(%struct.lbs_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
