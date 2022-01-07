; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_edcf_setparams.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_edcf_setparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edcf_acparam = type { i32, i32, i32, i32, i32, i32 }
%struct.brcms_c_info = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i8*, i8*, i32 }

@brcms_c_edcf_setparams.default_edcf_acparams = internal constant [4 x %struct.edcf_acparam] [%struct.edcf_acparam { i32 139, i32 138, i32 137, i32 0, i32 0, i32 0 }, %struct.edcf_acparam { i32 136, i32 135, i32 134, i32 0, i32 0, i32 0 }, %struct.edcf_acparam { i32 133, i32 132, i32 131, i32 0, i32 0, i32 0 }, %struct.edcf_acparam { i32 130, i32 129, i32 128, i32 0, i32 0, i32 0 }], align 16
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@EDCF_ACI_MASK = common dso_local global i32 0, align 4
@EDCF_ACI_SHIFT = common dso_local global i32 0, align 4
@EDCF_ECWMIN_MASK = common dso_local global i32 0, align 4
@EDCF_ECWMAX_MASK = common dso_local global i32 0, align 4
@EDCF_ECWMAX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, i32)* @brcms_c_edcf_setparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_edcf_setparams(%struct.brcms_c_info* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_tx_queue_params, align 8
  %8 = alloca %struct.edcf_acparam*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.edcf_acparam* getelementptr inbounds ([4 x %struct.edcf_acparam], [4 x %struct.edcf_acparam]* @brcms_c_edcf_setparams.default_edcf_acparams, i64 0, i64 0), %struct.edcf_acparam** %8, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %49, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %9
  %14 = load %struct.edcf_acparam*, %struct.edcf_acparam** %8, align 8
  %15 = getelementptr inbounds %struct.edcf_acparam, %struct.edcf_acparam* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EDCF_ACI_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @EDCF_ACI_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.edcf_acparam*, %struct.edcf_acparam** %8, align 8
  %22 = getelementptr inbounds %struct.edcf_acparam, %struct.edcf_acparam* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %7, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = load %struct.edcf_acparam*, %struct.edcf_acparam** %8, align 8
  %26 = getelementptr inbounds %struct.edcf_acparam, %struct.edcf_acparam* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load %struct.edcf_acparam*, %struct.edcf_acparam** %8, align 8
  %30 = getelementptr inbounds %struct.edcf_acparam, %struct.edcf_acparam* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EDCF_ECWMIN_MASK, align 4
  %33 = and i32 %31, %32
  %34 = call i8* @EDCF_ECW2CW(i32 %33)
  %35 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %7, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = load %struct.edcf_acparam*, %struct.edcf_acparam** %8, align 8
  %37 = getelementptr inbounds %struct.edcf_acparam, %struct.edcf_acparam* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EDCF_ECWMAX_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @EDCF_ECWMAX_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = call i8* @EDCF_ECW2CW(i32 %42)
  %44 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %7, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @brcms_c_wme_setparams(%struct.brcms_c_info* %45, i32 %46, %struct.ieee80211_tx_queue_params* %7, i32 %47)
  br label %49

49:                                               ; preds = %13
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load %struct.edcf_acparam*, %struct.edcf_acparam** %8, align 8
  %53 = getelementptr inbounds %struct.edcf_acparam, %struct.edcf_acparam* %52, i32 1
  store %struct.edcf_acparam* %53, %struct.edcf_acparam** %8, align 8
  br label %9

54:                                               ; preds = %9
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %59 = call i32 @brcms_c_suspend_mac_and_wait(%struct.brcms_c_info* %58)
  %60 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %61 = call i32 @brcms_c_enable_mac(%struct.brcms_c_info* %60)
  br label %62

62:                                               ; preds = %57, %54
  ret void
}

declare dso_local i8* @EDCF_ECW2CW(i32) #1

declare dso_local i32 @brcms_c_wme_setparams(%struct.brcms_c_info*, i32, %struct.ieee80211_tx_queue_params*, i32) #1

declare dso_local i32 @brcms_c_suspend_mac_and_wait(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_enable_mac(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
