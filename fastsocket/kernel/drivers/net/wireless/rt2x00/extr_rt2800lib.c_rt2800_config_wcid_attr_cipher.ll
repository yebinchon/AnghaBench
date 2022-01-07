; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_wcid_attr_cipher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_wcid_attr_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_crypto = type { i64, i32 }
%struct.ieee80211_key_conf = type { i32, i32, i32 }
%struct.mac_iveiv_entry = type { i32* }

@SET_KEY = common dso_local global i64 0, align 8
@MAC_WCID_ATTRIBUTE_KEYTAB = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@MAC_WCID_ATTRIBUTE_CIPHER = common dso_local global i32 0, align 4
@MAC_WCID_ATTRIBUTE_CIPHER_EXT = common dso_local global i32 0, align 4
@MAC_WCID_ATTRIBUTE_RX_WIUDF = common dso_local global i32 0, align 4
@CIPHER_TKIP = common dso_local global i32 0, align 4
@CIPHER_TKIP_NO_MIC = common dso_local global i32 0, align 4
@CIPHER_AES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_crypto*, %struct.ieee80211_key_conf*)* @rt2800_config_wcid_attr_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_wcid_attr_cipher(%struct.rt2x00_dev* %0, %struct.rt2x00lib_crypto* %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rt2x00lib_crypto*, align 8
  %6 = alloca %struct.ieee80211_key_conf*, align 8
  %7 = alloca %struct.mac_iveiv_entry, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rt2x00lib_crypto* %1, %struct.rt2x00lib_crypto** %5, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %6, align 8
  %10 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MAC_WCID_ATTR_ENTRY(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %15 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SET_KEY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %3
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %20, i32 %21, i32* %9)
  %23 = load i32, i32* @MAC_WCID_ATTRIBUTE_KEYTAB, align 4
  %24 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @rt2x00_set_field32(i32* %9, i32 %23, i32 %32)
  %34 = load i32, i32* @MAC_WCID_ATTRIBUTE_CIPHER, align 4
  %35 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %36 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 7
  %39 = call i32 @rt2x00_set_field32(i32* %9, i32 %34, i32 %38)
  %40 = load i32, i32* @MAC_WCID_ATTRIBUTE_CIPHER_EXT, align 4
  %41 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %42 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 8
  %45 = ashr i32 %44, 3
  %46 = call i32 @rt2x00_set_field32(i32* %9, i32 %40, i32 %45)
  %47 = load i32, i32* @MAC_WCID_ATTRIBUTE_RX_WIUDF, align 4
  %48 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %49 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @rt2x00_set_field32(i32* %9, i32 %47, i32 %50)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %52, i32 %53, i32 %54)
  br label %72

56:                                               ; preds = %3
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %57, i32 %58, i32* %9)
  %60 = load i32, i32* @MAC_WCID_ATTRIBUTE_KEYTAB, align 4
  %61 = call i32 @rt2x00_set_field32(i32* %9, i32 %60, i32 0)
  %62 = load i32, i32* @MAC_WCID_ATTRIBUTE_CIPHER, align 4
  %63 = call i32 @rt2x00_set_field32(i32* %9, i32 %62, i32 0)
  %64 = load i32, i32* @MAC_WCID_ATTRIBUTE_CIPHER_EXT, align 4
  %65 = call i32 @rt2x00_set_field32(i32* %9, i32 %64, i32 0)
  %66 = load i32, i32* @MAC_WCID_ATTRIBUTE_RX_WIUDF, align 4
  %67 = call i32 @rt2x00_set_field32(i32* %9, i32 %66, i32 0)
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %56, %19
  %73 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @MAC_IVEIV_ENTRY(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = call i32 @memset(%struct.mac_iveiv_entry* %7, i32 0, i32 8)
  %78 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %79 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CIPHER_TKIP, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %72
  %84 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %85 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @CIPHER_TKIP_NO_MIC, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %5, align 8
  %91 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CIPHER_AES, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89, %83, %72
  %96 = getelementptr inbounds %struct.mac_iveiv_entry, %struct.mac_iveiv_entry* %7, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, 32
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %89
  %102 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %103 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 6
  %106 = getelementptr inbounds %struct.mac_iveiv_entry, %struct.mac_iveiv_entry* %7, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 4
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @rt2800_register_multiwrite(%struct.rt2x00_dev* %111, i32 %112, %struct.mac_iveiv_entry* %7, i32 8)
  ret void
}

declare dso_local i32 @MAC_WCID_ATTR_ENTRY(i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @MAC_IVEIV_ENTRY(i32) #1

declare dso_local i32 @memset(%struct.mac_iveiv_entry*, i32, i32) #1

declare dso_local i32 @rt2800_register_multiwrite(%struct.rt2x00_dev*, i32, %struct.mac_iveiv_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
