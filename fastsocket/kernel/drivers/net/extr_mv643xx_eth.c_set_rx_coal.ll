; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_set_rx_coal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_set_rx_coal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@SDMA_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*, i32)* @set_rx_coal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rx_coal(%struct.mv643xx_eth_private* %0, i32 %1) #0 {
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %9 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %7, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 31999999
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @do_div(i32 %16, i32 64000000)
  %18 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %19 = load i32, i32* @SDMA_CONFIG, align 4
  %20 = call i32 @rdlp(%struct.mv643xx_eth_private* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %22 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 65535
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 65535, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, -37748609
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 32768
  %36 = shl i32 %35, 10
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 32767
  %41 = shl i32 %40, 7
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %56

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %45, 16383
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 16383, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, -4194049
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 16383
  %53 = shl i32 %52, 8
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %48, %31
  %57 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %58 = load i32, i32* @SDMA_CONFIG, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @wrlp(%struct.mv643xx_eth_private* %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
