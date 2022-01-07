; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_txq_ctx_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_txq_ctx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Scheduler BC Table allocation failed\0A\00", align 1
@IL_KW_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Keep Warm allocation failed\0A\00", align 1
@FH49_KW_MEM_ADDR_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Tx %d queue init failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_txq_ctx_alloc(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %8 = call i32 @il4965_hw_txq_ctx_free(%struct.il_priv* %7)
  %9 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 0
  %12 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @il4965_alloc_dma_ptr(%struct.il_priv* %9, %struct.TYPE_5__* %11, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %90

21:                                               ; preds = %1
  %22 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %23 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 1
  %25 = load i32, i32* @IL_KW_SIZE, align 4
  %26 = call i32 @il4965_alloc_dma_ptr(%struct.il_priv* %22, %struct.TYPE_5__* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %85

31:                                               ; preds = %21
  %32 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %33 = call i32 @il_alloc_txq_mem(%struct.il_priv* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %78

37:                                               ; preds = %31
  %38 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %39 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %38, i32 0, i32 3
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %43 = call i32 @il4965_txq_set_sched(%struct.il_priv* %42, i32 0)
  %44 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %45 = load i32, i32* @FH49_KW_MEM_ADDR_REG, align 4
  %46 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 4
  %51 = call i32 @il_wr(%struct.il_priv* %44, i32 %45, i32 %50)
  %52 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 3
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %73, %37
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %59 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @il_tx_queue_init(%struct.il_priv* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %78

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %56

76:                                               ; preds = %56
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %92

78:                                               ; preds = %69, %36
  %79 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %80 = call i32 @il4965_hw_txq_ctx_free(%struct.il_priv* %79)
  %81 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %82 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %83 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %82, i32 0, i32 1
  %84 = call i32 @il4965_free_dma_ptr(%struct.il_priv* %81, %struct.TYPE_5__* %83)
  br label %85

85:                                               ; preds = %78, %29
  %86 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %87 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %88 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %87, i32 0, i32 0
  %89 = call i32 @il4965_free_dma_ptr(%struct.il_priv* %86, %struct.TYPE_5__* %88)
  br label %90

90:                                               ; preds = %85, %19
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %76
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @il4965_hw_txq_ctx_free(%struct.il_priv*) #1

declare dso_local i32 @il4965_alloc_dma_ptr(%struct.il_priv*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i32 @il_alloc_txq_mem(%struct.il_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il4965_txq_set_sched(%struct.il_priv*, i32) #1

declare dso_local i32 @il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @il_tx_queue_init(%struct.il_priv*, i32) #1

declare dso_local i32 @il4965_free_dma_ptr(%struct.il_priv*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
