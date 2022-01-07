; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_progress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans_pcie = type { i64 }
%struct.iwl_txq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans_pcie*, %struct.iwl_txq*)* @iwl_pcie_txq_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_txq_progress(%struct.iwl_trans_pcie* %0, %struct.iwl_txq* %1) #0 {
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca %struct.iwl_txq*, align 8
  store %struct.iwl_trans_pcie* %0, %struct.iwl_trans_pcie** %3, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %4, align 8
  %5 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %33

10:                                               ; preds = %2
  %11 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %21, i32 0, i32 0
  %23 = call i32 @del_timer(i32* %22)
  br label %33

24:                                               ; preds = %10
  %25 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %25, i32 0, i32 0
  %27 = load i64, i64* @jiffies, align 8
  %28 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i32 @mod_timer(i32* %26, i64 %31)
  br label %33

33:                                               ; preds = %9, %24, %20
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
