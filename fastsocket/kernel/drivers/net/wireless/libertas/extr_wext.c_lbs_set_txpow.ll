; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_txpow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_txpow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32, i64, i64, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i64, i32, i64, i32 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@RADIO_PREAMBLE_AUTO = common dso_local global i32 0, align 4
@POW_ADAPT_DEFAULT_P0 = common dso_local global i32 0, align 4
@POW_ADAPT_DEFAULT_P1 = common dso_local global i32 0, align 4
@POW_ADAPT_DEFAULT_P2 = common dso_local global i32 0, align 4
@TPC_DEFAULT_P0 = common dso_local global i32 0, align 4
@TPC_DEFAULT_P1 = common dso_local global i32 0, align 4
@TPC_DEFAULT_P2 = common dso_local global i32 0, align 4
@IW_TXPOW_TYPE = common dso_local global i32 0, align 4
@IW_TXPOW_DBM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"txpower set %d dBm\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @lbs_set_txpow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_txpow(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lbs_private*, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_param* %2, %struct.iw_param** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.lbs_private*, %struct.lbs_private** %13, align 8
  store %struct.lbs_private* %14, %struct.lbs_private** %10, align 8
  %15 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %16 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %11, align 8
  %19 = load i32, i32* @LBS_DEB_WEXT, align 4
  %20 = call i32 @lbs_deb_enter(i32 %19)
  %21 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %22 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %27 = load i32, i32* @RADIO_PREAMBLE_AUTO, align 4
  %28 = call i32 @lbs_set_radio(%struct.lbs_private* %26, i32 %27, i32 0)
  br label %145

29:                                               ; preds = %4
  %30 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %31 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %36 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 150994944
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %41 = load i32, i32* @POW_ADAPT_DEFAULT_P0, align 4
  %42 = load i32, i32* @POW_ADAPT_DEFAULT_P1, align 4
  %43 = load i32, i32* @POW_ADAPT_DEFAULT_P2, align 4
  %44 = call i32 @lbs_set_power_adapt_cfg(%struct.lbs_private* %40, i32 1, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %145

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %34
  %50 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %51 = load i32, i32* @TPC_DEFAULT_P0, align 4
  %52 = load i32, i32* @TPC_DEFAULT_P1, align 4
  %53 = load i32, i32* @TPC_DEFAULT_P2, align 4
  %54 = call i32 @lbs_set_tpc_cfg(%struct.lbs_private* %50, i32 0, i32 %51, i32 %52, i32 %53, i32 1)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %145

58:                                               ; preds = %49
  %59 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %60 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %11, align 8
  br label %126

62:                                               ; preds = %29
  %63 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %64 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IW_TXPOW_TYPE, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @IW_TXPOW_DBM, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @EOPNOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %145

73:                                               ; preds = %62
  %74 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %75 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %81 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %9, align 4
  br label %145

87:                                               ; preds = %78, %73
  %88 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %89 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %95 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %9, align 4
  br label %145

101:                                              ; preds = %92, %87
  %102 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %103 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %104, 150994944
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %108 = load i32, i32* @POW_ADAPT_DEFAULT_P0, align 4
  %109 = load i32, i32* @POW_ADAPT_DEFAULT_P1, align 4
  %110 = load i32, i32* @POW_ADAPT_DEFAULT_P2, align 4
  %111 = call i32 @lbs_set_power_adapt_cfg(%struct.lbs_private* %107, i32 0, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %145

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %101
  %117 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %118 = load i32, i32* @TPC_DEFAULT_P0, align 4
  %119 = load i32, i32* @TPC_DEFAULT_P1, align 4
  %120 = load i32, i32* @TPC_DEFAULT_P2, align 4
  %121 = call i32 @lbs_set_tpc_cfg(%struct.lbs_private* %117, i32 0, i32 %118, i32 %119, i32 %120, i32 1)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %145

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %58
  %127 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %128 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %126
  %132 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %133 = load i32, i32* @RADIO_PREAMBLE_AUTO, align 4
  %134 = call i32 @lbs_set_radio(%struct.lbs_private* %132, i32 %133, i32 1)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %145

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %138, %126
  %140 = load i64, i64* %11, align 8
  %141 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %140)
  %142 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @lbs_set_tx_power(%struct.lbs_private* %142, i64 %143)
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %139, %137, %124, %114, %98, %84, %70, %57, %47, %25
  %146 = load i32, i32* @LBS_DEB_WEXT, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @lbs_deb_leave_args(i32 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %9, align 4
  ret i32 %149
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_set_radio(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @lbs_set_power_adapt_cfg(%struct.lbs_private*, i32, i32, i32, i32) #1

declare dso_local i32 @lbs_set_tpc_cfg(%struct.lbs_private*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lbs_deb_wext(i8*, i64) #1

declare dso_local i32 @lbs_set_tx_power(%struct.lbs_private*, i64) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
