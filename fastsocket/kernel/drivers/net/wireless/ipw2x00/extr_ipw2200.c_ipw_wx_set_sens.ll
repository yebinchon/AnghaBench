; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_set_sens.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_set_sens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ipw_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Setting roaming threshold to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Setting disassociate threshold to %d\0A\00", align 1
@IPW_MB_ROAMING_THRESHOLD_DEFAULT = common dso_local global i32 0, align 4
@IPW_MB_DISASSOCIATE_THRESHOLD_DEFAULT = common dso_local global i32 0, align 4
@IPW_MB_ROAMING_THRESHOLD_MAX = common dso_local global i32 0, align 4
@IPW_MB_ROAMING_THRESHOLD_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_sens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_sens(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %11)
  store %struct.ipw_priv* %12, %struct.ipw_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %14 = bitcast %union.iwreq_data* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %19 = bitcast %union.iwreq_data* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 3, %21
  %23 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %25 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %28 = bitcast %union.iwreq_data* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load i32, i32* @IPW_MB_ROAMING_THRESHOLD_DEFAULT, align 4
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @IPW_MB_DISASSOCIATE_THRESHOLD_DEFAULT, align 4
  %37 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %38 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %70

39:                                               ; preds = %4
  %40 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %41 = bitcast %union.iwreq_data* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IPW_MB_ROAMING_THRESHOLD_MAX, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %48 = bitcast %union.iwreq_data* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IPW_MB_ROAMING_THRESHOLD_MIN, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46, %39
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %70

56:                                               ; preds = %46
  %57 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %58 = bitcast %union.iwreq_data* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %62 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %64 = bitcast %union.iwreq_data* %63 to %struct.TYPE_2__*
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 3, %66
  %68 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %69 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %56, %53, %32
  %71 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %72 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %71, i32 0, i32 2
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %10, align 4
  ret i32 %74
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
