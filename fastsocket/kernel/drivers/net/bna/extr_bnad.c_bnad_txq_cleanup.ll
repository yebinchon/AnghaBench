; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_txq_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_txq_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_tcb = type { i32, %struct.bnad_tx_unmap* }
%struct.bnad_tx_unmap = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bna_tcb*)* @bnad_txq_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_txq_cleanup(%struct.bnad* %0, %struct.bna_tcb* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_tcb*, align 8
  %5 = alloca %struct.bnad_tx_unmap*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_tcb* %1, %struct.bna_tcb** %4, align 8
  %8 = load %struct.bna_tcb*, %struct.bna_tcb** %4, align 8
  %9 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %8, i32 0, i32 1
  %10 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  store %struct.bnad_tx_unmap* %10, %struct.bnad_tx_unmap** %5, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %37, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.bna_tcb*, %struct.bna_tcb** %4, align 8
  %14 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %18, i64 %20
  %22 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %21, i32 0, i32 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %37

27:                                               ; preds = %17
  %28 = load %struct.bnad*, %struct.bnad** %3, align 8
  %29 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %5, align 8
  %30 = load %struct.bna_tcb*, %struct.bna_tcb** %4, align 8
  %31 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @bnad_tx_buff_unmap(%struct.bnad* %28, %struct.bnad_tx_unmap* %29, i32 %32, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %35)
  br label %37

37:                                               ; preds = %27, %26
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %11

40:                                               ; preds = %11
  ret void
}

declare dso_local i32 @bnad_tx_buff_unmap(%struct.bnad*, %struct.bnad_tx_unmap*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
