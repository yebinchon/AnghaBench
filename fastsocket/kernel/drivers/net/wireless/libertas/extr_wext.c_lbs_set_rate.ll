; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32, i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_RATES = common dso_local global i32 0, align 4
@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"vwrq->value %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"vwrq->fixed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"fixed data rate 0x%X out of range\0A\00", align 1
@POW_ADAPT_DEFAULT_P0 = common dso_local global i32 0, align 4
@POW_ADAPT_DEFAULT_P1 = common dso_local global i32 0, align 4
@POW_ADAPT_DEFAULT_P2 = common dso_local global i32 0, align 4
@TPC_DEFAULT_P0 = common dso_local global i32 0, align 4
@TPC_DEFAULT_P1 = common dso_local global i32 0, align 4
@TPC_DEFAULT_P2 = common dso_local global i32 0, align 4
@CMD_ACT_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @lbs_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_rate(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lbs_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_param* %2, %struct.iw_param** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.lbs_private*, %struct.lbs_private** %15, align 8
  store %struct.lbs_private* %16, %struct.lbs_private** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @MAX_RATES, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @LBS_DEB_WEXT, align 4
  %25 = call i32 @lbs_deb_enter(i32 %24)
  %26 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %27 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %31 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %35 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %40 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %124

44:                                               ; preds = %38, %4
  %45 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %46 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %52 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %54 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %44
  %58 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %59 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %113

60:                                               ; preds = %44
  %61 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %62 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = srem i32 %63, 100000
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %124

67:                                               ; preds = %60
  %68 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %69 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 500000
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %74 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = mul nuw i64 4, %21
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memset(i32* %23, i32 0, i32 %76)
  %78 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %79 = call i32 @copy_active_data_rates(%struct.lbs_private* %78, i32* %23)
  %80 = load i32, i32* %10, align 4
  %81 = mul nuw i64 4, %21
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memchr(i32* %23, i32 %80, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %67
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @lbs_pr_alert(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %124

88:                                               ; preds = %67
  %89 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %90 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 150994944
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %95 = load i32, i32* @POW_ADAPT_DEFAULT_P0, align 4
  %96 = load i32, i32* @POW_ADAPT_DEFAULT_P1, align 4
  %97 = load i32, i32* @POW_ADAPT_DEFAULT_P2, align 4
  %98 = call i32 @lbs_set_power_adapt_cfg(%struct.lbs_private* %94, i32 0, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %124

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %88
  %104 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %105 = load i32, i32* @TPC_DEFAULT_P0, align 4
  %106 = load i32, i32* @TPC_DEFAULT_P1, align 4
  %107 = load i32, i32* @TPC_DEFAULT_P2, align 4
  %108 = call i32 @lbs_set_tpc_cfg(%struct.lbs_private* %104, i32 0, i32 %105, i32 %106, i32 %107, i32 1)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %124

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %57
  %114 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %115 = load i32, i32* @CMD_ACT_SET, align 4
  %116 = call i32 @lbs_cmd_802_11_rate_adapt_rateset(%struct.lbs_private* %114, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @lbs_set_data_rate(%struct.lbs_private* %120, i32 %121)
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %119, %113
  br label %124

124:                                              ; preds = %123, %111, %101, %85, %66, %43
  %125 = load i32, i32* @LBS_DEB_WEXT, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @lbs_deb_leave_args(i32 %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %11, align 4
  %129 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %129)
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lbs_deb_enter(i32) #2

declare dso_local i32 @lbs_deb_wext(i8*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @copy_active_data_rates(%struct.lbs_private*, i32*) #2

declare dso_local i32 @memchr(i32*, i32, i32) #2

declare dso_local i32 @lbs_pr_alert(i8*, i32) #2

declare dso_local i32 @lbs_set_power_adapt_cfg(%struct.lbs_private*, i32, i32, i32, i32) #2

declare dso_local i32 @lbs_set_tpc_cfg(%struct.lbs_private*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @lbs_cmd_802_11_rate_adapt_rateset(%struct.lbs_private*, i32) #2

declare dso_local i32 @lbs_set_data_rate(%struct.lbs_private*, i32) #2

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
