; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_wap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_wap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }
%struct.ipw2100_priv = type { i32, i32, i32, i32 }

@ipw2100_wx_set_wap.any = internal constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@ipw2100_wx_set_wap.off = internal constant [6 x i8] zeroinitializer, align 1
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"exit - disable mandatory BSSID\0A\00", align 1
@CFG_STATIC_BSSID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"SET BSSID -> %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_set_wap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_set_wap(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw2100_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %12)
  store %struct.ipw2100_priv* %13, %struct.ipw2100_priv** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %15 = bitcast %union.iwreq_data* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ARPHRD_ETHER, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %93

23:                                               ; preds = %4
  %24 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %25 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %28 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @STATUS_INITIALIZED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %88

36:                                               ; preds = %23
  %37 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %38 = bitcast %union.iwreq_data* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ipw2100_wx_set_wap.any, i64 0, i64 0), i32* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %46 = bitcast %union.iwreq_data* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ipw2100_wx_set_wap.off, i64 0, i64 0), i32* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %44, %36
  %53 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @CFG_STATIC_BSSID, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %57 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %61 = call i32 @ipw2100_set_mandatory_bssid(%struct.ipw2100_priv* %60, i32* null, i32 0)
  store i32 %61, i32* %11, align 4
  br label %88

62:                                               ; preds = %44
  %63 = load i32, i32* @CFG_STATIC_BSSID, align 4
  %64 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %65 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %69 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %72 = bitcast %union.iwreq_data* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @ETH_ALEN, align 4
  %76 = call i32 @memcpy(i32 %70, i32* %74, i32 %75)
  %77 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %78 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %79 = bitcast %union.iwreq_data* %78 to %struct.TYPE_2__*
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @ipw2100_set_mandatory_bssid(%struct.ipw2100_priv* %77, i32* %81, i32 0)
  store i32 %82, i32* %11, align 4
  %83 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %84 = bitcast %union.iwreq_data* %83 to %struct.TYPE_2__*
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %86)
  br label %88

88:                                               ; preds = %62, %52, %33
  %89 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %90 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %88, %20
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, ...) #1

declare dso_local i32 @ipw2100_set_mandatory_bssid(%struct.ipw2100_priv*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
