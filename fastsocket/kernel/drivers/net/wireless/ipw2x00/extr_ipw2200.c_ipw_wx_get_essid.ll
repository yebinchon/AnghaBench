; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_get_essid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_get_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ipw_priv = type { i32, i32, i32, i32, i32 }

@ssid = common dso_local global i32 0, align 4
@CFG_STATIC_ESSID = common dso_local global i32 0, align 4
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@STATUS_ASSOCIATING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Getting essid: '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Getting essid: ANY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_get_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_get_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
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
  %12 = load i32, i32* @ssid, align 4
  %13 = call i32 @DECLARE_SSID_BUF(i32 %12)
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %15 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %18 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CFG_STATIC_ESSID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %4
  %24 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %25 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %28 = load i32, i32* @STATUS_ASSOCIATING, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %23, %4
  %33 = load i32, i32* @ssid, align 4
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %38 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @print_ssid(i32 %33, i32 %36, i32 %39)
  %41 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %44 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %47 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i8* %42, i32 %45, i32 %48)
  %50 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %51 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %54 = bitcast %union.iwreq_data* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %57 = bitcast %union.iwreq_data* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  br label %67

59:                                               ; preds = %23
  %60 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %62 = bitcast %union.iwreq_data* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %65 = bitcast %union.iwreq_data* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %59, %32
  %68 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %69 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %68, i32 0, i32 2
  %70 = call i32 @mutex_unlock(i32* %69)
  ret i32 0
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @DECLARE_SSID_BUF(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, ...) #1

declare dso_local i32 @print_ssid(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
