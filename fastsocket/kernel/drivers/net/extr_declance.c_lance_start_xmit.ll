; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_declance.c_lance_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_declance.c_lance_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.lance_private = type { i32, i32*, i32, i32, i64*, %struct.lance_regs* }
%struct.lance_regs = type { i32 }

@ETH_ZLEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@btx_ring = common dso_local global %struct.TYPE_4__* null, align 8
@LE_T1_POK = common dso_local global i32 0, align 4
@LE_T1_OWN = common dso_local global i32 0, align 4
@TX_RING_MOD_MASK = common dso_local global i32 0, align 4
@TX_BUFFS_AVAIL = common dso_local global i64 0, align 8
@LE_C0_INEA = common dso_local global i32 0, align 4
@LE_C0_TDMD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @lance_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lance_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.lance_private*, align 8
  %7 = alloca %struct.lance_regs*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.lance_private* @netdev_priv(%struct.net_device* %12)
  store %struct.lance_private* %13, %struct.lance_private** %6, align 8
  %14 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %15 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %14, i32 0, i32 5
  %16 = load %struct.lance_regs*, %struct.lance_regs** %15, align 8
  store %struct.lance_regs* %16, %struct.lance_regs** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @ETH_ZLEN, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i32, i32* @ETH_ZLEN, align 4
  %30 = call i64 @skb_padto(%struct.sk_buff* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %142

34:                                               ; preds = %27
  %35 = load i32, i32* @ETH_ZLEN, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %34, %2
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %44 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %43, i32 0, i32 2
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %48 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 0, %50
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @btx_ring, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %60 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @lib_ptr(i32* %52, i32 %58, i32 %61)
  store i32 %51, i32* %62, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @btx_ring, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %71 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @lib_ptr(i32* %63, i32 %69, i32 %72)
  store i32 0, i32* %73, align 4
  %74 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %75 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %78 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %77, i32 0, i32 4
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @cp_to_buf(i32 %76, i8* %84, i32 %87, i32 %88)
  %90 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %91 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 16
  %98 = and i32 %97, 255
  %99 = load i32, i32* @LE_T1_POK, align 4
  %100 = load i32, i32* @LE_T1_OWN, align 4
  %101 = or i32 %99, %100
  %102 = or i32 %98, %101
  %103 = load i32*, i32** %8, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @btx_ring, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %111 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32* @lib_ptr(i32* %103, i32 %109, i32 %112)
  store i32 %102, i32* %113, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  %116 = load i32, i32* @TX_RING_MOD_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %119 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i64, i64* @TX_BUFFS_AVAIL, align 8
  %121 = icmp sle i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %36
  %123 = load %struct.net_device*, %struct.net_device** %5, align 8
  %124 = call i32 @netif_stop_queue(%struct.net_device* %123)
  br label %125

125:                                              ; preds = %122, %36
  %126 = load %struct.lance_regs*, %struct.lance_regs** %7, align 8
  %127 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %126, i32 0, i32 0
  %128 = load i32, i32* @LE_C0_INEA, align 4
  %129 = load i32, i32* @LE_C0_TDMD, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @writereg(i32* %127, i32 %130)
  %132 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %133 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %132, i32 0, i32 2
  %134 = load i64, i64* %9, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load i32, i32* @jiffies, align 4
  %137 = load %struct.net_device*, %struct.net_device** %5, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %140 = call i32 @dev_kfree_skb(%struct.sk_buff* %139)
  %141 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %125, %32
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_padto(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32* @lib_ptr(i32*, i32, i32) #1

declare dso_local i32 @cp_to_buf(i32, i8*, i32, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @writereg(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
