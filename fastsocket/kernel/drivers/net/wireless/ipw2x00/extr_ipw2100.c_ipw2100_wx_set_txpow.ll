; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_txpow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_txpow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.ipw2100_priv = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINPROGRESS = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@IW_TXPOW_TYPE = common dso_local global i32 0, align 4
@IW_TXPOW_DBM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPW_TX_POWER_DEFAULT = common dso_local global i32 0, align 4
@IPW_TX_POWER_MIN_DBM = common dso_local global i32 0, align 4
@IPW_TX_POWER_MAX_DBM = common dso_local global i32 0, align 4
@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SET TX Power -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_set_txpow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_set_txpow(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw2100_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %13)
  store %struct.ipw2100_priv* %14, %struct.ipw2100_priv** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %16 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %17 = bitcast %union.iwreq_data* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ipw_radio_kill_sw(%struct.ipw2100_priv* %15, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINPROGRESS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %100

25:                                               ; preds = %4
  %26 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %27 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IW_MODE_ADHOC, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %100

34:                                               ; preds = %25
  %35 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %36 = bitcast %union.iwreq_data* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IW_TXPOW_TYPE, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @IW_TXPOW_DBM, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %100

46:                                               ; preds = %34
  %47 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %48 = bitcast %union.iwreq_data* %47 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @IPW_TX_POWER_DEFAULT, align 4
  store i32 %53, i32* %12, align 4
  br label %76

54:                                               ; preds = %46
  %55 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %56 = bitcast %union.iwreq_data* %55 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IPW_TX_POWER_MIN_DBM, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %63 = bitcast %union.iwreq_data* %62 to %struct.TYPE_4__*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IPW_TX_POWER_MAX_DBM, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61, %54
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %100

71:                                               ; preds = %61
  %72 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %73 = bitcast %union.iwreq_data* %72 to %struct.TYPE_4__*
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %71, %52
  %77 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %78 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %77, i32 0, i32 1
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %81 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @STATUS_INITIALIZED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %95

89:                                               ; preds = %76
  %90 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @ipw2100_set_tx_power(%struct.ipw2100_priv* %90, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89, %86
  %96 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %97 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %95, %68, %43, %33, %22
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i64 @ipw_radio_kill_sw(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipw2100_set_tx_power(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
