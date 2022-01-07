; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_txcmpl_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_txcmpl_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_tcb = type { i64*, i64, i64, %struct.TYPE_2__*, i32, %struct.bnad_tx_unmap* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bnad_tx_unmap = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }

@BNAD_TXQ_TX_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnad*, %struct.bna_tcb*)* @bnad_txcmpl_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnad_txcmpl_process(%struct.bnad* %0, %struct.bna_tcb* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca %struct.bna_tcb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bnad_tx_unmap*, align 8
  %14 = alloca %struct.bnad_tx_unmap*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store %struct.bna_tcb* %1, %struct.bna_tcb** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %16 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %17 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %16, i32 0, i32 5
  %18 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %17, align 8
  store %struct.bnad_tx_unmap* %18, %struct.bnad_tx_unmap** %13, align 8
  %19 = load i32, i32* @BNAD_TXQ_TX_STARTED, align 4
  %20 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %21 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %20, i32 0, i32 4
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %104

25:                                               ; preds = %2
  %26 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %27 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %31 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %11, align 8
  %33 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %34 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @BNA_Q_INDEX_CHANGE(i64 %36, i64 %37, i64 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %42 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %43 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @BNA_QE_IN_USE_CNT(%struct.bna_tcb* %41, i64 %44)
  %46 = icmp sle i64 %40, %45
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  br label %50

50:                                               ; preds = %53, %25
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %50
  %54 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %13, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %54, i64 %55
  store %struct.bnad_tx_unmap* %56, %struct.bnad_tx_unmap** %14, align 8
  %57 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %14, align 8
  %58 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %57, i32 0, i32 1
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  store %struct.sk_buff* %59, %struct.sk_buff** %15, align 8
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %6, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %7, align 8
  %67 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %14, align 8
  %68 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @BNA_TXQ_WI_NEEDED(i32 %69)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %8, align 8
  %73 = sub nsw i64 %72, %71
  store i64 %73, i64* %8, align 8
  %74 = load %struct.bnad*, %struct.bnad** %4, align 8
  %75 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %13, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i64 @bnad_tx_buff_unmap(%struct.bnad* %74, %struct.bnad_tx_unmap* %75, i64 %76, i64 %77)
  store i64 %78, i64* %11, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %80 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %79)
  br label %50

81:                                               ; preds = %50
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %84 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %87 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %85
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  %94 = load i64, i64* %7, align 8
  %95 = load %struct.bna_tcb*, %struct.bna_tcb** %5, align 8
  %96 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %94
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load i64, i64* %6, align 8
  store i64 %103, i64* %3, align 8
  br label %104

104:                                              ; preds = %81, %24
  %105 = load i64, i64* %3, align 8
  ret i64 %105
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @BNA_Q_INDEX_CHANGE(i64, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @BNA_QE_IN_USE_CNT(%struct.bna_tcb*, i64) #1

declare dso_local i64 @BNA_TXQ_WI_NEEDED(i32) #1

declare dso_local i64 @bnad_tx_buff_unmap(%struct.bnad*, %struct.bnad_tx_unmap*, i64, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
