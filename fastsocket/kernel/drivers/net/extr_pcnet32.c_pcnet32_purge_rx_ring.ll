; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pcnet32.c_pcnet32_purge_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pcnet32.c_pcnet32_purge_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i32, i64*, i32**, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PKT_BUF_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @pcnet32_purge_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcnet32_purge_rx_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pcnet32_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %5)
  store %struct.pcnet32_private* %6, %struct.pcnet32_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %65, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %10 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %68

13:                                               ; preds = %7
  %14 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %15 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = call i32 (...) @wmb()
  %22 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %23 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %22, i32 0, i32 2
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %13
  %31 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %32 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %35 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @PKT_BUF_SIZE, align 4
  %42 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %43 = call i32 @pci_unmap_single(i32 %33, i64 %40, i32 %41, i32 %42)
  %44 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %45 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %44, i32 0, i32 2
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @dev_kfree_skb_any(i32* %50)
  br label %52

52:                                               ; preds = %30, %13
  %53 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %54 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %53, i32 0, i32 2
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  store i32* null, i32** %58, align 8
  %59 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %60 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %7

68:                                               ; preds = %7
  ret void
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
