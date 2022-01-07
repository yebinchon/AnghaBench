; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunqe.c_qe_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunqe.c_qe_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sunqe = type { i32, i32, i64, %struct.TYPE_5__*, i64, %struct.sunqe_buffers* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.sunqe_buffers = type { i8** }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@tx_buf = common dso_local global i32 0, align 4
@TXD_UPDATE = common dso_local global i32 0, align 4
@TXD_OWN = common dso_local global i32 0, align 4
@TXD_SOP = common dso_local global i32 0, align 4
@TXD_EOP = common dso_local global i32 0, align 4
@TXD_LENGTH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@CREG_CTRL_TWAKEUP = common dso_local global i32 0, align 4
@CREG_CTRL = common dso_local global i64 0, align 8
@CREG_TIMASK = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @qe_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sunqe*, align 8
  %6 = alloca %struct.sunqe_buffers*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.sunqe* @netdev_priv(%struct.net_device* %12)
  store %struct.sunqe* %13, %struct.sunqe** %5, align 8
  %14 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %15 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %14, i32 0, i32 5
  %16 = load %struct.sunqe_buffers*, %struct.sunqe_buffers** %15, align 8
  store %struct.sunqe_buffers* %16, %struct.sunqe_buffers** %6, align 8
  %17 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %18 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %21 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %24 = call i32 @qe_tx_reclaim(%struct.sunqe* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %29 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  %31 = load %struct.sunqe_buffers*, %struct.sunqe_buffers** %6, align 8
  %32 = getelementptr inbounds %struct.sunqe_buffers, %struct.sunqe_buffers* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @TX_RING_SIZE, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %34, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %33, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8* %41, i8** %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* @tx_buf, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @TX_RING_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %44, %46
  %48 = call i64 @qebuf_offset(i32 %43, i32 %47)
  %49 = add nsw i64 %42, %48
  store i64 %49, i64* %7, align 8
  %50 = load i32, i32* @TXD_UPDATE, align 4
  %51 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %52 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %51, i32 0, i32 3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %50, i32* %59, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %60, i8* %61, i32 %62)
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %66 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %65, i32 0, i32 3
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i64 %64, i64* %73, align 8
  %74 = load i32, i32* @TXD_OWN, align 4
  %75 = load i32, i32* @TXD_SOP, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @TXD_EOP, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @TXD_LENGTH, align 4
  %81 = and i32 %79, %80
  %82 = or i32 %78, %81
  %83 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %84 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %82, i32* %91, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @NEXT_TX(i32 %92)
  %94 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %95 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @jiffies, align 4
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @CREG_CTRL_TWAKEUP, align 4
  %100 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %101 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CREG_CTRL, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @sbus_writel(i32 %99, i64 %104)
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.net_device*, %struct.net_device** %4, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %118 = call i64 @TX_BUFFS_AVAIL(%struct.sunqe* %117)
  %119 = icmp sle i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %2
  %121 = load %struct.net_device*, %struct.net_device** %4, align 8
  %122 = call i32 @netif_stop_queue(%struct.net_device* %121)
  %123 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %124 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CREG_TIMASK, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @sbus_writel(i32 0, i64 %127)
  br label %129

129:                                              ; preds = %120, %2
  %130 = load %struct.sunqe*, %struct.sunqe** %5, align 8
  %131 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %130, i32 0, i32 1
  %132 = call i32 @spin_unlock_irq(i32* %131)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %134 = call i32 @dev_kfree_skb(%struct.sk_buff* %133)
  %135 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %135
}

declare dso_local %struct.sunqe* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @qe_tx_reclaim(%struct.sunqe*) #1

declare dso_local i64 @qebuf_offset(i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i32 @sbus_writel(i32, i64) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.sunqe*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
