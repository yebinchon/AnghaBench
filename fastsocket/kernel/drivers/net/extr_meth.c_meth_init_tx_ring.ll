; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_meth_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_meth_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.meth_private = type { i32, i32, i32, i64, i64, i64, i32 }

@TX_RING_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meth_private*)* @meth_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meth_init_tx_ring(%struct.meth_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meth_private*, align 8
  store %struct.meth_private* %0, %struct.meth_private** %3, align 8
  %4 = load i32, i32* @TX_RING_BUFFER_SIZE, align 4
  %5 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %6 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %5, i32 0, i32 2
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call i32 @dma_alloc_coherent(i32* null, i32 %4, i32* %6, i32 %7)
  %9 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %10 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 8
  %11 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %12 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %20 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TX_RING_BUFFER_SIZE, align 4
  %23 = call i32 @memset(i32 %21, i32 0, i32 %22)
  %24 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %25 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %27 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %29 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %31 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %37 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memset(i32 %38, i32 0, i32 4)
  %40 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %41 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memset(i32 %42, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %18, %15
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
