; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_essid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ipw2100_priv = type { i32, i32, i32, i32 }

@ssid = common dso_local global i32 0, align 4
@CFG_STATIC_ESSID = common dso_local global i32 0, align 4
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Getting essid: '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Getting essid: ANY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_get_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_get_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw2100_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %10)
  store %struct.ipw2100_priv* %11, %struct.ipw2100_priv** %9, align 8
  %12 = load i32, i32* @ssid, align 4
  %13 = call i32 @DECLARE_SSID_BUF(i32 %12)
  %14 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %15 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CFG_STATIC_ESSID, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %22 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %20, %4
  %28 = load i32, i32* @ssid, align 4
  %29 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %30 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %33 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @print_ssid(i32 %28, i32 %31, i32 %34)
  %36 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %39 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %42 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i8* %37, i32 %40, i32 %43)
  %45 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %46 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %49 = bitcast %union.iwreq_data* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %52 = bitcast %union.iwreq_data* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %62

54:                                               ; preds = %20
  %55 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %57 = bitcast %union.iwreq_data* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %60 = bitcast %union.iwreq_data* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %27
  ret i32 0
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @DECLARE_SSID_BUF(i32) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, ...) #1

declare dso_local i32 @print_ssid(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
