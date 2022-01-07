; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_get_genie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_get_genie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ipw_priv = type { %struct.libipw_device* }
%struct.libipw_device = type { i64, i32* }

@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_get_genie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_get_genie(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw_priv*, align 8
  %10 = alloca %struct.libipw_device*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %12)
  store %struct.ipw_priv* %13, %struct.ipw_priv** %9, align 8
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %15 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %14, i32 0, i32 0
  %16 = load %struct.libipw_device*, %struct.libipw_device** %15, align 8
  store %struct.libipw_device* %16, %struct.libipw_device** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.libipw_device*, %struct.libipw_device** %10, align 8
  %18 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.libipw_device*, %struct.libipw_device** %10, align 8
  %23 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %4
  %27 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %28 = bitcast %union.iwreq_data* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %57

30:                                               ; preds = %21
  %31 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %32 = bitcast %union.iwreq_data* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.libipw_device*, %struct.libipw_device** %10, align 8
  %36 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @E2BIG, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %11, align 4
  br label %57

42:                                               ; preds = %30
  %43 = load %struct.libipw_device*, %struct.libipw_device** %10, align 8
  %44 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %47 = bitcast %union.iwreq_data* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.libipw_device*, %struct.libipw_device** %10, align 8
  %51 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.libipw_device*, %struct.libipw_device** %10, align 8
  %54 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @memcpy(i8* %49, i32* %52, i64 %55)
  br label %57

57:                                               ; preds = %42, %39, %26
  %58 = load i32, i32* %11, align 4
  ret i32 %58
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
