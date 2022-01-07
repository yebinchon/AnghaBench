; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_interrupt.c_tulip_refill_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_interrupt.c_tulip_refill_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tulip_private = type { i64, i32, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { %struct.net_device*, i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DescOwned = common dso_local global i32 0, align 4
@LC82C168 = common dso_local global i64 0, align 8
@CSR5 = common dso_local global i64 0, align 8
@CSR2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tulip_refill_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tulip_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.tulip_private* @netdev_priv(%struct.net_device* %8)
  store %struct.tulip_private* %9, %struct.tulip_private** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %90, %1
  %11 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %12 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %15 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %13, %17
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %95

20:                                               ; preds = %10
  %21 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %22 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RX_RING_SIZE, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %27 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %26, i32 0, i32 5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  %34 = icmp eq %struct.sk_buff* %33, null
  br i1 %34, label %35, label %80

35:                                               ; preds = %20
  %36 = load i32, i32* @PKT_BUF_SZ, align 4
  %37 = call %struct.sk_buff* @dev_alloc_skb(i32 %36)
  %38 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %39 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %38, i32 0, i32 5
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store %struct.sk_buff* %37, %struct.sk_buff** %44, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = icmp eq %struct.sk_buff* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %95

48:                                               ; preds = %35
  %49 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %50 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PKT_BUF_SZ, align 4
  %56 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %57 = call i32 @pci_map_single(i32 %51, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %60 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %59, i32 0, i32 5
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %58, i32* %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  store %struct.net_device* %66, %struct.net_device** %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %72 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %71, i32 0, i32 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i8* %70, i8** %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %48, %20
  %81 = load i32, i32* @DescOwned, align 4
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %84 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %83, i32 0, i32 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i8* %82, i8** %89, align 8
  br label %90

90:                                               ; preds = %80
  %91 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %92 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %10

95:                                               ; preds = %47, %10
  %96 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %97 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @LC82C168, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %103 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CSR5, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @ioread32(i64 %106)
  %108 = ashr i32 %107, 17
  %109 = and i32 %108, 7
  %110 = icmp eq i32 %109, 4
  br i1 %110, label %111, label %118

111:                                              ; preds = %101
  %112 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %113 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CSR2, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @iowrite32(i32 1, i64 %116)
  br label %118

118:                                              ; preds = %111, %101
  br label %119

119:                                              ; preds = %118, %95
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.tulip_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
