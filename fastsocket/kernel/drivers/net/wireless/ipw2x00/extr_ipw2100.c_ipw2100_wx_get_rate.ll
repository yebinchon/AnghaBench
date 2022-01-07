; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ipw2100_priv = type { i32, i32 }

@STATUS_ENABLED = common dso_local global i32 0, align 4
@STATUS_RF_KILL_MASK = common dso_local global i32 0, align 4
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IPW_ORD_CURRENT_TX_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed querying ordinals.\0A\00", align 1
@TX_RATE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"GET Rate -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_get_rate(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw2100_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %14)
  store %struct.ipw2100_priv* %15, %struct.ipw2100_priv** %10, align 8
  store i32 4, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %17 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @STATUS_ENABLED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %24 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @STATUS_RF_KILL_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %31 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29, %22, %4
  %37 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %38 = bitcast %union.iwreq_data* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %96

40:                                               ; preds = %29
  %41 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %42 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %45 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @STATUS_INITIALIZED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %13, align 4
  br label %91

53:                                               ; preds = %40
  %54 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %55 = load i32, i32* @IPW_ORD_CURRENT_TX_RATE, align 4
  %56 = call i32 @ipw2100_get_ordinal(%struct.ipw2100_priv* %54, i32 %55, i32* %11, i32* %12)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %91

61:                                               ; preds = %53
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @TX_RATE_MASK, align 4
  %64 = and i32 %62, %63
  switch i32 %64, label %81 [
    i32 130, label %65
    i32 129, label %69
    i32 128, label %73
    i32 131, label %77
  ]

65:                                               ; preds = %61
  %66 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %67 = bitcast %union.iwreq_data* %66 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 1000000, i32* %68, align 4
  br label %85

69:                                               ; preds = %61
  %70 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %71 = bitcast %union.iwreq_data* %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 2000000, i32* %72, align 4
  br label %85

73:                                               ; preds = %61
  %74 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %75 = bitcast %union.iwreq_data* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 5500000, i32* %76, align 4
  br label %85

77:                                               ; preds = %61
  %78 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %79 = bitcast %union.iwreq_data* %78 to %struct.TYPE_2__*
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 11000000, i32* %80, align 4
  br label %85

81:                                               ; preds = %61
  %82 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %83 = bitcast %union.iwreq_data* %82 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %77, %73, %69, %65
  %86 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %87 = bitcast %union.iwreq_data* %86 to %struct.TYPE_2__*
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %59, %50
  %92 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %93 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %91, %36
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipw2100_get_ordinal(%struct.ipw2100_priv*, i32, i32*, i32*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
