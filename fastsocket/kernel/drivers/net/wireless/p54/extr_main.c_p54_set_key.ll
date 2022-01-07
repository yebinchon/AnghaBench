; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54_common* }
%struct.p54_common = type { i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64* }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32, i32, i32 }

@modparam_nohwcrypt = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_RX_MGMT = common dso_local global i32 0, align 4
@SET_KEY = common dso_local global i32 0, align 4
@BR_DESC_PRIV_CAP_MICHAEL = common dso_local global i32 0, align 4
@BR_DESC_PRIV_CAP_TKIP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@P54_CRYPTO_TKIPMICHAEL = common dso_local global i64 0, align 8
@BR_DESC_PRIV_CAP_WEP = common dso_local global i32 0, align 4
@P54_CRYPTO_WEP = common dso_local global i64 0, align 8
@BR_DESC_PRIV_CAP_AESCCMP = common dso_local global i32 0, align 4
@P54_CRYPTO_AESCCMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @p54_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.p54_common*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = load %struct.p54_common*, %struct.p54_common** %18, align 8
  store %struct.p54_common* %19, %struct.p54_common** %12, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i64* null, i64** %16, align 8
  %20 = load i64, i64* @modparam_nohwcrypt, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %170

25:                                               ; preds = %5
  %26 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %27 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_KEY_FLAG_RX_MGMT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %170

35:                                               ; preds = %25
  %36 = load %struct.p54_common*, %struct.p54_common** %12, align 8
  %37 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SET_KEY, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %116

42:                                               ; preds = %35
  %43 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %44 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %99 [
    i32 130, label %46
    i32 128, label %65
    i32 129, label %65
    i32 131, label %82
  ]

46:                                               ; preds = %42
  %47 = load %struct.p54_common*, %struct.p54_common** %12, align 8
  %48 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BR_DESC_PRIV_CAP_MICHAEL, align 4
  %51 = load i32, i32* @BR_DESC_PRIV_CAP_TKIP, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %14, align 4
  br label %165

58:                                               ; preds = %46
  %59 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %60 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %61 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i64, i64* @P54_CRYPTO_TKIPMICHAEL, align 8
  store i64 %64, i64* %15, align 8
  br label %102

65:                                               ; preds = %42, %42
  %66 = load %struct.p54_common*, %struct.p54_common** %12, align 8
  %67 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BR_DESC_PRIV_CAP_WEP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @EOPNOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %14, align 4
  br label %165

75:                                               ; preds = %65
  %76 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %77 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %78 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i64, i64* @P54_CRYPTO_WEP, align 8
  store i64 %81, i64* %15, align 8
  br label %102

82:                                               ; preds = %42
  %83 = load %struct.p54_common*, %struct.p54_common** %12, align 8
  %84 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @BR_DESC_PRIV_CAP_AESCCMP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @EOPNOTSUPP, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %14, align 4
  br label %165

92:                                               ; preds = %82
  %93 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %94 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %95 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load i64, i64* @P54_CRYPTO_AESCCMP, align 8
  store i64 %98, i64* %15, align 8
  br label %102

99:                                               ; preds = %42
  %100 = load i32, i32* @EOPNOTSUPP, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %14, align 4
  br label %165

102:                                              ; preds = %92, %75, %58
  %103 = load %struct.p54_common*, %struct.p54_common** %12, align 8
  %104 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.p54_common*, %struct.p54_common** %12, align 8
  %107 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @bitmap_find_free_region(i32 %105, i32 %108, i32 0)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %114 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %113, i32 0, i32 2
  store i32 255, i32* %114, align 4
  br label %165

115:                                              ; preds = %102
  br label %129

116:                                              ; preds = %35
  %117 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %118 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp eq i32 %120, 255
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %165

123:                                              ; preds = %116
  %124 = load %struct.p54_common*, %struct.p54_common** %12, align 8
  %125 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @bitmap_release_region(i32 %126, i32 %127, i32 0)
  store i64 0, i64* %15, align 8
  br label %129

129:                                              ; preds = %123, %115
  %130 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %131 = icmp ne %struct.ieee80211_sta* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %134 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  store i64* %135, i64** %16, align 8
  br label %136

136:                                              ; preds = %132, %129
  %137 = load %struct.p54_common*, %struct.p54_common** %12, align 8
  %138 = load i64, i64* %15, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %141 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %144 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load i64*, i64** %16, align 8
  %147 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %148 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @p54_upload_key(%struct.p54_common* %137, i64 %138, i32 %139, i32 %142, i32 %145, i64* %146, i32 %149)
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %136
  %154 = load %struct.p54_common*, %struct.p54_common** %12, align 8
  %155 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @bitmap_release_region(i32 %156, i32 %157, i32 0)
  %159 = load i32, i32* @EOPNOTSUPP, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %14, align 4
  br label %165

161:                                              ; preds = %136
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %164 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %153, %122, %112, %99, %89, %72, %55
  %166 = load %struct.p54_common*, %struct.p54_common** %12, align 8
  %167 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %166, i32 0, i32 1
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %165, %32, %22
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @bitmap_release_region(i32, i32, i32) #1

declare dso_local i32 @p54_upload_key(%struct.p54_common*, i64, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
