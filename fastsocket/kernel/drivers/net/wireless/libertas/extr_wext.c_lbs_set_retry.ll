; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i64 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i64 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@IW_RETRY_TYPE = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@SNMP_MIB_OID_LONG_RETRY_LIMIT = common dso_local global i32 0, align 4
@SNMP_MIB_OID_SHORT_RETRY_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@TX_RETRY_MAX = common dso_local global i64 0, align 8
@TX_RETRY_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @lbs_set_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_retry(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lbs_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.lbs_private*, %struct.lbs_private** %15, align 8
  store %struct.lbs_private* %16, %struct.lbs_private** %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %17 = load i32, i32* @LBS_DEB_WEXT, align 4
  %18 = call i32 @lbs_deb_enter(i32 %17)
  %19 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %20 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IW_RETRY_TYPE, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %105

29:                                               ; preds = %4
  %30 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %31 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %36 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 14
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %105

42:                                               ; preds = %34
  %43 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %44 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IW_RETRY_SHORT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %51 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %12, align 8
  br label %72

54:                                               ; preds = %42
  %55 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %56 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IW_RETRY_LONG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %63 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %13, align 8
  br label %71

66:                                               ; preds = %54
  %67 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %68 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %13, align 8
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %49
  %73 = load i64, i64* %13, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %77 = load i32, i32* @SNMP_MIB_OID_LONG_RETRY_LIMIT, align 4
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @lbs_set_snmp_mib(%struct.lbs_private* %76, i32 %77, i64 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %100

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %72
  %85 = load i64, i64* %12, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %90 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %92 = load i32, i32* @SNMP_MIB_OID_SHORT_RETRY_LIMIT, align 4
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @lbs_set_snmp_mib(%struct.lbs_private* %91, i32 %92, i64 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %100

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %84
  br label %100

100:                                              ; preds = %99, %97, %82
  %101 = load i32, i32* @LBS_DEB_WEXT, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @lbs_deb_leave_args(i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %100, %39, %26
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_set_snmp_mib(%struct.lbs_private*, i32, i64) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
