; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_au1000_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_au1000_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32, i32, %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.au1000_private = type { i64, i32, %struct.TYPE_4__**, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@au1000_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: tx: aup %x len=%d, data=%p, head %d\0A\00", align 1
@TX_DMA_ENABLE = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@TX_T_DONE = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@NUM_TX_DMA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @au1000_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1000_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.au1000_private*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %12)
  store %struct.au1000_private* %13, %struct.au1000_private** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 2
  store %struct.net_device_stats* %15, %struct.net_device_stats** %7, align 8
  %16 = load i32, i32* @au1000_debug, align 4
  %17 = icmp sgt i32 %16, 5
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %23 = ptrtoint %struct.au1000_private* %22 to i32
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %31 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23, i32 %26, i32 %29, i64 %32)
  br label %34

34:                                               ; preds = %18, %2
  %35 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %36 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %36, align 8
  %38 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %39 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %8, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load volatile i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @TX_DMA_ENABLE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %34
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = call i32 @netif_stop_queue(%struct.net_device* %51)
  %53 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %54 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %55, i32* %3, align 4
  br label %167

56:                                               ; preds = %34
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @TX_T_DONE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load volatile i32, i32* %64, align 4
  %66 = call i32 @update_tx_stats(%struct.net_device* %62, i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store volatile i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %61, %56
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %72 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %77 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = call i32 @netif_wake_queue(%struct.net_device* %78)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %82 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %82, align 8
  %84 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %85 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %83, i64 %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %10, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %89, i64 %92, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ETH_ZLEN, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %80
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %118, %102
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @ETH_ZLEN, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 0, i8* %117, align 1
  br label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %106

121:                                              ; preds = %106
  %122 = load i32, i32* @ETH_ZLEN, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store volatile i32 %122, i32* %124, align 4
  br label %131

125:                                              ; preds = %80
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  store volatile i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %125, %121
  %132 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %133 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load volatile i32, i32* %137, align 4
  %139 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %140 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @TX_DMA_ENABLE, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  store volatile i32 %147, i32* %149, align 4
  %150 = call i32 (...) @au_sync()
  %151 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %152 = call i32 @dev_kfree_skb(%struct.sk_buff* %151)
  %153 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %154 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, 1
  %157 = load i32, i32* @NUM_TX_DMA, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = and i64 %156, %159
  %161 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %162 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load i32, i32* @jiffies, align 4
  %164 = load %struct.net_device*, %struct.net_device** %5, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %131, %50
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @update_tx_stats(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
