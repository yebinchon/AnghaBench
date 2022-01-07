; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_scan.c_orinoco_add_extscan_result.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_scan.c_orinoco_add_extscan_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i32 }
%struct.agere_ext_scan_info = type { i32*, i32, i32, i32, i32, i32 }
%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_bss = type { i32 }

@WLAN_EID_DS_PARAMS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @orinoco_add_extscan_result(%struct.orinoco_private* %0, %struct.agere_ext_scan_info* %1, i64 %2) #0 {
  %4 = alloca %struct.orinoco_private*, align 8
  %5 = alloca %struct.agere_ext_scan_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.cfg80211_bss*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %4, align 8
  store %struct.agere_ext_scan_info* %1, %struct.agere_ext_scan_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %19 = call %struct.wiphy* @priv_to_wiphy(%struct.orinoco_private* %18)
  store %struct.wiphy* %19, %struct.wiphy** %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 32
  store i64 %21, i64* %15, align 8
  %22 = load i32, i32* @WLAN_EID_DS_PARAMS, align 4
  %23 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %24 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %15, align 8
  %27 = call i32* @cfg80211_find_ie(i32 %22, i32* %25, i64 %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 0, %34 ]
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @ieee80211_dsss_chan_to_freq(i32 %37)
  store i32 %38, i32* %17, align 4
  %39 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %40 = load i32, i32* %17, align 4
  %41 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %39, i32 %40)
  store %struct.ieee80211_channel* %41, %struct.ieee80211_channel** %8, align 8
  %42 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %43 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le64_to_cpu(i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %47 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %51 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @le16_to_cpu(i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %55 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %10, align 8
  %57 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %58 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SIGNAL_TO_MBM(i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %62 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %63 = load %struct.agere_ext_scan_info*, %struct.agere_ext_scan_info** %5, align 8
  %64 = getelementptr inbounds %struct.agere_ext_scan_info, %struct.agere_ext_scan_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.cfg80211_bss* @cfg80211_inform_bss(%struct.wiphy* %61, %struct.ieee80211_channel* %62, i32 %65, i32 %66, i32 %67, i32 %68, i32* %69, i64 %70, i32 %71, i32 %72)
  store %struct.cfg80211_bss* %73, %struct.cfg80211_bss** %9, align 8
  %74 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %75 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %76 = call i32 @cfg80211_put_bss(%struct.wiphy* %74, %struct.cfg80211_bss* %75)
  ret void
}

declare dso_local %struct.wiphy* @priv_to_wiphy(%struct.orinoco_private*) #1

declare dso_local i32* @cfg80211_find_ie(i32, i32*, i64) #1

declare dso_local i32 @ieee80211_dsss_chan_to_freq(i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SIGNAL_TO_MBM(i32) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_inform_bss(%struct.wiphy*, %struct.ieee80211_channel*, i32, i32, i32, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @cfg80211_put_bss(%struct.wiphy*, %struct.cfg80211_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
