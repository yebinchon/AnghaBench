; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_stop_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_stop_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32 }

@STATUS_RFKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, i32)* @iwl_trans_pcie_stop_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_trans_pcie_stop_hw(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %9 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %8)
  store %struct.iwl_trans_pcie* %9, %struct.iwl_trans_pcie** %5, align 8
  %10 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %10, i32 0, i32 1
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %15 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %14)
  %16 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %16, i32 0, i32 1
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %21 = call i32 @iwl_pcie_apm_stop(%struct.iwl_trans* %20)
  %22 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %22, i32 0, i32 1
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %27 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %26)
  %28 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %28, i32 0, i32 1
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %33 = call i32 @iwl_pcie_disable_ict(%struct.iwl_trans* %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %2
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %38 = call i32 @iwl_enable_rfkill_int(%struct.iwl_trans* %37)
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %40 = call i32 @iwl_is_rfkill_set(%struct.iwl_trans* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* @STATUS_RFKILL, align 4
  %45 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %46 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %45, i32 0, i32 0
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  br label %53

48:                                               ; preds = %36
  %49 = load i32, i32* @STATUS_RFKILL, align 4
  %50 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %51 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %50, i32 0, i32 0
  %52 = call i32 @clear_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %55 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @iwl_op_mode_hw_rf_kill(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %2
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iwl_disable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iwl_pcie_apm_stop(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_disable_ict(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_enable_rfkill_int(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_is_rfkill_set(%struct.iwl_trans*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_op_mode_hw_rf_kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
