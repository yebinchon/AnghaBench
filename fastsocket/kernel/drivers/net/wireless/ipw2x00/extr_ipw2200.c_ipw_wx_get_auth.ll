; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_get_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_get_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i32, i32 }
%struct.ipw_priv = type { %struct.libipw_device* }
%struct.libipw_device = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32)* }

@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_TKIP_COUNTERMEASURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_get_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_get_auth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw_priv*, align 8
  %11 = alloca %struct.libipw_device*, align 8
  %12 = alloca %struct.lib80211_crypt_data*, align 8
  %13 = alloca %struct.iw_param*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %15)
  store %struct.ipw_priv* %16, %struct.ipw_priv** %10, align 8
  %17 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %18 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %17, i32 0, i32 0
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
  switch i32 %26, label %103 [
    i32 128, label %27
    i32 136, label %27
    i32 137, label %27
    i32 134, label %27
    i32 130, label %30
    i32 135, label %72
    i32 138, label %78
    i32 129, label %85
    i32 131, label %91
    i32 132, label %97
    i32 133, label %97
  ]

27:                                               ; preds = %4, %4, %4, %4
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %14, align 4
  br label %106

30:                                               ; preds = %4
  %31 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %32 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %31, i32 0, i32 0
  %33 = load %struct.libipw_device*, %struct.libipw_device** %32, align 8
  %34 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %35, align 8
  %37 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %38 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %37, i32 0, i32 0
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
  br i1 %53, label %55, label %54

54:                                               ; preds = %47, %30
  br label %106

55:                                               ; preds = %47
  %56 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %57 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32 (i32)*, i32 (i32)** %59, align 8
  %61 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %62 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %60(i32 %63)
  %65 = load i32, i32* @IEEE80211_CRYPTO_TKIP_COUNTERMEASURES, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %71 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %106

72:                                               ; preds = %4
  %73 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %74 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %77 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %106

78:                                               ; preds = %4
  %79 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %80 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %84 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %106

85:                                               ; preds = %4
  %86 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %87 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %90 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %106

91:                                               ; preds = %4
  %92 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %93 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %96 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %106

97:                                               ; preds = %4, %4
  %98 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %99 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %102 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %106

103:                                              ; preds = %4
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %107

106:                                              ; preds = %97, %91, %85, %78, %72, %55, %54, %27
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %103
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
