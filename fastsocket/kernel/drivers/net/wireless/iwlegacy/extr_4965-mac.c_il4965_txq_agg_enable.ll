; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_txq_agg_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_txq_agg_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_6__*, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IL49_FIRST_AMPDU_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"queue number out of range: %d, must be %d to %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IL49_SCD_QUEUECHAIN_SEL = common dso_local global i32 0, align 4
@SCD_WIN_SIZE = common dso_local global i32 0, align 4
@IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_POS = common dso_local global i32 0, align 4
@IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_MSK = common dso_local global i32 0, align 4
@SCD_FRAME_LIMIT = common dso_local global i32 0, align 4
@IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS = common dso_local global i32 0, align 4
@IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK = common dso_local global i32 0, align 4
@IL49_SCD_INTERRUPT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32, i32, i32, i32, i32)* @il4965_txq_agg_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_txq_agg_enable(%struct.il_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.il_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @IL49_FIRST_AMPDU_QUEUE, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @IL49_FIRST_AMPDU_QUEUE, align 4
  %22 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %21, %26
  %28 = load i32, i32* %9, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %20, %6
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @IL49_FIRST_AMPDU_QUEUE, align 4
  %33 = load i32, i32* @IL49_FIRST_AMPDU_QUEUE, align 4
  %34 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %33, %38
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @IL_WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %142

44:                                               ; preds = %20
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @BUILD_RAxTID(i32 %45, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @il4965_sta_tx_modify_enable_tid(%struct.il_priv* %48, i32 %49, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %7, align 4
  br label %142

56:                                               ; preds = %44
  %57 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %58 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @il4965_tx_queue_stop_scheduler(%struct.il_priv* %61, i32 %62)
  %64 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @il4965_tx_queue_set_q2ratid(%struct.il_priv* %64, i32 %65, i32 %66)
  %68 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %69 = load i32, i32* @IL49_SCD_QUEUECHAIN_SEL, align 4
  %70 = load i32, i32* %9, align 4
  %71 = shl i32 1, %70
  %72 = call i32 @il_set_bits_prph(%struct.il_priv* %68, i32 %69, i32 %71)
  %73 = load i32, i32* %13, align 4
  %74 = and i32 %73, 255
  %75 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %76 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 %74, i32* %82, align 4
  %83 = load i32, i32* %13, align 4
  %84 = and i32 %83, 255
  %85 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %86 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i32 %84, i32* %92, align 4
  %93 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @il4965_set_wr_ptrs(%struct.il_priv* %93, i32 %94, i32 %95)
  %97 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %98 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %99 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i64 @IL49_SCD_CONTEXT_QUEUE_OFFSET(i32 %101)
  %103 = add nsw i64 %100, %102
  %104 = load i32, i32* @SCD_WIN_SIZE, align 4
  %105 = load i32, i32* @IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_POS, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* @IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_MSK, align 4
  %108 = and i32 %106, %107
  %109 = call i32 @il_write_targ_mem(%struct.il_priv* %97, i64 %103, i32 %108)
  %110 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %111 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %112 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i64 @IL49_SCD_CONTEXT_QUEUE_OFFSET(i32 %114)
  %116 = add nsw i64 %113, %115
  %117 = add i64 %116, 4
  %118 = load i32, i32* @SCD_FRAME_LIMIT, align 4
  %119 = load i32, i32* @IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS, align 4
  %120 = shl i32 %118, %119
  %121 = load i32, i32* @IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK, align 4
  %122 = and i32 %120, %121
  %123 = call i32 @il_write_targ_mem(%struct.il_priv* %110, i64 %117, i32 %122)
  %124 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %125 = load i32, i32* @IL49_SCD_INTERRUPT_MASK, align 4
  %126 = load i32, i32* %9, align 4
  %127 = shl i32 1, %126
  %128 = call i32 @il_set_bits_prph(%struct.il_priv* %124, i32 %125, i32 %127)
  %129 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %130 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %131 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %130, i32 0, i32 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %134
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @il4965_tx_queue_set_status(%struct.il_priv* %129, %struct.TYPE_6__* %135, i32 %136, i32 1)
  %138 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %139 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %138, i32 0, i32 0
  %140 = load i64, i64* %14, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %56, %54, %30
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i32 @IL_WARN(i8*, i32, i32, i32) #1

declare dso_local i32 @BUILD_RAxTID(i32, i32) #1

declare dso_local i32 @il4965_sta_tx_modify_enable_tid(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il4965_tx_queue_stop_scheduler(%struct.il_priv*, i32) #1

declare dso_local i32 @il4965_tx_queue_set_q2ratid(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_set_bits_prph(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il4965_set_wr_ptrs(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_write_targ_mem(%struct.il_priv*, i64, i32) #1

declare dso_local i64 @IL49_SCD_CONTEXT_QUEUE_OFFSET(i32) #1

declare dso_local i32 @il4965_tx_queue_set_status(%struct.il_priv*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
