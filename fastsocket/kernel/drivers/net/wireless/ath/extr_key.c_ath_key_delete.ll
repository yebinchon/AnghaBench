; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_key.c_ath_key_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_key.c_ath_key_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i32, i32, i32, i32 }
%struct.ieee80211_key_conf = type { i64, i64 }

@IEEE80211_WEP_NKID = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@ATH_CRYPT_CAP_MIC_COMBINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_key_delete(%struct.ath_common* %0, %struct.ieee80211_key_conf* %1) #0 {
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.ath_common* %0, %struct.ath_common** %3, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %4, align 8
  %5 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %6 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @ath_hw_keyreset(%struct.ath_common* %5, i64 %8)
  %10 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IEEE80211_WEP_NKID, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %108

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %21 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clear_bit(i64 %19, i32 %22)
  %24 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %28 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clear_bit(i64 %26, i32 %29)
  %31 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %16
  br label %108

37:                                               ; preds = %16
  %38 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 64
  %42 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %43 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clear_bit(i64 %41, i32 %44)
  %46 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %50 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clear_bit(i64 %48, i32 %51)
  %53 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 64
  %57 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %58 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clear_bit(i64 %56, i32 %59)
  %61 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %62 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ATH_CRYPT_CAP_MIC_COMBINED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %108, label %67

67:                                               ; preds = %37
  %68 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %69 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 32
  %73 = call i32 @ath_hw_keyreset(%struct.ath_common* %68, i64 %72)
  %74 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %75 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 32
  %78 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %79 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @clear_bit(i64 %77, i32 %80)
  %82 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 64
  %86 = add nsw i64 %85, 32
  %87 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %88 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @clear_bit(i64 %86, i32 %89)
  %91 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %92 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 32
  %95 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %96 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @clear_bit(i64 %94, i32 %97)
  %99 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %100 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 64
  %103 = add nsw i64 %102, 32
  %104 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %105 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @clear_bit(i64 %103, i32 %106)
  br label %108

108:                                              ; preds = %15, %36, %67, %37
  ret void
}

declare dso_local i32 @ath_hw_keyreset(%struct.ath_common*, i64) #1

declare dso_local i32 @clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
