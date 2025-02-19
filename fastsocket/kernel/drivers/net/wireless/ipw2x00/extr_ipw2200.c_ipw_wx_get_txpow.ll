; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_get_txpow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_get_txpow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ipw_priv = type { i32, i32, i32 }

@IW_TXPOW_DBM = common dso_local global i32 0, align 4
@STATUS_RF_KILL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"GET TX Power -> %s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_get_txpow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_get_txpow(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %10)
  store %struct.ipw_priv* %11, %struct.ipw_priv** %9, align 8
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %16 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %19 = bitcast %union.iwreq_data* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 4
  %21 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %22 = bitcast %union.iwreq_data* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* @IW_TXPOW_DBM, align 4
  %25 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %26 = bitcast %union.iwreq_data* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %29 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @STATUS_RF_KILL_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %37 = bitcast %union.iwreq_data* %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %40 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %43 = bitcast %union.iwreq_data* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %49 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %50 = bitcast %union.iwreq_data* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %52)
  ret i32 0
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
