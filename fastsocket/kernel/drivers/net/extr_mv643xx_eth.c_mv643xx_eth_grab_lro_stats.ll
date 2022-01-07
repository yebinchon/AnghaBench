; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_grab_lro_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_grab_lro_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32, %struct.TYPE_6__, %struct.rx_queue* }
%struct.TYPE_6__ = type { i8*, i8*, i8* }
%struct.rx_queue = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*)* @mv643xx_eth_grab_lro_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv643xx_eth_grab_lro_stats(%struct.mv643xx_eth_private* %0) #0 {
  %2 = alloca %struct.mv643xx_eth_private*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rx_queue*, align 8
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %42, %1
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %11 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %8
  %15 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %16 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %15, i32 0, i32 2
  %17 = load %struct.rx_queue*, %struct.rx_queue** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %17, i64 %19
  store %struct.rx_queue* %20, %struct.rx_queue** %7, align 8
  %21 = load %struct.rx_queue*, %struct.rx_queue** %7, align 8
  %22 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr i8, i8* %26, i64 %25
  store i8* %27, i8** %3, align 8
  %28 = load %struct.rx_queue*, %struct.rx_queue** %7, align 8
  %29 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr i8, i8* %33, i64 %32
  store i8* %34, i8** %4, align 8
  %35 = load %struct.rx_queue*, %struct.rx_queue** %7, align 8
  %36 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr i8, i8* %40, i64 %39
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %14
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %8

45:                                               ; preds = %8
  %46 = load i8*, i8** %3, align 8
  %47 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %48 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i8* %46, i8** %49, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %52 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %56 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
