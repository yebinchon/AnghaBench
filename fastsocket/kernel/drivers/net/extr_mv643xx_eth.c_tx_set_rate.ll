; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_tx_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_tx_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@TX_BW_RATE = common dso_local global i32 0, align 4
@TX_BW_MTU = common dso_local global i32 0, align 4
@TX_BW_BURST = common dso_local global i32 0, align 4
@TX_BW_RATE_MOVED = common dso_local global i32 0, align 4
@TX_BW_MTU_MOVED = common dso_local global i32 0, align 4
@TX_BW_BURST_MOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*, i32, i32)* @tx_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_set_rate(%struct.mv643xx_eth_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mv643xx_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sdiv i32 %10, 1000
  %12 = mul nsw i32 %11, 64
  %13 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %14 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 1000
  %19 = sdiv i32 %12, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 1023
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1023, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %25 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 255
  %30 = ashr i32 %29, 8
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 63
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 63, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 255
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 65535
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 65535, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %43 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %73 [
    i32 128, label %47
    i32 129, label %60
  ]

47:                                               ; preds = %41
  %48 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %49 = load i32, i32* @TX_BW_RATE, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @wrlp(%struct.mv643xx_eth_private* %48, i32 %49, i32 %50)
  %52 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %53 = load i32, i32* @TX_BW_MTU, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @wrlp(%struct.mv643xx_eth_private* %52, i32 %53, i32 %54)
  %56 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %57 = load i32, i32* @TX_BW_BURST, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @wrlp(%struct.mv643xx_eth_private* %56, i32 %57, i32 %58)
  br label %73

60:                                               ; preds = %41
  %61 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %62 = load i32, i32* @TX_BW_RATE_MOVED, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @wrlp(%struct.mv643xx_eth_private* %61, i32 %62, i32 %63)
  %65 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %66 = load i32, i32* @TX_BW_MTU_MOVED, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @wrlp(%struct.mv643xx_eth_private* %65, i32 %66, i32 %67)
  %69 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %70 = load i32, i32* @TX_BW_BURST_MOVED, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @wrlp(%struct.mv643xx_eth_private* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %41, %60, %47
  ret void
}

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
