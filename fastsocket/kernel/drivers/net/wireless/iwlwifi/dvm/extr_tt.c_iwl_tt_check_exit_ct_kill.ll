; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_tt_check_exit_ct_kill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_tt_check_exit_ct_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.iwl_tt_mgmt, i32, i32 }
%struct.iwl_tt_mgmt = type { i64, i32, i32 }

@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@IWL_TI_CT_KILL = common dso_local global i64 0, align 8
@CSR_UCODE_DRV_GP1_CLR = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_SET = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"schedule ct_kill exit timer\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@CT_KILL_EXIT_DURATION = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @iwl_tt_check_exit_ct_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_tt_check_exit_ct_kill(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_tt_mgmt*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.iwl_priv*
  store %struct.iwl_priv* %7, %struct.iwl_priv** %3, align 8
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %8, i32 0, i32 0
  store %struct.iwl_tt_mgmt* %9, %struct.iwl_tt_mgmt** %4, align 8
  %10 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %11, i32 0, i32 2
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %4, align 8
  %18 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IWL_TI_CT_KILL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %77

22:                                               ; preds = %16
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %33 = load i32, i32* @CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT, align 4
  %34 = call i32 @iwl_write32(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %36, i32 0, i32 1
  store i32 0, i32* %37, align 8
  br label %48

38:                                               ; preds = %22
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %40 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CSR_UCODE_DRV_GP1_SET, align 4
  %43 = load i32, i32* @CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT, align 4
  %44 = call i32 @iwl_write32(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %46, i32 0, i32 1
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %38, %28
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %50 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CSR_UCODE_DRV_GP1, align 4
  %53 = call i32 @iwl_read32(i32 %51, i32 %52)
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %55 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @iwl_trans_grab_nic_access(i32 %56, i32 0, i64* %5)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @iwl_trans_release_nic_access(i32 %62, i64* %5)
  br label %64

64:                                               ; preds = %59, %48
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %66 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %68 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %68, i32 0, i32 2
  %70 = load i64, i64* @jiffies, align 8
  %71 = load i32, i32* @CT_KILL_EXIT_DURATION, align 4
  %72 = load i32, i32* @HZ, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %70, %74
  %76 = call i32 @mod_timer(i32* %69, i64 %75)
  br label %77

77:                                               ; preds = %15, %64, %16
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_write32(i32, i32, i32) #1

declare dso_local i32 @iwl_read32(i32, i32) #1

declare dso_local i64 @iwl_trans_grab_nic_access(i32, i32, i64*) #1

declare dso_local i32 @iwl_trans_release_nic_access(i32, i64*) #1

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
