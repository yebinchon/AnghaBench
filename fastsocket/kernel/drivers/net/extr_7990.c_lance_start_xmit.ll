; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_lance_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_lance_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.net_device = type { i32 }
%struct.lance_private = type { i32, i32, i32, i32, %struct.lance_init_block* }
%struct.lance_init_block = type { %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32, i32, i64 }

@lance_start_xmit.outs = internal global i32 0, align 4
@TX_BUFFS_AVAIL = common dso_local global i64 0, align 8
@NETDEV_TX_LOCKED = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@LE_T1_POK = common dso_local global i32 0, align 4
@LE_T1_OWN = common dso_local global i32 0, align 4
@LE_C0_INEA = common dso_local global i32 0, align 4
@LE_C0_TDMD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lance_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.lance_private*, align 8
  %7 = alloca %struct.lance_init_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.lance_private* @netdev_priv(%struct.net_device* %12)
  store %struct.lance_private* %13, %struct.lance_private** %6, align 8
  %14 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %15 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %14, i32 0, i32 4
  %16 = load %struct.lance_init_block*, %struct.lance_init_block** %15, align 8
  store %struct.lance_init_block* %16, %struct.lance_init_block** %7, align 8
  %17 = load i64, i64* @TX_BUFFS_AVAIL, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @NETDEV_TX_LOCKED, align 4
  store i32 %20, i32* %3, align 4
  br label %140

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @netif_stop_queue(%struct.net_device* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ETH_ZLEN, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @ETH_ZLEN, align 4
  br label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %10, align 4
  %36 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %37 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %40 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 0, %43
  %45 = or i32 %44, 61440
  %46 = load %struct.lance_init_block*, %struct.lance_init_block** %7, align 8
  %47 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %46, i32 0, i32 0
  %48 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 8
  %53 = load %struct.lance_init_block*, %struct.lance_init_block** %7, align 8
  %54 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %53, i32 0, i32 0
  %55 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ETH_ZLEN, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %34
  %66 = load %struct.lance_init_block*, %struct.lance_init_block** %7, align 8
  %67 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %66, i32 0, i32 1
  %68 = load volatile i32**, i32*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = bitcast i32* %73 to i8*
  %75 = load i32, i32* @ETH_ZLEN, align 4
  %76 = call i32 @memset(i8* %74, i32 0, i32 %75)
  br label %77

77:                                               ; preds = %65, %34
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = load %struct.lance_init_block*, %struct.lance_init_block** %7, align 8
  %80 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %79, i32 0, i32 1
  %81 = load volatile i32**, i32*** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = bitcast i32* %86 to i8*
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %78, i8* %87, i32 %88)
  %90 = load i32, i32* @LE_T1_POK, align 4
  %91 = load i32, i32* @LE_T1_OWN, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.lance_init_block*, %struct.lance_init_block** %7, align 8
  %94 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %93, i32 0, i32 0
  %95 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 %92, i32* %99, align 4
  %100 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %101 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  %104 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %105 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %103, %106
  %108 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %109 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @lance_start_xmit.outs, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @lance_start_xmit.outs, align 4
  %112 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %113 = load i32, i32* @LE_C0_INEA, align 4
  %114 = load i32, i32* @LE_C0_TDMD, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @WRITERDP(%struct.lance_private* %112, i32 %115)
  %117 = load i32, i32* @jiffies, align 4
  %118 = load %struct.net_device*, %struct.net_device** %5, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = call i32 @dev_kfree_skb(%struct.sk_buff* %120)
  %122 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %123 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %122, i32 0, i32 3
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @spin_lock_irqsave(i32* %123, i64 %124)
  %126 = load i64, i64* @TX_BUFFS_AVAIL, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %77
  %129 = load %struct.net_device*, %struct.net_device** %5, align 8
  %130 = call i32 @netif_start_queue(%struct.net_device* %129)
  br label %134

131:                                              ; preds = %77
  %132 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %133 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %132, i32 0, i32 2
  store i32 1, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %128
  %135 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %136 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %135, i32 0, i32 3
  %137 = load i64, i64* %11, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %134, %19
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @WRITERDP(%struct.lance_private*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
