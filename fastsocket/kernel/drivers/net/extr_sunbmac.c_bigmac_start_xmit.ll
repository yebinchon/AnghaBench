; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunbmac.c_bigmac_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunbmac.c_bigmac_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.bigmac = type { i32, i64, i32, %struct.TYPE_6__*, %struct.sk_buff**, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"bigmac_start_xmit: len(%d) entry(%d)\0A\00", align 1
@TXD_UPDATE = common dso_local global i32 0, align 4
@TXD_OWN = common dso_local global i32 0, align 4
@TXD_SOP = common dso_local global i32 0, align 4
@TXD_EOP = common dso_local global i32 0, align 4
@TXD_LENGTH = common dso_local global i32 0, align 4
@CREG_CTRL_TWAKEUP = common dso_local global i32 0, align 4
@CREG_CTRL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bigmac_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bigmac_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bigmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.bigmac* @netdev_priv(%struct.net_device* %9)
  store %struct.bigmac* %10, %struct.bigmac** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %15 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %14, i32 0, i32 5
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  %23 = call i32 @dma_map_single(i32* %17, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %25 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %24, i32 0, i32 2
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %28 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @DTX(i8* %33)
  %35 = load i32, i32* @TXD_UPDATE, align 4
  %36 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %37 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %35, i32* %44, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %47 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %46, i32 0, i32 4
  %48 = load %struct.sk_buff**, %struct.sk_buff*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %48, i64 %50
  store %struct.sk_buff* %45, %struct.sk_buff** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %54 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %53, i32 0, i32 3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 %52, i32* %61, align 4
  %62 = load i32, i32* @TXD_OWN, align 4
  %63 = load i32, i32* @TXD_SOP, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @TXD_EOP, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @TXD_LENGTH, align 4
  %69 = and i32 %67, %68
  %70 = or i32 %66, %69
  %71 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %72 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %71, i32 0, i32 3
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %70, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @NEXT_TX(i32 %80)
  %82 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %83 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %85 = call i64 @TX_BUFFS_AVAIL(%struct.bigmac* %84)
  %86 = icmp sle i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %2
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = call i32 @netif_stop_queue(%struct.net_device* %88)
  br label %90

90:                                               ; preds = %87, %2
  %91 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %92 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %91, i32 0, i32 2
  %93 = call i32 @spin_unlock_irq(i32* %92)
  %94 = load i32, i32* @CREG_CTRL_TWAKEUP, align 4
  %95 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %96 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CREG_CTRL, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @sbus_writel(i32 %94, i64 %99)
  %101 = load i32, i32* @jiffies, align 4
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %104
}

declare dso_local %struct.bigmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @DTX(i8*) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.bigmac*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @sbus_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
