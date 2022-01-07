; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rxq_inc_wr_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rxq_inc_wr_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_rxq = type { i64, i32, i32, i32 }
%struct.iwl_trans_pcie = type { i32 }

@FH_RSCSR_CHNL0_WPTR = common dso_local global i32 0, align 4
@STATUS_TPOWER_PMI = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1 = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Rx queue requesting wakeup, GP1 = 0x%x\0A\00", align 1
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_rxq*)* @iwl_pcie_rxq_inc_wr_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_rxq_inc_wr_ptr(%struct.iwl_trans* %0, %struct.iwl_rxq* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_rxq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_rxq* %1, %struct.iwl_rxq** %4, align 8
  %8 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %8, i32 0, i32 3
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %93

17:                                               ; preds = %2
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %17
  %27 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %28 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, -8
  %31 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %34 = load i32, i32* @FH_RSCSR_CHNL0_WPTR, align 4
  %35 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %36 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @iwl_write32(%struct.iwl_trans* %33, i32 %34, i32 %37)
  br label %90

39:                                               ; preds = %17
  %40 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %41 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %40)
  store %struct.iwl_trans_pcie* %41, %struct.iwl_trans_pcie** %7, align 8
  %42 = load i32, i32* @STATUS_TPOWER_PMI, align 4
  %43 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %44 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %43, i32 0, i32 0
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %39
  %48 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %49 = load i32, i32* @CSR_UCODE_DRV_GP1, align 4
  %50 = call i32 @iwl_read32(%struct.iwl_trans* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %60 = load i32, i32* @CSR_GP_CNTRL, align 4
  %61 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ, align 4
  %62 = call i32 @iwl_set_bit(%struct.iwl_trans* %59, i32 %60, i32 %61)
  br label %93

63:                                               ; preds = %47
  %64 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %65 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, -8
  %68 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %69 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %71 = load i32, i32* @FH_RSCSR_CHNL0_WPTR, align 4
  %72 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %73 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @iwl_write_direct32(%struct.iwl_trans* %70, i32 %71, i32 %74)
  br label %89

76:                                               ; preds = %39
  %77 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %78 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, -8
  %81 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %82 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %84 = load i32, i32* @FH_RSCSR_CHNL0_WPTR, align 4
  %85 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %86 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @iwl_write_direct32(%struct.iwl_trans* %83, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %76, %63
  br label %90

90:                                               ; preds = %89, %26
  %91 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %92 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %55, %16
  %94 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %95 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %94, i32 0, i32 3
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
