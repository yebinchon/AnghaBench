; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_rxq_alloc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_rxq_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bna_rcb = type { %struct.TYPE_4__*, i32, %struct.bnad_rx_unmap_q* }
%struct.TYPE_4__ = type { i32 }
%struct.bnad_rx_unmap_q = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BNAD_RXBUF_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, %struct.bna_rcb*)* @bnad_rxq_alloc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_rxq_alloc_init(%struct.bnad* %0, %struct.bna_rcb* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_rcb*, align 8
  %5 = alloca %struct.bnad_rx_unmap_q*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_rcb* %1, %struct.bna_rcb** %4, align 8
  %8 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %9 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %8, i32 0, i32 2
  %10 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %9, align 8
  store %struct.bnad_rx_unmap_q* %10, %struct.bnad_rx_unmap_q** %5, align 8
  %11 = load %struct.bnad*, %struct.bnad** %3, align 8
  %12 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %13 = call i32 @bnad_rxq_alloc_uninit(%struct.bnad* %11, %struct.bna_rcb* %12)
  %14 = load %struct.bnad*, %struct.bnad** %3, align 8
  %15 = getelementptr inbounds %struct.bnad, %struct.bnad* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @bna_enet_mtu_get(i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @get_order(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %21 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @bna_is_small_rxq(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %27 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %29 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %34 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %54

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %38 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %40 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 2048
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %46, %47
  br label %50

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ %48, %45 ], [ 2048, %49 ]
  %52 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %53 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %25
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %55, %56
  %58 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %59 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = srem i32 %57, %60
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load i32, i32* @BNAD_RXBUF_PAGE, align 4
  %64 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %65 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  ret i32 0
}

declare dso_local i32 @bnad_rxq_alloc_uninit(%struct.bnad*, %struct.bna_rcb*) #1

declare dso_local i32 @bna_enet_mtu_get(i32*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i64 @bna_is_small_rxq(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
