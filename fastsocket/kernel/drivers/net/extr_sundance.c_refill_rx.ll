; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sundance.c_refill_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sundance.c_refill_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.sk_buff** }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.sk_buff = type { i32, %struct.net_device* }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@LastFrag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @refill_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refill_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %7)
  store %struct.netdev_private* %8, %struct.netdev_private** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %105, %1
  %10 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %11 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %14 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = load i32, i32* @RX_RING_SIZE, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @RX_RING_SIZE, align 4
  %20 = srem i32 %18, %19
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %114

22:                                               ; preds = %9
  %23 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %24 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RX_RING_SIZE, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %29 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %28, i32 0, i32 5
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %30, i64 %32
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  %35 = icmp eq %struct.sk_buff* %34, null
  br i1 %35, label %36, label %79

36:                                               ; preds = %22
  %37 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %38 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.sk_buff* @dev_alloc_skb(i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %6, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %43 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %42, i32 0, i32 5
  %44 = load %struct.sk_buff**, %struct.sk_buff*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %44, i64 %46
  store %struct.sk_buff* %41, %struct.sk_buff** %47, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = icmp eq %struct.sk_buff* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %114

51:                                               ; preds = %36
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  store %struct.net_device* %52, %struct.net_device** %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @skb_reserve(%struct.sk_buff* %55, i32 2)
  %57 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %58 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %64 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %67 = call i32 @pci_map_single(i32 %59, i32 %62, i32 %65, i32 %66)
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %70 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i8* %68, i8** %78, align 8
  br label %79

79:                                               ; preds = %51, %22
  %80 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %81 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @LastFrag, align 4
  %84 = or i32 %82, %83
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %87 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i8* %85, i8** %95, align 8
  %96 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %97 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %79
  %106 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %107 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* @RX_RING_SIZE, align 4
  %111 = srem i32 %109, %110
  %112 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %113 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %9

114:                                              ; preds = %50, %9
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
