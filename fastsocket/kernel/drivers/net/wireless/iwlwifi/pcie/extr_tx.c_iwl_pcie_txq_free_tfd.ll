; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_free_tfd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_free_tfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_txq = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__, %struct.iwl_tfd* }
%struct.TYPE_3__ = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_tfd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_txq*)* @iwl_pcie_txq_free_tfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_txq_free_tfd(%struct.iwl_trans* %0, %struct.iwl_txq* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_txq*, align 8
  %5 = alloca %struct.iwl_tfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %4, align 8
  %9 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %9, i32 0, i32 3
  %11 = load %struct.iwl_tfd*, %struct.iwl_tfd** %10, align 8
  store %struct.iwl_tfd* %11, %struct.iwl_tfd** %5, align 8
  %12 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %16, i32 0, i32 2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @get_cmd_index(%struct.TYPE_4__* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %20, i32 0, i32 1
  %22 = call i32 @lockdep_assert_held(i32* %21)
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %24 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.iwl_tfd*, %struct.iwl_tfd** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.iwl_tfd, %struct.iwl_tfd* %31, i64 %33
  %35 = call i32 @iwl_pcie_tfd_unmap(%struct.iwl_trans* %23, i32* %30, %struct.iwl_tfd* %34)
  %36 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %2
  %41 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  store %struct.sk_buff* %48, %struct.sk_buff** %8, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %40
  %52 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %53 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i32 @iwl_op_mode_free_skb(i32 %54, %struct.sk_buff* %55)
  %57 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %58 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %63, align 8
  br label %64

64:                                               ; preds = %51, %40
  br label %65

65:                                               ; preds = %64, %2
  ret void
}

declare dso_local i32 @get_cmd_index(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_pcie_tfd_unmap(%struct.iwl_trans*, i32*, %struct.iwl_tfd*) #1

declare dso_local i32 @iwl_op_mode_free_skb(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
