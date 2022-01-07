; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_free_tx_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_free_tx_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, %struct.TYPE_2__*, %struct.bnx2_napi* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2_napi = type { %struct.bnx2_tx_ring_info }
%struct.bnx2_tx_ring_info = type { i32*, i32*, i32 }

@TXBD_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_free_tx_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_free_tx_mem(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2_napi*, align 8
  %5 = alloca %struct.bnx2_tx_ring_info*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %47, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %6
  %13 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %14 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %13, i32 0, i32 2
  %15 = load %struct.bnx2_napi*, %struct.bnx2_napi** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %15, i64 %17
  store %struct.bnx2_napi* %18, %struct.bnx2_napi** %4, align 8
  %19 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %20 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %19, i32 0, i32 0
  store %struct.bnx2_tx_ring_info* %20, %struct.bnx2_tx_ring_info** %5, align 8
  %21 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %5, align 8
  %22 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %12
  %26 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %27 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* @TXBD_RING_SIZE, align 4
  %31 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %5, align 8
  %32 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %5, align 8
  %35 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dma_free_coherent(i32* %29, i32 %30, i32* %33, i32 %36)
  %38 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %5, align 8
  %39 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %25, %12
  %41 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %5, align 8
  %42 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %5, align 8
  %46 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %6

50:                                               ; preds = %6
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
