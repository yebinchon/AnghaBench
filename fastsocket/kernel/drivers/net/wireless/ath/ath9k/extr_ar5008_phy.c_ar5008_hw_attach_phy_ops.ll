; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_attach_phy_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_attach_phy_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_hw_private_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ar5008_hw_attach_phy_ops.ar5416_cca_regs = internal constant [6 x i32] [i32 133, i32 132, i32 130, i32 128, i32 131, i32 129], align 16
@ar5008_hw_set_channel = common dso_local global i32 0, align 4
@ar5008_hw_spur_mitigate = common dso_local global i32 0, align 4
@ar5008_hw_set_rf_regs = common dso_local global i32 0, align 4
@ar5008_hw_set_channel_regs = common dso_local global i32 0, align 4
@ar5008_hw_init_bb = common dso_local global i32 0, align 4
@ar5008_hw_process_ini = common dso_local global i32 0, align 4
@ar5008_hw_set_rfmode = common dso_local global i32 0, align 4
@ar5008_hw_mark_phy_inactive = common dso_local global i32 0, align 4
@ar5008_hw_set_delta_slope = common dso_local global i32 0, align 4
@ar5008_hw_rfbus_req = common dso_local global i32 0, align 4
@ar5008_hw_rfbus_done = common dso_local global i32 0, align 4
@ar5008_restore_chainmask = common dso_local global i32 0, align 4
@ar5008_hw_do_getnf = common dso_local global i32 0, align 4
@ar5008_hw_set_radar_params = common dso_local global i32 0, align 4
@ar5008_hw_ani_control_new = common dso_local global i32 0, align 4
@ar5008_hw_ani_cache_ini_regs = common dso_local global i32 0, align 4
@ar9160_hw_compute_pll_control = common dso_local global i32 0, align 4
@ar5008_hw_compute_pll_control = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5008_hw_attach_phy_ops(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_hw_private_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call %struct.ath_hw_private_ops* @ath9k_hw_private_ops(%struct.ath_hw* %6)
  store %struct.ath_hw_private_ops* %7, %struct.ath_hw_private_ops** %4, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = call i32 @ar5008_hw_rf_alloc_ext_banks(%struct.ath_hw* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %87

14:                                               ; preds = %1
  %15 = load i32, i32* @ar5008_hw_set_channel, align 4
  %16 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %17 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %16, i32 0, i32 16
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @ar5008_hw_spur_mitigate, align 4
  %19 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %20 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %19, i32 0, i32 15
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ar5008_hw_set_rf_regs, align 4
  %22 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %23 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %22, i32 0, i32 14
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ar5008_hw_set_channel_regs, align 4
  %25 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %26 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %25, i32 0, i32 13
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ar5008_hw_init_bb, align 4
  %28 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %29 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %28, i32 0, i32 12
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @ar5008_hw_process_ini, align 4
  %31 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %32 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @ar5008_hw_set_rfmode, align 4
  %34 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %35 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %34, i32 0, i32 10
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @ar5008_hw_mark_phy_inactive, align 4
  %37 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %38 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ar5008_hw_set_delta_slope, align 4
  %40 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %41 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ar5008_hw_rfbus_req, align 4
  %43 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %44 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @ar5008_hw_rfbus_done, align 4
  %46 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %47 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ar5008_restore_chainmask, align 4
  %49 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %50 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ar5008_hw_do_getnf, align 4
  %52 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %53 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ar5008_hw_set_radar_params, align 4
  %55 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %56 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @ar5008_hw_ani_control_new, align 4
  %58 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %59 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @ar5008_hw_ani_cache_ini_regs, align 4
  %61 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %62 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %64 = call i64 @AR_SREV_9100(%struct.ath_hw* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %14
  %67 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %68 = call i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66, %14
  %71 = load i32, i32* @ar9160_hw_compute_pll_control, align 4
  %72 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %73 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %78

74:                                               ; preds = %66
  %75 = load i32, i32* @ar5008_hw_compute_pll_control, align 4
  %76 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %77 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %80 = call i32 @ar5008_hw_set_nf_limits(%struct.ath_hw* %79)
  %81 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %82 = call i32 @ar5008_hw_set_radar_conf(%struct.ath_hw* %81)
  %83 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %84 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memcpy(i32 %85, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @ar5008_hw_attach_phy_ops.ar5416_cca_regs, i64 0, i64 0), i32 4)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %78, %12
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.ath_hw_private_ops* @ath9k_hw_private_ops(%struct.ath_hw*) #1

declare dso_local i32 @ar5008_hw_rf_alloc_ext_banks(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ar5008_hw_set_nf_limits(%struct.ath_hw*) #1

declare dso_local i32 @ar5008_hw_set_radar_conf(%struct.ath_hw*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
