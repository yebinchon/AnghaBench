; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.ipw_priv = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Set MODE: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ARPHRD_IEEE80211 = common dso_local global i32 0, align 4
@ARPHRD_IEEE80211_RADIOTAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_mode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %12)
  store %struct.ipw_priv* %13, %struct.ipw_priv** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %15 = bitcast %union.iwreq_data* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %19 = bitcast %union.iwreq_data* %18 to i32*
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %25 [
    i32 131, label %21
    i32 129, label %21
    i32 130, label %22
  ]

21:                                               ; preds = %4, %4
  br label %28

22:                                               ; preds = %4
  %23 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %24 = bitcast %union.iwreq_data* %23 to i32*
  store i32 129, i32* %24, align 4
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %60

28:                                               ; preds = %22, %21
  %29 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %30 = bitcast %union.iwreq_data* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %33 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %60

39:                                               ; preds = %28
  %40 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %41 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %44 = call i32 @ipw_sw_reset(%struct.ipw_priv* %43, i32 0)
  %45 = call i32 (...) @free_firmware()
  %46 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %47 = bitcast %union.iwreq_data* %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %50 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  %53 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %54 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %53, i32 0, i32 1
  %55 = call i32 @schedule_work(i32* %54)
  %56 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %57 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %39, %38, %25
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipw_sw_reset(%struct.ipw_priv*, i32) #1

declare dso_local i32 @free_firmware(...) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
