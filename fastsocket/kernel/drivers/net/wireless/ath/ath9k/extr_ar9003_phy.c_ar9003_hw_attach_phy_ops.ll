; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_attach_phy_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_attach_phy_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_hw_private_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_hw_ops = type { i32, i32, i32, i32, i32, i32 }

@ar9003_hw_attach_phy_ops.ar9300_cca_regs = internal constant [6 x i32] [i32 133, i32 132, i32 131, i32 130, i32 129, i32 128], align 16
@ar9003_hw_set_channel = common dso_local global i32 0, align 4
@ar9003_hw_spur_mitigate = common dso_local global i32 0, align 4
@ar9003_hw_compute_pll_control = common dso_local global i32 0, align 4
@ar9003_hw_set_channel_regs = common dso_local global i32 0, align 4
@ar9003_hw_init_bb = common dso_local global i32 0, align 4
@ar9003_hw_process_ini = common dso_local global i32 0, align 4
@ar9003_hw_set_rfmode = common dso_local global i32 0, align 4
@ar9003_hw_mark_phy_inactive = common dso_local global i32 0, align 4
@ar9003_hw_set_delta_slope = common dso_local global i32 0, align 4
@ar9003_hw_rfbus_req = common dso_local global i32 0, align 4
@ar9003_hw_rfbus_done = common dso_local global i32 0, align 4
@ar9003_hw_ani_control = common dso_local global i32 0, align 4
@ar9003_hw_do_getnf = common dso_local global i32 0, align 4
@ar9003_hw_ani_cache_ini_regs = common dso_local global i32 0, align 4
@ar9003_hw_set_radar_params = common dso_local global i32 0, align 4
@ar9003_hw_fast_chan_change = common dso_local global i32 0, align 4
@ar9003_hw_antdiv_comb_conf_get = common dso_local global i32 0, align 4
@ar9003_hw_antdiv_comb_conf_set = common dso_local global i32 0, align 4
@ar9003_hw_antctrl_shared_chain_lnadiv = common dso_local global i32 0, align 4
@ar9003_hw_spectral_scan_config = common dso_local global i32 0, align 4
@ar9003_hw_spectral_scan_trigger = common dso_local global i32 0, align 4
@ar9003_hw_spectral_scan_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_hw_attach_phy_ops(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_hw_private_ops*, align 8
  %4 = alloca %struct.ath_hw_ops*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call %struct.ath_hw_private_ops* @ath9k_hw_private_ops(%struct.ath_hw* %5)
  store %struct.ath_hw_private_ops* %6, %struct.ath_hw_private_ops** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = call %struct.ath_hw_ops* @ath9k_hw_ops(%struct.ath_hw* %7)
  store %struct.ath_hw_ops* %8, %struct.ath_hw_ops** %4, align 8
  %9 = load i32, i32* @ar9003_hw_set_channel, align 4
  %10 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %10, i32 0, i32 15
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ar9003_hw_spur_mitigate, align 4
  %13 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %14 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %13, i32 0, i32 14
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @ar9003_hw_compute_pll_control, align 4
  %16 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %17 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %16, i32 0, i32 13
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @ar9003_hw_set_channel_regs, align 4
  %19 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %20 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %19, i32 0, i32 12
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ar9003_hw_init_bb, align 4
  %22 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %23 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %22, i32 0, i32 11
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ar9003_hw_process_ini, align 4
  %25 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %26 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ar9003_hw_set_rfmode, align 4
  %28 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %29 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @ar9003_hw_mark_phy_inactive, align 4
  %31 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %32 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @ar9003_hw_set_delta_slope, align 4
  %34 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %35 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @ar9003_hw_rfbus_req, align 4
  %37 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %38 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ar9003_hw_rfbus_done, align 4
  %40 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %41 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ar9003_hw_ani_control, align 4
  %43 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %44 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @ar9003_hw_do_getnf, align 4
  %46 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %47 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ar9003_hw_ani_cache_ini_regs, align 4
  %49 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %50 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ar9003_hw_set_radar_params, align 4
  %52 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %53 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ar9003_hw_fast_chan_change, align 4
  %55 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %56 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @ar9003_hw_antdiv_comb_conf_get, align 4
  %58 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %59 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @ar9003_hw_antdiv_comb_conf_set, align 4
  %61 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %62 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ar9003_hw_antctrl_shared_chain_lnadiv, align 4
  %64 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %65 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @ar9003_hw_spectral_scan_config, align 4
  %67 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %68 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @ar9003_hw_spectral_scan_trigger, align 4
  %70 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %71 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @ar9003_hw_spectral_scan_wait, align 4
  %73 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %74 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %76 = call i32 @ar9003_hw_set_nf_limits(%struct.ath_hw* %75)
  %77 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %78 = call i32 @ar9003_hw_set_radar_conf(%struct.ath_hw* %77)
  %79 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %80 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memcpy(i32 %81, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @ar9003_hw_attach_phy_ops.ar9300_cca_regs, i64 0, i64 0), i32 4)
  ret void
}

declare dso_local %struct.ath_hw_private_ops* @ath9k_hw_private_ops(%struct.ath_hw*) #1

declare dso_local %struct.ath_hw_ops* @ath9k_hw_ops(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_set_nf_limits(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_set_radar_conf(%struct.ath_hw*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
