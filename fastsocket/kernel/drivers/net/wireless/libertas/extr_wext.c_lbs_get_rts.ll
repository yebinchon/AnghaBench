; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_get_rts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_get_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i64 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@SNMP_MIB_OID_RTS_THRESHOLD = common dso_local global i32 0, align 4
@MRVDRV_RTS_MAX_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @lbs_get_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_get_rts(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lbs_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_param* %2, %struct.iw_param** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.lbs_private*, %struct.lbs_private** %13, align 8
  store %struct.lbs_private* %14, %struct.lbs_private** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %15 = load i32, i32* @LBS_DEB_WEXT, align 4
  %16 = call i32 @lbs_deb_enter(i32 %15)
  %17 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %18 = load i32, i32* @SNMP_MIB_OID_RTS_THRESHOLD, align 4
  %19 = call i32 @lbs_get_snmp_mib(%struct.lbs_private* %17, i32 %18, i64* %11)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %35

23:                                               ; preds = %4
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %26 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @MRVDRV_RTS_MAX_VALUE, align 8
  %29 = icmp sgt i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %32 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %34 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %23, %22
  %36 = load i32, i32* @LBS_DEB_WEXT, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @lbs_deb_leave_args(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %10, align 4
  ret i32 %39
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_get_snmp_mib(%struct.lbs_private*, i32, i64*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
