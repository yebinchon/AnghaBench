; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_set_wap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_set_wap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ipw_priv = type { i8*, i32, i32 }

@ipw_wx_set_wap.any = internal constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@ipw_wx_set_wap.off = internal constant [6 x i8] zeroinitializer, align 1
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Setting AP BSSID to ANY\0A\00", align 1
@CFG_STATIC_BSSID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Attempting to associate with new parameters.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"BSSID set to current BSSID.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Setting mandatory BSSID to %pM\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"[re]association triggered due to BSSID change.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_wap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_wap(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %11)
  store %struct.ipw_priv* %12, %struct.ipw_priv** %10, align 8
  %13 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %14 = bitcast %union.iwreq_data* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ARPHRD_ETHER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %102

22:                                               ; preds = %4
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %24 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %27 = bitcast %union.iwreq_data* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ipw_wx_set_wap.any, i64 0, i64 0), i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %35 = bitcast %union.iwreq_data* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ipw_wx_set_wap.off, i64 0, i64 0), i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %33, %22
  %42 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @CFG_STATIC_BSSID, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %46 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = call i32 @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %51 = call i32 @ipw_associate(%struct.ipw_priv* %50)
  %52 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %53 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  store i32 0, i32* %5, align 4
  br label %102

55:                                               ; preds = %33
  %56 = load i32, i32* @CFG_STATIC_BSSID, align 4
  %57 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %58 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %62 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %65 = bitcast %union.iwreq_data* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ETH_ALEN, align 4
  %69 = call i32 @memcmp(i8* %63, i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %55
  %72 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %74 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  store i32 0, i32* %5, align 4
  br label %102

76:                                               ; preds = %55
  %77 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %78 = bitcast %union.iwreq_data* %77 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %83 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %86 = bitcast %union.iwreq_data* %85 to %struct.TYPE_2__*
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ETH_ALEN, align 4
  %90 = call i32 @memcpy(i8* %84, i32 %88, i32 %89)
  %91 = call i32 @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %93 = call i32 @ipw_disassociate(%struct.ipw_priv* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %76
  %96 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %97 = call i32 @ipw_associate(%struct.ipw_priv* %96)
  br label %98

98:                                               ; preds = %95, %76
  %99 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %100 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %99, i32 0, i32 1
  %101 = call i32 @mutex_unlock(i32* %100)
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %71, %41, %19
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, ...) #1

declare dso_local i32 @IPW_DEBUG_ASSOC(i8*) #1

declare dso_local i32 @ipw_associate(%struct.ipw_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ipw_disassociate(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
