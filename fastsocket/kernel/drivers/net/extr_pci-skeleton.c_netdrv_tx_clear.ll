; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_tx_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_tx_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.netdrv_private = type { i32, %struct.ring_info*, i32, i32 }
%struct.ring_info = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NUM_TX_DESC = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @netdrv_tx_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdrv_tx_clear(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.netdrv_private*, align 8
  %5 = alloca %struct.ring_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.netdrv_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdrv_private* %7, %struct.netdrv_private** %4, align 8
  %8 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %9 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %8, i32 0, i32 3
  %10 = call i32 @atomic_set(i32* %9, i32 0)
  %11 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %12 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %11, i32 0, i32 2
  %13 = call i32 @atomic_set(i32* %12, i32 0)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %63, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @NUM_TX_DESC, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %66

18:                                               ; preds = %14
  %19 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %20 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %19, i32 0, i32 1
  %21 = load %struct.ring_info*, %struct.ring_info** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %21, i64 %23
  store %struct.ring_info* %24, %struct.ring_info** %5, align 8
  %25 = load %struct.ring_info*, %struct.ring_info** %5, align 8
  %26 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %18
  %30 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %31 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ring_info*, %struct.ring_info** %5, align 8
  %34 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ring_info*, %struct.ring_info** %5, align 8
  %37 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %42 = call i32 @pci_unmap_single(i32 %32, i64 %35, i32 %40, i32 %41)
  %43 = load %struct.ring_info*, %struct.ring_info** %5, align 8
  %44 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %29, %18
  %46 = load %struct.ring_info*, %struct.ring_info** %5, align 8
  %47 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.ring_info*, %struct.ring_info** %5, align 8
  %52 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %53)
  %55 = load %struct.ring_info*, %struct.ring_info** %5, align 8
  %56 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %55, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %50, %45
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %14

66:                                               ; preds = %14
  ret void
}

declare dso_local %struct.netdrv_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
