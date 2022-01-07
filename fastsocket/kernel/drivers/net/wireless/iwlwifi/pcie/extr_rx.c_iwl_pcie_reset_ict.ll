; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_reset_ict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_reset_ict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, i32, i32, i64, i32 }

@ICT_SIZE = common dso_local global i32 0, align 4
@ICT_SHIFT = common dso_local global i32 0, align 4
@CSR_DRAM_INT_TBL_ENABLE = common dso_local global i32 0, align 4
@CSR_DRAM_INIT_TBL_WRAP_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CSR_DRAM_INT_TBL_REG =0x%x\0A\00", align 1
@CSR_DRAM_INT_TBL_REG = common dso_local global i32 0, align 4
@CSR_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_reset_ict(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %3, align 8
  %8 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %14, i32 0, i32 3
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %19 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %18)
  %20 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ICT_SIZE, align 4
  %24 = call i32 @memset(i32 %22, i32 0, i32 %23)
  %25 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ICT_SHIFT, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @CSR_DRAM_INT_TBL_ENABLE, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @CSR_DRAM_INIT_TBL_WRAP_CHECK, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @IWL_DEBUG_ISR(%struct.iwl_trans* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %40 = load i32, i32* @CSR_DRAM_INT_TBL_REG, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @iwl_write32(%struct.iwl_trans* %39, i32 %40, i32 %41)
  %43 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %44 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %48 = load i32, i32* @CSR_INT, align 4
  %49 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %50 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @iwl_write32(%struct.iwl_trans* %47, i32 %48, i32 %51)
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %54 = call i32 @iwl_enable_interrupts(%struct.iwl_trans* %53)
  %55 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %56 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %55, i32 0, i32 3
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iwl_disable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_enable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
