; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_winbond-840.c_free_rxtx_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_winbond-840.c_free_rxtx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_private = type { %struct.TYPE_4__**, i32*, i32, %struct.TYPE_4__**, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netdev_private*)* @free_rxtx_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rxtx_rings(%struct.netdev_private* %0) #0 {
  %2 = alloca %struct.netdev_private*, align 8
  %3 = alloca i32, align 4
  store %struct.netdev_private* %0, %struct.netdev_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %61, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @RX_RING_SIZE, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %64

8:                                                ; preds = %4
  %9 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %10 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %9, i32 0, i32 5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %17 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %8
  %25 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %26 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %29 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %36 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %45 = call i32 @pci_unmap_single(i32 %27, i32 %34, i32 %43, i32 %44)
  %46 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %47 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %52)
  br label %54

54:                                               ; preds = %24, %8
  %55 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %56 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %59
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %60, align 8
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %4

64:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %115, %64
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @TX_RING_SIZE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %65
  %70 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %71 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %72, i64 %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = icmp ne %struct.TYPE_4__* %76, null
  br i1 %77, label %78, label %108

78:                                               ; preds = %69
  %79 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %80 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %83 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %90 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %91, i64 %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %99 = call i32 @pci_unmap_single(i32 %81, i32 %88, i32 %97, i32 %98)
  %100 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %101 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %102, i64 %104
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %106)
  br label %108

108:                                              ; preds = %78, %69
  %109 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %110 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %111, i64 %113
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %114, align 8
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %65

118:                                              ; preds = %65
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
