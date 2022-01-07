; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_free_sbq_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_free_sbq_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }
%struct.rx_ring = type { i32, %struct.bq_desc* }
%struct.bq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sbq_desc %d is NULL.\0A\00", align 1
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*)* @ql_free_sbq_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_free_sbq_buffers(%struct.ql_adapter* %0, %struct.rx_ring* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.rx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bq_desc*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %57, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %10 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %7
  %14 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %15 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %14, i32 0, i32 1
  %16 = load %struct.bq_desc*, %struct.bq_desc** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %16, i64 %18
  store %struct.bq_desc* %19, %struct.bq_desc** %6, align 8
  %20 = load %struct.bq_desc*, %struct.bq_desc** %6, align 8
  %21 = icmp eq %struct.bq_desc* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %24 = load i32, i32* @ifup, align 4
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @netif_err(%struct.ql_adapter* %23, i32 %24, i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %60

30:                                               ; preds = %13
  %31 = load %struct.bq_desc*, %struct.bq_desc** %6, align 8
  %32 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bq_desc*, %struct.bq_desc** %6, align 8
  %41 = load i32, i32* @mapaddr, align 4
  %42 = call i32 @pci_unmap_addr(%struct.bq_desc* %40, i32 %41)
  %43 = load %struct.bq_desc*, %struct.bq_desc** %6, align 8
  %44 = load i32, i32* @maplen, align 4
  %45 = call i32 @pci_unmap_len(%struct.bq_desc* %43, i32 %44)
  %46 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %47 = call i32 @pci_unmap_single(i32 %39, i32 %42, i32 %45, i32 %46)
  %48 = load %struct.bq_desc*, %struct.bq_desc** %6, align 8
  %49 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @dev_kfree_skb(i32* %51)
  %53 = load %struct.bq_desc*, %struct.bq_desc** %6, align 8
  %54 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %36, %30
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %7

60:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.bq_desc*, i32) #1

declare dso_local i32 @pci_unmap_len(%struct.bq_desc*, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
