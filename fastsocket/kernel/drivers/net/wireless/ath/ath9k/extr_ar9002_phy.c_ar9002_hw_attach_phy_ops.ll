; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_attach_phy_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_attach_phy_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_hw_private_ops = type { i32, i32, i32, i32, i32, i32* }
%struct.ath_hw_ops = type { i32, i32, i32, i32, i32 }

@ar9002_hw_set_channel = common dso_local global i32 0, align 4
@ar9002_hw_spur_mitigate = common dso_local global i32 0, align 4
@ar9002_olc_init = common dso_local global i32 0, align 4
@ar9002_hw_compute_pll_control = common dso_local global i32 0, align 4
@ar9002_hw_do_getnf = common dso_local global i32 0, align 4
@ar9002_hw_antdiv_comb_conf_get = common dso_local global i32 0, align 4
@ar9002_hw_antdiv_comb_conf_set = common dso_local global i32 0, align 4
@ar9002_hw_spectral_scan_config = common dso_local global i32 0, align 4
@ar9002_hw_spectral_scan_trigger = common dso_local global i32 0, align 4
@ar9002_hw_spectral_scan_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9002_hw_attach_phy_ops(%struct.ath_hw* %0) #0 {
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
  %9 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %10 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %9, i32 0, i32 5
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* @ar9002_hw_set_channel, align 4
  %12 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %13 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @ar9002_hw_spur_mitigate, align 4
  %15 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %16 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @ar9002_olc_init, align 4
  %18 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %19 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @ar9002_hw_compute_pll_control, align 4
  %21 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %22 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @ar9002_hw_do_getnf, align 4
  %24 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %25 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @ar9002_hw_antdiv_comb_conf_get, align 4
  %27 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %28 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @ar9002_hw_antdiv_comb_conf_set, align 4
  %30 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %31 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @ar9002_hw_spectral_scan_config, align 4
  %33 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %34 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ar9002_hw_spectral_scan_trigger, align 4
  %36 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %37 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ar9002_hw_spectral_scan_wait, align 4
  %39 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %40 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %42 = call i32 @ar9002_hw_set_nf_limits(%struct.ath_hw* %41)
  ret void
}

declare dso_local %struct.ath_hw_private_ops* @ath9k_hw_private_ops(%struct.ath_hw*) #1

declare dso_local %struct.ath_hw_ops* @ath9k_hw_ops(%struct.ath_hw*) #1

declare dso_local i32 @ar9002_hw_set_nf_limits(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
