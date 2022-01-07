; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_set_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_set_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ipw_priv = type { i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i32 }
%struct.delayed_work = type { i32 }
%struct.iw_scan_req = type { i64, i32, i64 }

@IW_SCAN_THIS_ESSID = common dso_local global i32 0, align 4
@IW_SCAN_TYPE_PASSIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Start scan\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_scan(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw_priv*, align 8
  %10 = alloca %struct.iw_scan_req*, align 8
  %11 = alloca %struct.delayed_work*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %13)
  store %struct.ipw_priv* %14, %struct.ipw_priv** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.iw_scan_req*
  store %struct.iw_scan_req* %16, %struct.iw_scan_req** %10, align 8
  store %struct.delayed_work* null, %struct.delayed_work** %11, align 8
  %17 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %18 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %21 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %23 = bitcast %union.iwreq_data* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %26, 24
  br i1 %27, label %28, label %66

28:                                               ; preds = %4
  %29 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %30 = bitcast %union.iwreq_data* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IW_SCAN_THIS_ESSID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %28
  %37 = load %struct.iw_scan_req*, %struct.iw_scan_req** %10, align 8
  %38 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @min(i32 %40, i32 4)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %43 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.iw_scan_req*, %struct.iw_scan_req** %10, align 8
  %46 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @memcpy(i32 %44, i32 %47, i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %52 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %54 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %53, i32 0, i32 5
  store %struct.delayed_work* %54, %struct.delayed_work** %11, align 8
  br label %65

55:                                               ; preds = %28
  %56 = load %struct.iw_scan_req*, %struct.iw_scan_req** %10, align 8
  %57 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IW_SCAN_TYPE_PASSIVE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %63 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %62, i32 0, i32 4
  store %struct.delayed_work* %63, %struct.delayed_work** %11, align 8
  br label %64

64:                                               ; preds = %61, %55
  br label %65

65:                                               ; preds = %64, %36
  br label %69

66:                                               ; preds = %4
  %67 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %68 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %67, i32 0, i32 3
  store %struct.delayed_work* %68, %struct.delayed_work** %11, align 8
  br label %69

69:                                               ; preds = %66, %65
  %70 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %71 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %70, i32 0, i32 2
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.delayed_work*, %struct.delayed_work** %11, align 8
  %75 = call i32 @schedule_delayed_work(%struct.delayed_work* %74, i32 0)
  ret i32 0
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*) #1

declare dso_local i32 @schedule_delayed_work(%struct.delayed_work*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
