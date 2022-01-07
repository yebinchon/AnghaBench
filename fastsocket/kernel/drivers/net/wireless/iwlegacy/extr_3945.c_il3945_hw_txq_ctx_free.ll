; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hw_txq_ctx_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hw_txq_ctx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@IL39_CMD_QUEUE_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il3945_hw_txq_ctx_free(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %4 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %5 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %28, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IL39_CMD_QUEUE_NUM, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %22 = call i32 @il_cmd_queue_free(%struct.il_priv* %21)
  br label %27

23:                                               ; preds = %16
  %24 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @il_tx_queue_free(%struct.il_priv* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %9

31:                                               ; preds = %9
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %34 = call i32 @il_free_txq_mem(%struct.il_priv* %33)
  ret void
}

declare dso_local i32 @il_cmd_queue_free(%struct.il_priv*) #1

declare dso_local i32 @il_tx_queue_free(%struct.il_priv*, i32) #1

declare dso_local i32 @il_free_txq_mem(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
