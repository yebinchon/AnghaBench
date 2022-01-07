; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64, i32 }
%struct.assoc_request = type { i64 }

@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@PS_STATE_FULL_POWER = common dso_local global i64 0, align 8
@CMD_OPTION_WAITFORRSP = common dso_local global i32 0, align 4
@LBS802_11POWERMODECAM = common dso_local global i32 0, align 4
@SNMP_MIB_OID_BSS_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.assoc_request*)* @assoc_helper_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assoc_helper_mode(%struct.lbs_private* %0, %struct.assoc_request* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.assoc_request*, align 8
  %5 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.assoc_request* %1, %struct.assoc_request** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %7 = call i32 @lbs_deb_enter(i32 %6)
  %8 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %9 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %12 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %18 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IW_MODE_INFRA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PS_STATE_FULL_POWER, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %30 = load i32, i32* @CMD_OPTION_WAITFORRSP, align 4
  %31 = call i32 @lbs_ps_wakeup(%struct.lbs_private* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* @LBS802_11POWERMODECAM, align 4
  %34 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %16
  %37 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %38 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %43 = load i32, i32* @SNMP_MIB_OID_BSS_TYPE, align 4
  %44 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %45 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @lbs_set_snmp_mib(%struct.lbs_private* %42, i32 %43, i64 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %36, %15
  %49 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @lbs_deb_leave_args(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_ps_wakeup(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_set_snmp_mib(%struct.lbs_private*, i32, i64) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
