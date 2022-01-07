; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_init_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_init_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, i32)* @mac100_init_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac100_init_tx_desc(%struct.dma_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dma_desc* %0, %struct.dma_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.dma_desc*, %struct.dma_desc** %3, align 8
  %12 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sub i32 %16, 1
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.dma_desc*, %struct.dma_desc** %3, align 8
  %21 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %19, %10
  %25 = load %struct.dma_desc*, %struct.dma_desc** %3, align 8
  %26 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %25, i32 1
  store %struct.dma_desc* %26, %struct.dma_desc** %3, align 8
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
