; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_txq_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_txq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"queue %d already used - expect issues\00", align 1
@SCD_QUEUECHAIN_SEL = common dso_local global i32 0, align 4
@SCD_AGGR_SEL = common dso_local global i32 0, align 4
@HBUS_TARG_WRPTR = common dso_local global i32 0, align 4
@SCD_QUEUE_CTX_REG2_WIN_SIZE_POS = common dso_local global i32 0, align 4
@SCD_QUEUE_CTX_REG2_WIN_SIZE_MSK = common dso_local global i32 0, align 4
@SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS = common dso_local global i32 0, align 4
@SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK = common dso_local global i32 0, align 4
@SCD_QUEUE_STTS_REG_POS_ACTIVE = common dso_local global i32 0, align 4
@SCD_QUEUE_STTS_REG_POS_TXF = common dso_local global i32 0, align 4
@SCD_QUEUE_STTS_REG_POS_WSL = common dso_local global i32 0, align 4
@SCD_QUEUE_STTS_REG_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Activate queue %d on FIFO %d WrPtr: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_trans_pcie_txq_enable(%struct.iwl_trans* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.iwl_trans*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iwl_trans_pcie*, align 8
  %16 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %18 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %17)
  store %struct.iwl_trans_pcie* %18, %struct.iwl_trans_pcie** %15, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %15, align 8
  %21 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @test_and_set_bit(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %7
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @iwl_pcie_txq_set_inactive(%struct.iwl_trans* %29, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %15, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %39 = load i32, i32* @SCD_QUEUECHAIN_SEL, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = call i32 @iwl_set_bits_prph(%struct.iwl_trans* %38, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %28
  %44 = load i32, i32* %11, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @BUILD_RAxTID(i32 %47, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @iwl_pcie_txq_set_ratid_map(%struct.iwl_trans* %50, i32 %51, i32 %52)
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %55 = load i32, i32* @SCD_AGGR_SEL, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = call i32 @iwl_set_bits_prph(%struct.iwl_trans* %54, i32 %55, i32 %57)
  br label %65

59:                                               ; preds = %43
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %61 = load i32, i32* @SCD_AGGR_SEL, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @BIT(i32 %62)
  %64 = call i32 @iwl_clear_bits_prph(%struct.iwl_trans* %60, i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %59, %46
  %66 = load i32, i32* %14, align 4
  %67 = and i32 %66, 255
  %68 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %15, align 8
  %69 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %67, i32* %75, align 4
  %76 = load i32, i32* %14, align 4
  %77 = and i32 %76, 255
  %78 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %15, align 8
  %79 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %77, i32* %85, align 4
  %86 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %87 = load i32, i32* @HBUS_TARG_WRPTR, align 4
  %88 = load i32, i32* %14, align 4
  %89 = and i32 %88, 255
  %90 = load i32, i32* %9, align 4
  %91 = shl i32 %90, 8
  %92 = or i32 %89, %91
  %93 = call i32 @iwl_write_direct32(%struct.iwl_trans* %86, i32 %87, i32 %92)
  %94 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @SCD_QUEUE_RDPTR(i32 %95)
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @iwl_write_prph(%struct.iwl_trans* %94, i32 %96, i32 %97)
  %99 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %100 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %15, align 8
  %101 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i64 @SCD_CONTEXT_QUEUE_OFFSET(i32 %103)
  %105 = add nsw i64 %102, %104
  %106 = call i32 @iwl_trans_write_mem32(%struct.iwl_trans* %99, i64 %105, i32 0)
  %107 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %108 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %15, align 8
  %109 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i64 @SCD_CONTEXT_QUEUE_OFFSET(i32 %111)
  %113 = add nsw i64 %110, %112
  %114 = add i64 %113, 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @SCD_QUEUE_CTX_REG2_WIN_SIZE_POS, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* @SCD_QUEUE_CTX_REG2_WIN_SIZE_MSK, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* @SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK, align 4
  %124 = and i32 %122, %123
  %125 = or i32 %119, %124
  %126 = call i32 @iwl_trans_write_mem32(%struct.iwl_trans* %107, i64 %114, i32 %125)
  %127 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @SCD_QUEUE_STATUS_BITS(i32 %128)
  %130 = load i32, i32* @SCD_QUEUE_STTS_REG_POS_ACTIVE, align 4
  %131 = shl i32 1, %130
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @SCD_QUEUE_STTS_REG_POS_TXF, align 4
  %134 = shl i32 %132, %133
  %135 = or i32 %131, %134
  %136 = load i32, i32* @SCD_QUEUE_STTS_REG_POS_WSL, align 4
  %137 = shl i32 1, %136
  %138 = or i32 %135, %137
  %139 = load i32, i32* @SCD_QUEUE_STTS_REG_MSK, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @iwl_write_prph(%struct.iwl_trans* %127, i32 %129, i32 %140)
  %142 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %15, align 8
  %143 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %142, i32 0, i32 1
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i32 1, i32* %148, align 4
  %149 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %14, align 4
  %153 = and i32 %152, 255
  %154 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans* %149, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %151, i32 %153)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @iwl_pcie_txq_set_inactive(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_set_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @BUILD_RAxTID(i32, i32) #1

declare dso_local i32 @iwl_pcie_txq_set_ratid_map(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_clear_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @SCD_QUEUE_RDPTR(i32) #1

declare dso_local i32 @iwl_trans_write_mem32(%struct.iwl_trans*, i64, i32) #1

declare dso_local i64 @SCD_CONTEXT_QUEUE_OFFSET(i32) #1

declare dso_local i32 @SCD_QUEUE_STATUS_BITS(i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
