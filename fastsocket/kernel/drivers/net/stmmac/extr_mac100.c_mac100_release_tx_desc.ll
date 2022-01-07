; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_release_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_release_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*)* @mac100_release_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac100_release_tx_desc(%struct.dma_desc* %0) #0 {
  %2 = alloca %struct.dma_desc*, align 8
  %3 = alloca i32, align 4
  store %struct.dma_desc* %0, %struct.dma_desc** %2, align 8
  %4 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %5 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %10 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 12
  store i64 0, i64* %12, align 8
  %13 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %14 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 11
  store i64 0, i64* %16, align 8
  %17 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %18 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 10
  store i64 0, i64* %20, align 8
  %21 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %22 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 9
  store i64 0, i64* %24, align 8
  %25 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %26 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 8
  store i64 0, i64* %28, align 8
  %29 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %30 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  %33 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %34 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %38 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %42 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %46 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %50 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %54 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  %59 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
