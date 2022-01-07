; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_queue = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.mv643xx_eth_private = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tx_queue*)* @txq_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txq_deinit(%struct.tx_queue* %0) #0 {
  %2 = alloca %struct.tx_queue*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  store %struct.tx_queue* %0, %struct.tx_queue** %2, align 8
  %4 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %5 = call %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue* %4)
  store %struct.mv643xx_eth_private* %5, %struct.mv643xx_eth_private** %3, align 8
  %6 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %7 = call i32 @txq_disable(%struct.tx_queue* %6)
  %8 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %9 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %10 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @txq_reclaim(%struct.tx_queue* %8, i32 %11, i32 1)
  %13 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %14 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %17 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %23 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %28 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %31 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %36 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @iounmap(i32 %37)
  br label %56

39:                                               ; preds = %26, %1
  %40 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %41 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %47 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %50 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %53 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dma_free_coherent(i32 %45, i64 %48, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %39, %34
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue*) #1

declare dso_local i32 @txq_disable(%struct.tx_queue*) #1

declare dso_local i32 @txq_reclaim(%struct.tx_queue*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
