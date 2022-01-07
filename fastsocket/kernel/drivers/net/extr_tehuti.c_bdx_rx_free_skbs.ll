; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_rx_free_skbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_rx_free_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { i32, %struct.rxdb* }
%struct.rxdb = type { i64 }
%struct.rxf_fifo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rx_map = type { i32, i64 }

@ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"total=%d free=%d busy=%d\0A\00", align 1
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdx_priv*, %struct.rxf_fifo*)* @bdx_rx_free_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_rx_free_skbs(%struct.bdx_priv* %0, %struct.rxf_fifo* %1) #0 {
  %3 = alloca %struct.bdx_priv*, align 8
  %4 = alloca %struct.rxf_fifo*, align 8
  %5 = alloca %struct.rx_map*, align 8
  %6 = alloca %struct.rxdb*, align 8
  %7 = alloca i64, align 8
  store %struct.bdx_priv* %0, %struct.bdx_priv** %3, align 8
  store %struct.rxf_fifo* %1, %struct.rxf_fifo** %4, align 8
  %8 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %9 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %8, i32 0, i32 1
  %10 = load %struct.rxdb*, %struct.rxdb** %9, align 8
  store %struct.rxdb* %10, %struct.rxdb** %6, align 8
  %11 = load i32, i32* @ENTER, align 4
  %12 = load %struct.rxdb*, %struct.rxdb** %6, align 8
  %13 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.rxdb*, %struct.rxdb** %6, align 8
  %16 = call i64 @bdx_rxdb_available(%struct.rxdb* %15)
  %17 = load %struct.rxdb*, %struct.rxdb** %6, align 8
  %18 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.rxdb*, %struct.rxdb** %6, align 8
  %21 = call i64 @bdx_rxdb_available(%struct.rxdb* %20)
  %22 = sub nsw i64 %19, %21
  %23 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %16, i64 %22)
  br label %24

24:                                               ; preds = %28, %2
  %25 = load %struct.rxdb*, %struct.rxdb** %6, align 8
  %26 = call i64 @bdx_rxdb_available(%struct.rxdb* %25)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.rxdb*, %struct.rxdb** %6, align 8
  %30 = call i64 @bdx_rxdb_alloc_elem(%struct.rxdb* %29)
  store i64 %30, i64* %7, align 8
  %31 = load %struct.rxdb*, %struct.rxdb** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb* %31, i64 %32)
  store %struct.rx_map* %33, %struct.rx_map** %5, align 8
  %34 = load %struct.rx_map*, %struct.rx_map** %5, align 8
  %35 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  br label %24

36:                                               ; preds = %24
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %69, %36
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.rxdb*, %struct.rxdb** %6, align 8
  %40 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %37
  %44 = load %struct.rxdb*, %struct.rxdb** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb* %44, i64 %45)
  store %struct.rx_map* %46, %struct.rx_map** %5, align 8
  %47 = load %struct.rx_map*, %struct.rx_map** %5, align 8
  %48 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %43
  %52 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %53 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rx_map*, %struct.rx_map** %5, align 8
  %56 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rxf_fifo*, %struct.rxf_fifo** %4, align 8
  %59 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %63 = call i32 @pci_unmap_single(i32 %54, i64 %57, i32 %61, i32 %62)
  %64 = load %struct.rx_map*, %struct.rx_map** %5, align 8
  %65 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_kfree_skb(i32 %66)
  br label %68

68:                                               ; preds = %51, %43
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %7, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %37

72:                                               ; preds = %37
  ret void
}

declare dso_local i32 @DBG(i8*, i64, i64, i64) #1

declare dso_local i64 @bdx_rxdb_available(%struct.rxdb*) #1

declare dso_local i64 @bdx_rxdb_alloc_elem(%struct.rxdb*) #1

declare dso_local %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb*, i64) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
