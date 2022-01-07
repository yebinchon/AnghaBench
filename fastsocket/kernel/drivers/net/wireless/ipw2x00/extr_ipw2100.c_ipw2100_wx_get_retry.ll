; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.ipw2100_priv = type { i64, i64 }

@IW_RETRY_TYPE = common dso_local global i32 0, align 4
@IW_RETRY_LIFETIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"GET Retry -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_get_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_get_retry(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw2100_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %11)
  store %struct.ipw2100_priv* %12, %struct.ipw2100_priv** %10, align 8
  %13 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %14 = bitcast %union.iwreq_data* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %17 = bitcast %union.iwreq_data* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IW_RETRY_TYPE, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @IW_RETRY_LIFETIME, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %79

27:                                               ; preds = %4
  %28 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %29 = bitcast %union.iwreq_data* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IW_RETRY_LONG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %37 = load i32, i32* @IW_RETRY_LONG, align 4
  %38 = or i32 %36, %37
  %39 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %40 = bitcast %union.iwreq_data* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %43 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %46 = bitcast %union.iwreq_data* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  br label %73

48:                                               ; preds = %27
  %49 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %50 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %53 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %58 = load i32, i32* @IW_RETRY_SHORT, align 4
  %59 = or i32 %57, %58
  br label %62

60:                                               ; preds = %48
  %61 = load i32, i32* @IW_RETRY_LIMIT, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %59, %56 ], [ %61, %60 ]
  %64 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %65 = bitcast %union.iwreq_data* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %68 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %71 = bitcast %union.iwreq_data* %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  br label %73

73:                                               ; preds = %62, %35
  %74 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %75 = bitcast %union.iwreq_data* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %73, %24
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
