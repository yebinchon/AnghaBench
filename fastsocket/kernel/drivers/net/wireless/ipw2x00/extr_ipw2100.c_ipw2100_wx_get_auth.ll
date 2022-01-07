; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i32, i32 }
%struct.ipw2100_priv = type { %struct.libipw_device* }
%struct.libipw_device = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32)* }

@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Can't get TKIP countermeasures: crypt not set!\0A\00", align 1
@IEEE80211_CRYPTO_TKIP_COUNTERMEASURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_get_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_get_auth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw2100_priv*, align 8
  %11 = alloca %struct.libipw_device*, align 8
  %12 = alloca %struct.lib80211_crypt_data*, align 8
  %13 = alloca %struct.iw_param*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %15)
  store %struct.ipw2100_priv* %16, %struct.ipw2100_priv** %10, align 8
  %17 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %18 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %17, i32 0, i32 0
  %19 = load %struct.libipw_device*, %struct.libipw_device** %18, align 8
  store %struct.libipw_device* %19, %struct.libipw_device** %11, align 8
  %20 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %21 = bitcast %union.iwreq_data* %20 to %struct.iw_param*
  store %struct.iw_param* %21, %struct.iw_param** %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %23 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IW_AUTH_INDEX, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %106 [
    i32 128, label %27
    i32 136, label %27
    i32 137, label %27
    i32 134, label %27
    i32 130, label %30
    i32 135, label %73
    i32 138, label %79
    i32 129, label %88
    i32 131, label %94
    i32 132, label %100
    i32 133, label %100
  ]

27:                                               ; preds = %4, %4, %4, %4
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %14, align 4
  br label %109

30:                                               ; preds = %4
  %31 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %32 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %31, i32 0, i32 0
  %33 = load %struct.libipw_device*, %struct.libipw_device** %32, align 8
  %34 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %35, align 8
  %37 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %38 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %37, i32 0, i32 0
  %39 = load %struct.libipw_device*, %struct.libipw_device** %38, align 8
  %40 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %36, i64 %42
  %44 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %43, align 8
  store %struct.lib80211_crypt_data* %44, %struct.lib80211_crypt_data** %12, align 8
  %45 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %46 = icmp ne %struct.lib80211_crypt_data* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %30
  %48 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %49 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32 (i32)*, i32 (i32)** %51, align 8
  %53 = icmp ne i32 (i32)* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %47, %30
  %55 = call i32 @IPW_DEBUG_WARNING(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %109

56:                                               ; preds = %47
  %57 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %58 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %63 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %61(i32 %64)
  %66 = load i32, i32* @IEEE80211_CRYPTO_TKIP_COUNTERMEASURES, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %72 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %109

73:                                               ; preds = %4
  %74 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %75 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %78 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %109

79:                                               ; preds = %4
  %80 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %81 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %80, i32 0, i32 0
  %82 = load %struct.libipw_device*, %struct.libipw_device** %81, align 8
  %83 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %87 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %109

88:                                               ; preds = %4
  %89 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %90 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %93 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %109

94:                                               ; preds = %4
  %95 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %96 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %99 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %109

100:                                              ; preds = %4, %4
  %101 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %102 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %105 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %109

106:                                              ; preds = %4
  %107 = load i32, i32* @EOPNOTSUPP, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %110

109:                                              ; preds = %100, %94, %88, %79, %73, %56, %54, %27
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @IPW_DEBUG_WARNING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
