; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00crypto.c_rt2x00crypto_create_tx_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00crypto.c_rt2x00crypto_create_tx_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.txentry_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32, i32, i32 }

@CAPABILITY_HW_CRYPTO = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_PAIRWISE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_MMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00crypto_create_tx_descriptor(%struct.rt2x00_dev* %0, %struct.sk_buff* %1, %struct.txentry_desc* %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.txentry_desc*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.txentry_desc* %2, %struct.txentry_desc** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %9)
  store %struct.ieee80211_tx_info* %10, %struct.ieee80211_tx_info** %7, align 8
  %11 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %13, align 8
  store %struct.ieee80211_key_conf* %14, %struct.ieee80211_key_conf** %8, align 8
  %15 = load i32, i32* @CAPABILITY_HW_CRYPTO, align 4
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %17 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %16, i32 0, i32 0
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %22 = icmp ne %struct.ieee80211_key_conf* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %3
  br label %83

24:                                               ; preds = %20
  %25 = load i32, i32* @ENTRY_TXD_ENCRYPT, align 4
  %26 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %27 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %26, i32 0, i32 0
  %28 = call i32 @__set_bit(i32 %25, i32* %27)
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %30 = call i32 @rt2x00crypto_key_to_cipher(%struct.ieee80211_key_conf* %29)
  %31 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %32 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load i32, i32* @ENTRY_TXD_ENCRYPT_PAIRWISE, align 4
  %41 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %42 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %41, i32 0, i32 0
  %43 = call i32 @__set_bit(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %39, %24
  %45 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %49 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %51 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %54 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %59 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %44
  %67 = load i32, i32* @ENTRY_TXD_ENCRYPT_IV, align 4
  %68 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %69 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %68, i32 0, i32 0
  %70 = call i32 @__set_bit(i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %66, %44
  %72 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %73 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @ENTRY_TXD_ENCRYPT_MMIC, align 4
  %80 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %81 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %80, i32 0, i32 0
  %82 = call i32 @__set_bit(i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %23, %78, %71
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00crypto_key_to_cipher(%struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
