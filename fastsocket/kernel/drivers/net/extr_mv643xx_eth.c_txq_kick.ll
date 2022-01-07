; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_kick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_queue = type { i32, i32, i64 }
%struct.mv643xx_eth_private = type { i32, i32 }
%struct.netdev_queue = type { i32 }

@TXQ_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tx_queue*)* @txq_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txq_kick(%struct.tx_queue* %0) #0 {
  %2 = alloca %struct.tx_queue*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.tx_queue* %0, %struct.tx_queue** %2, align 8
  %7 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %8 = call %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue* %7)
  store %struct.mv643xx_eth_private* %8, %struct.mv643xx_eth_private** %3, align 8
  %9 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %10 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %13 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %11, i32 %14)
  store %struct.netdev_queue* %15, %struct.netdev_queue** %4, align 8
  %16 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %17 = call i32 (...) @smp_processor_id()
  %18 = call i32 @__netif_tx_lock(%struct.netdev_queue* %16, i32 %17)
  %19 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %20 = load i32, i32* @TXQ_COMMAND, align 4
  %21 = call i32 @rdlp(%struct.mv643xx_eth_private* %19, i32 %20)
  %22 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %23 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 1, %24
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %53

29:                                               ; preds = %1
  %30 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %31 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %32 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @TXQ_CURRENT_DESC_PTR(i32 %33)
  %35 = call i32 @rdlp(%struct.mv643xx_eth_private* %30, i32 %34)
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %5, align 8
  %37 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %38 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %41 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = add i64 %39, %44
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %29
  %50 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %51 = call i32 @txq_enable(%struct.tx_queue* %50)
  br label %52

52:                                               ; preds = %49, %29
  br label %53

53:                                               ; preds = %52, %28
  %54 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %55 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %54)
  %56 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %57 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 1, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %62 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @TXQ_CURRENT_DESC_PTR(i32) #1

declare dso_local i32 @txq_enable(%struct.tx_queue*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
