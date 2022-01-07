; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_get_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_get_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i8* }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i8*, i64 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@SNMP_MIB_OID_LONG_RETRY_LIMIT = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@SNMP_MIB_OID_SHORT_RETRY_LIMIT = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @lbs_get_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_get_retry(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lbs_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_param* %2, %struct.iw_param** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.lbs_private*, %struct.lbs_private** %13, align 8
  store %struct.lbs_private* %14, %struct.lbs_private** %9, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %15 = load i32, i32* @LBS_DEB_WEXT, align 4
  %16 = call i32 @lbs_deb_enter(i32 %15)
  %17 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %18 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %20 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IW_RETRY_LONG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %4
  %26 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %27 = load i32, i32* @SNMP_MIB_OID_LONG_RETRY_LIMIT, align 4
  %28 = call i32 @lbs_get_snmp_mib(%struct.lbs_private* %26, i32 %27, i8** %11)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %63

32:                                               ; preds = %25
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr i8, i8* %33, i64 -1
  %35 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %36 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %38 = load i32, i32* @IW_RETRY_LONG, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %41 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %62

42:                                               ; preds = %4
  %43 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %44 = load i32, i32* @SNMP_MIB_OID_SHORT_RETRY_LIMIT, align 4
  %45 = call i32 @lbs_get_snmp_mib(%struct.lbs_private* %43, i32 %44, i8** %11)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %63

49:                                               ; preds = %42
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %52 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr i8, i8* %53, i64 -1
  %55 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %56 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %58 = load i32, i32* @IW_RETRY_SHORT, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %61 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %49, %32
  br label %63

63:                                               ; preds = %62, %48, %31
  %64 = load i32, i32* @LBS_DEB_WEXT, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @lbs_deb_leave_args(i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_get_snmp_mib(%struct.lbs_private*, i32, i8**) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
