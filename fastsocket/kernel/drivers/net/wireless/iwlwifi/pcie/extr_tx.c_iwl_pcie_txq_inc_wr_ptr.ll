; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_inc_wr_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_inc_wr_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_txq = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.iwl_trans_pcie = type { i32 }

@HBUS_TARG_WRPTR = common dso_local global i32 0, align 4
@STATUS_TPOWER_PMI = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1 = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Tx queue %d requesting wakeup, GP1 = 0x%x\0A\00", align 1
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Q:%d WR: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_txq_inc_wr_ptr(%struct.iwl_trans* %0, %struct.iwl_txq* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_txq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %95

17:                                               ; preds = %2
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %28 = load i32, i32* @HBUS_TARG_WRPTR, align 4
  %29 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %30 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %32, %34
  %36 = call i32 @iwl_write32(%struct.iwl_trans* %27, i32 %28, i32 %35)
  br label %92

37:                                               ; preds = %17
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %39 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %38)
  store %struct.iwl_trans_pcie* %39, %struct.iwl_trans_pcie** %7, align 8
  %40 = load i32, i32* @STATUS_TPOWER_PMI, align 4
  %41 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %42 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %41, i32 0, i32 0
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %37
  %46 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %47 = load i32, i32* @CSR_UCODE_DRV_GP1, align 4
  %48 = call i32 @iwl_read32(%struct.iwl_trans* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %59 = load i32, i32* @CSR_GP_CNTRL, align 4
  %60 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ, align 4
  %61 = call i32 @iwl_set_bit(%struct.iwl_trans* %58, i32 %59, i32 %60)
  br label %95

62:                                               ; preds = %45
  %63 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %66 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IWL_DEBUG_TX(%struct.iwl_trans* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %68)
  %70 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %71 = load i32, i32* @HBUS_TARG_WRPTR, align 4
  %72 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %73 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %75, %77
  %79 = call i32 @iwl_write_direct32(%struct.iwl_trans* %70, i32 %71, i32 %78)
  br label %91

80:                                               ; preds = %37
  %81 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %82 = load i32, i32* @HBUS_TARG_WRPTR, align 4
  %83 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %84 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = shl i32 %87, 8
  %89 = or i32 %86, %88
  %90 = call i32 @iwl_write32(%struct.iwl_trans* %81, i32 %82, i32 %89)
  br label %91

91:                                               ; preds = %80, %62
  br label %92

92:                                               ; preds = %91, %26
  %93 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %94 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %92, %53, %16
  ret void
}

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*, i32, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_TX(%struct.iwl_trans*, i8*, i32, i32) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
