; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_tulip_core.c_tulip_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_tulip_core.c_tulip_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.tulip_private = type { i32, i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, %struct.sk_buff* }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@DESC_RING_WRAP = common dso_local global i32 0, align 4
@DescOwned = common dso_local global i32 0, align 4
@CSR1 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @tulip_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tulip_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.tulip_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.tulip_private* @netdev_priv(%struct.net_device* %10)
  store %struct.tulip_private* %11, %struct.tulip_private** %5, align 8
  %12 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %13 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %12, i32 0, i32 2
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %17 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TX_RING_SIZE, align 4
  %20 = srem i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %23 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %22, i32 0, i32 5
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store %struct.sk_buff* %21, %struct.sk_buff** %28, align 8
  %29 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %30 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %39 = call i32 @pci_map_single(i32 %31, i32 %34, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %42 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %41, i32 0, i32 5
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %51 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i8* %49, i8** %56, align 8
  %57 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %58 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %61 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = load i32, i32* @TX_RING_SIZE, align 4
  %65 = sdiv i32 %64, 2
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %2
  store i32 1610612736, i32* %7, align 4
  br label %97

68:                                               ; preds = %2
  %69 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %70 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %73 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  %76 = load i32, i32* @TX_RING_SIZE, align 4
  %77 = sdiv i32 %76, 2
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i32 -536870912, i32* %7, align 4
  br label %96

80:                                               ; preds = %68
  %81 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %82 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %85 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  %88 = load i32, i32* @TX_RING_SIZE, align 4
  %89 = sub nsw i32 %88, 2
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  store i32 1610612736, i32* %7, align 4
  br label %95

92:                                               ; preds = %80
  store i32 -536870912, i32* %7, align 4
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = call i32 @netif_stop_queue(%struct.net_device* %93)
  br label %95

95:                                               ; preds = %92, %91
  br label %96

96:                                               ; preds = %95, %79
  br label %97

97:                                               ; preds = %96, %67
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @TX_RING_SIZE, align 4
  %100 = sub nsw i32 %99, 1
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @DESC_RING_WRAP, align 4
  %104 = or i32 -536870912, %103
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %108, %109
  %111 = call i8* @cpu_to_le32(i32 %110)
  %112 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %113 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %112, i32 0, i32 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i8* %111, i8** %118, align 8
  %119 = load i32, i32* @DescOwned, align 4
  %120 = call i8* @cpu_to_le32(i32 %119)
  %121 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %122 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %121, i32 0, i32 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i8* %120, i8** %127, align 8
  %128 = call i32 (...) @wmb()
  %129 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %130 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %134 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @CSR1, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @iowrite32(i32 0, i64 %137)
  %139 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %140 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %139, i32 0, i32 2
  %141 = load i64, i64* %9, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  %143 = load i32, i32* @jiffies, align 4
  %144 = load %struct.net_device*, %struct.net_device** %4, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %146
}

declare dso_local %struct.tulip_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
