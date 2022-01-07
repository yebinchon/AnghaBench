; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_queue = type { i32 }
%struct.mv643xx_eth_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tx_queue*, i32, i32)* @txq_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txq_set_rate(%struct.tx_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv643xx_eth_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tx_queue* %0, %struct.tx_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %11 = call %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue* %10)
  store %struct.mv643xx_eth_private* %11, %struct.mv643xx_eth_private** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %12, 1000
  %14 = mul nsw i32 %13, 64
  %15 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %16 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 1000
  %21 = sdiv i32 %14, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 1023
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 1023, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %3
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 255
  %28 = ashr i32 %27, 8
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 65535
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 65535, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %34 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %35 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @TXQ_BW_TOKENS(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, 14
  %40 = call i32 @wrlp(%struct.mv643xx_eth_private* %33, i32 %37, i32 %39)
  %41 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %42 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %43 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @TXQ_BW_CONF(i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, 10
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @wrlp(%struct.mv643xx_eth_private* %41, i32 %45, i32 %49)
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue*) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @TXQ_BW_TOKENS(i32) #1

declare dso_local i32 @TXQ_BW_CONF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
