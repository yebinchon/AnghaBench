; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i64, i32 }
%struct.ipw2100_priv = type { %struct.libipw_device* }
%struct.libipw_device = type { i32, i32, i32, i32 (i32, %struct.libipw_security*)*, i32, %struct.TYPE_3__ }
%struct.libipw_security = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (i32)*, i32 (i64, i32)* }

@IW_AUTH_INDEX = common dso_local global i64 0, align 8
@IEEE80211_CRYPTO_TKIP_COUNTERMEASURES = common dso_local global i64 0, align 8
@SEC_ENABLED = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@SEC_LEVEL_0 = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_set_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_set_auth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw2100_priv*, align 8
  %11 = alloca %struct.libipw_device*, align 8
  %12 = alloca %struct.iw_param*, align 8
  %13 = alloca %struct.lib80211_crypt_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.libipw_security, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %17)
  store %struct.ipw2100_priv* %18, %struct.ipw2100_priv** %10, align 8
  %19 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %20 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %19, i32 0, i32 0
  %21 = load %struct.libipw_device*, %struct.libipw_device** %20, align 8
  store %struct.libipw_device* %21, %struct.libipw_device** %11, align 8
  %22 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %23 = bitcast %union.iwreq_data* %22 to %struct.iw_param*
  store %struct.iw_param* %23, %struct.iw_param** %12, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %25 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IW_AUTH_INDEX, align 8
  %28 = and i64 %26, %27
  switch i64 %28, label %173 [
    i64 128, label %29
    i64 135, label %29
    i64 136, label %29
    i64 133, label %29
    i64 130, label %30
    i64 134, label %96
    i64 137, label %149
    i64 129, label %155
    i64 131, label %161
    i64 132, label %167
  ]

29:                                               ; preds = %4, %4, %4, %4
  br label %176

30:                                               ; preds = %4
  %31 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %32 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %31, i32 0, i32 0
  %33 = load %struct.libipw_device*, %struct.libipw_device** %32, align 8
  %34 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %35, align 8
  %37 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %38 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %37, i32 0, i32 0
  %39 = load %struct.libipw_device*, %struct.libipw_device** %38, align 8
  %40 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %36, i64 %42
  %44 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %43, align 8
  store %struct.lib80211_crypt_data* %44, %struct.lib80211_crypt_data** %13, align 8
  %45 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %46 = icmp ne %struct.lib80211_crypt_data* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %30
  %48 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %49 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32 (i64, i32)*, i32 (i64, i32)** %51, align 8
  %53 = icmp ne i32 (i64, i32)* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %56 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64 (i32)*, i64 (i32)** %58, align 8
  %60 = icmp ne i64 (i32)* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54, %47, %30
  br label %176

62:                                               ; preds = %54
  %63 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %64 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64 (i32)*, i64 (i32)** %66, align 8
  %68 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %69 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 %67(i32 %70)
  store i64 %71, i64* %14, align 8
  %72 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %73 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %62
  %77 = load i64, i64* @IEEE80211_CRYPTO_TKIP_COUNTERMEASURES, align 8
  %78 = load i64, i64* %14, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %14, align 8
  br label %85

80:                                               ; preds = %62
  %81 = load i64, i64* @IEEE80211_CRYPTO_TKIP_COUNTERMEASURES, align 8
  %82 = xor i64 %81, -1
  %83 = load i64, i64* %14, align 8
  %84 = and i64 %83, %82
  store i64 %84, i64* %14, align 8
  br label %85

85:                                               ; preds = %80, %76
  %86 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %87 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32 (i64, i32)*, i32 (i64, i32)** %89, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %93 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %90(i64 %91, i32 %94)
  br label %176

96:                                               ; preds = %4
  %97 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 0
  store i32 0, i32* %97, align 4
  %98 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 1
  %99 = load i32, i32* @SEC_ENABLED, align 4
  store i32 %99, i32* %98, align 4
  %100 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 2
  %101 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %102 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %100, align 4
  %104 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %105 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %108 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %107, i32 0, i32 0
  %109 = load %struct.libipw_device*, %struct.libipw_device** %108, align 8
  %110 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %109, i32 0, i32 4
  store i32 %106, i32* %110, align 8
  %111 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %112 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %96
  %116 = load i32, i32* @SEC_LEVEL, align 4
  %117 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* @SEC_LEVEL_0, align 4
  %121 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 0
  store i32 %120, i32* %121, align 4
  br label %129

122:                                              ; preds = %96
  %123 = load i32, i32* @SEC_LEVEL, align 4
  %124 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* @SEC_LEVEL_1, align 4
  %128 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 0
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %122, %115
  %130 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %131 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %130, i32 0, i32 0
  %132 = load %struct.libipw_device*, %struct.libipw_device** %131, align 8
  %133 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %132, i32 0, i32 3
  %134 = load i32 (i32, %struct.libipw_security*)*, i32 (i32, %struct.libipw_security*)** %133, align 8
  %135 = icmp ne i32 (i32, %struct.libipw_security*)* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %129
  %137 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %138 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %137, i32 0, i32 0
  %139 = load %struct.libipw_device*, %struct.libipw_device** %138, align 8
  %140 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %139, i32 0, i32 3
  %141 = load i32 (i32, %struct.libipw_security*)*, i32 (i32, %struct.libipw_security*)** %140, align 8
  %142 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %143 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %142, i32 0, i32 0
  %144 = load %struct.libipw_device*, %struct.libipw_device** %143, align 8
  %145 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 %141(i32 %146, %struct.libipw_security* %16)
  br label %148

148:                                              ; preds = %136, %129
  br label %176

149:                                              ; preds = %4
  %150 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %151 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %152 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @ipw2100_wpa_set_auth_algs(%struct.ipw2100_priv* %150, i32 %153)
  store i32 %154, i32* %15, align 4
  br label %176

155:                                              ; preds = %4
  %156 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %157 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %158 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @ipw2100_wpa_enable(%struct.ipw2100_priv* %156, i32 %159)
  store i32 %160, i32* %15, align 4
  br label %176

161:                                              ; preds = %4
  %162 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %163 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %166 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  br label %176

167:                                              ; preds = %4
  %168 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %169 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %172 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  br label %176

173:                                              ; preds = %4
  %174 = load i32, i32* @EOPNOTSUPP, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %5, align 4
  br label %178

176:                                              ; preds = %167, %161, %155, %149, %148, %85, %61, %29
  %177 = load i32, i32* %15, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %176, %173
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @ipw2100_wpa_set_auth_algs(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @ipw2100_wpa_enable(%struct.ipw2100_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
