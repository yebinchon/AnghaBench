; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hw_txq_ctx_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hw_txq_ctx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_hw_txq_ctx_free(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %4 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %5 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %30, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %24 = call i32 @il_cmd_queue_free(%struct.il_priv* %23)
  br label %29

25:                                               ; preds = %16
  %26 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @il_tx_queue_free(%struct.il_priv* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %22
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %9

33:                                               ; preds = %9
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %36 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %37 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %36, i32 0, i32 2
  %38 = call i32 @il4965_free_dma_ptr(%struct.il_priv* %35, i32* %37)
  %39 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %40 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 1
  %42 = call i32 @il4965_free_dma_ptr(%struct.il_priv* %39, i32* %41)
  %43 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %44 = call i32 @il_free_txq_mem(%struct.il_priv* %43)
  ret void
}

declare dso_local i32 @il_cmd_queue_free(%struct.il_priv*) #1

declare dso_local i32 @il_tx_queue_free(%struct.il_priv*, i32) #1

declare dso_local i32 @il4965_free_dma_ptr(%struct.il_priv*, i32*) #1

declare dso_local i32 @il_free_txq_mem(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
