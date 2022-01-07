; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_pairwise_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_pairwise_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_crypto = type { i64, i64, i32, i32, i32 }
%struct.ieee80211_key_conf = type { i64 }
%struct.hw_key_entry = type { i32, i32, i32 }

@SET_KEY = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_config_pairwise_key(%struct.rt2x00_dev* %0, %struct.rt2x00lib_crypto* %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rt2x00lib_crypto*, align 8
  %7 = alloca %struct.ieee80211_key_conf*, align 8
  %8 = alloca %struct.hw_key_entry, align 4
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.rt2x00lib_crypto* %1, %struct.rt2x00lib_crypto** %6, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %7, align 8
  %10 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %11 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SET_KEY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %3
  %16 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %17 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %59

23:                                               ; preds = %15
  %24 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %25 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %8, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %32 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @memcpy(i32 %30, i32 %33, i32 4)
  %35 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %38 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32 %36, i32 %39, i32 4)
  %41 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %44 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memcpy(i32 %42, i32 %45, i32 4)
  %47 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %48 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @PAIRWISE_KEY_ENTRY(i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @rt2800_register_multiwrite(%struct.rt2x00_dev* %51, i32 %52, %struct.hw_key_entry* %8, i32 12)
  br label %54

54:                                               ; preds = %23, %3
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %56 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %57 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %58 = call i32 @rt2800_config_wcid_attr_cipher(%struct.rt2x00_dev* %55, %struct.rt2x00lib_crypto* %56, %struct.ieee80211_key_conf* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %20
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @PAIRWISE_KEY_ENTRY(i64) #1

declare dso_local i32 @rt2800_register_multiwrite(%struct.rt2x00_dev*, i32, %struct.hw_key_entry*, i32) #1

declare dso_local i32 @rt2800_config_wcid_attr_cipher(%struct.rt2x00_dev*, %struct.rt2x00lib_crypto*, %struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
