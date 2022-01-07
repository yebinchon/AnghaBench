; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_set_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_set_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.ipw_priv = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_encode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %12)
  store %struct.ipw_priv* %13, %struct.ipw_priv** %9, align 8
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %15 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %18 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %21 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %24 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @libipw_wx_set_encode(%struct.TYPE_2__* %22, %struct.iw_request_info* %23, %union.iwreq_data* %24, i8* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %29 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %4
  %33 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %34 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IW_MODE_ADHOC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %42 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %49 = call i32 @ipw_disassociate(%struct.ipw_priv* %48)
  br label %50

50:                                               ; preds = %47, %40, %32, %4
  %51 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %52 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %51, i32 0, i32 2
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @libipw_wx_set_encode(%struct.TYPE_2__*, %struct.iw_request_info*, %union.iwreq_data*, i8*) #1

declare dso_local i32 @ipw_disassociate(%struct.ipw_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
