; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_bss_update_probe_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_bss_update_probe_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32 }
%struct.brcms_bss_cfg = type { i32 }

@BCN_TMPL_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IEEE80211_STYPE_PROBE_RESP = common dso_local global i32 0, align 4
@T_PRS_TPL_BASE = common dso_local global i32 0, align 4
@M_PRB_RESP_FRM_LEN = common dso_local global i32 0, align 4
@D11_PHY_HDR_LEN = common dso_local global i32 0, align 4
@FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, %struct.brcms_bss_cfg*, i32)* @brcms_c_bss_update_probe_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_bss_update_probe_resp(%struct.brcms_c_info* %0, %struct.brcms_bss_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca %struct.brcms_bss_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store %struct.brcms_bss_cfg* %1, %struct.brcms_bss_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @BCN_TMPL_LEN, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @BCN_TMPL_LEN, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i32* @kmalloc(i32 %10, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %66

16:                                               ; preds = %3
  %17 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %18 = load i32, i32* @IEEE80211_STYPE_PROBE_RESP, align 4
  %19 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %5, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @brcms_c_bcn_prb_template(%struct.brcms_c_info* %17, i32 %18, i32 0, %struct.brcms_bss_cfg* %19, i32* %20, i32* %8)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %26 = call i32 @brcms_c_suspend_mac_and_wait(%struct.brcms_c_info* %25)
  br label %27

27:                                               ; preds = %24, %16
  %28 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %29 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @T_PRS_TPL_BASE, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 3
  %34 = and i32 %33, -4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @brcms_b_write_template_ram(i32 %30, i32 %31, i32 %34, i32* %35)
  %37 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %38 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @M_PRB_RESP_FRM_LEN, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @brcms_b_write_shm(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %44 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %5, align 8
  %45 = call i32 @brcms_c_shm_ssid_upd(%struct.brcms_c_info* %43, %struct.brcms_bss_cfg* %44)
  %46 = load i32, i32* @D11_PHY_HDR_LEN, align 4
  %47 = sub nsw i32 0, %46
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @FCS_LEN, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @brcms_c_mod_prb_rsp_rate_table(%struct.brcms_c_info* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %27
  %61 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %62 = call i32 @brcms_c_enable_mac(%struct.brcms_c_info* %61)
  br label %63

63:                                               ; preds = %60, %27
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @kfree(i32* %64)
  br label %66

66:                                               ; preds = %63, %15
  ret void
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @brcms_c_bcn_prb_template(%struct.brcms_c_info*, i32, i32, %struct.brcms_bss_cfg*, i32*, i32*) #1

declare dso_local i32 @brcms_c_suspend_mac_and_wait(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_b_write_template_ram(i32, i32, i32, i32*) #1

declare dso_local i32 @brcms_b_write_shm(i32, i32, i32) #1

declare dso_local i32 @brcms_c_shm_ssid_upd(%struct.brcms_c_info*, %struct.brcms_bss_cfg*) #1

declare dso_local i32 @brcms_c_mod_prb_rsp_rate_table(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @brcms_c_enable_mac(%struct.brcms_c_info*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
