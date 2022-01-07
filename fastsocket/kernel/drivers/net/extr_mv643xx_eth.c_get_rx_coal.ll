; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_get_rx_coal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_get_rx_coal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@SDMA_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv643xx_eth_private*)* @get_rx_coal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rx_coal(%struct.mv643xx_eth_private* %0) #0 {
  %2 = alloca %struct.mv643xx_eth_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %2, align 8
  %5 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %6 = load i32, i32* @SDMA_CONFIG, align 4
  %7 = call i32 @rdlp(%struct.mv643xx_eth_private* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %9 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 33554432
  %17 = ashr i32 %16, 10
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 4194176
  %20 = ashr i32 %19, 7
  %21 = or i32 %17, %20
  store i32 %21, i32* %4, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 4194048
  %25 = ashr i32 %24, 8
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 64000000
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %31 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @do_div(i32 %29, i32 %34)
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
