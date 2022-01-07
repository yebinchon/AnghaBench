; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_txq = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@TFD_QUEUE_SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_txq*, i32, i32)* @iwl_pcie_txq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_txq_init(%struct.iwl_trans* %0, %struct.iwl_txq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.iwl_txq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %12 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @TFD_QUEUE_SIZE_MAX, align 4
  %14 = load i32, i32* @TFD_QUEUE_SIZE_MAX, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  %17 = call i32 @BUILD_BUG_ON(i32 %16)
  %18 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %19 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %18, i32 0, i32 0
  %20 = load i32, i32* @TFD_QUEUE_SIZE_MAX, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @iwl_queue_init(%struct.TYPE_2__* %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %41

28:                                               ; preds = %4
  %29 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %29, i32 0, i32 1
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @FH_MEM_CBBC_QUEUE(i32 %33)
  %35 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %36 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %38, 8
  %40 = call i32 @iwl_write_direct32(%struct.iwl_trans* %32, i32 %34, i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %28, %26
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @iwl_queue_init(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @FH_MEM_CBBC_QUEUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
