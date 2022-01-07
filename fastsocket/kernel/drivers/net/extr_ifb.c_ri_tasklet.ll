; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ifb.c_ri_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ifb.c_ri_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.ifb_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { i32 }
%struct.sk_buff = type { %struct.TYPE_3__*, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@init_net = common dso_local global i32 0, align 4
@AT_EGRESS = common dso_local global i32 0, align 4
@AT_INGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ri_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ri_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ifb_private*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.netdev_queue*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ifb_private* @netdev_priv(%struct.net_device* %11)
  store %struct.ifb_private* %12, %struct.ifb_private** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  store %struct.net_device_stats* %14, %struct.net_device_stats** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %15, i32 0)
  store %struct.netdev_queue* %16, %struct.netdev_queue** %6, align 8
  %17 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %18 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %22 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %21, i32 0, i32 7
  %23 = call %struct.sk_buff* @skb_peek(i32* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = icmp eq %struct.sk_buff* %23, null
  br i1 %24, label %25, label %61

25:                                               ; preds = %1
  %26 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %27 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %31 = call i64 @__netif_tx_trylock(%struct.netdev_queue* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %25
  %34 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %35 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %43, %33
  %39 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %40 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %39, i32 0, i32 3
  %41 = call %struct.sk_buff* @skb_dequeue(i32* %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %7, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %45 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %44, i32 0, i32 7
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call i32 @skb_queue_tail(i32* %45, %struct.sk_buff* %46)
  %48 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %49 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %38

52:                                               ; preds = %38
  %53 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %54 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %53)
  br label %60

55:                                               ; preds = %25
  %56 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %57 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %188

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %1
  br label %62

62:                                               ; preds = %153, %61
  %63 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %64 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %63, i32 0, i32 7
  %65 = call %struct.sk_buff* @skb_dequeue(i32* %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %7, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %67, label %154

67:                                               ; preds = %62
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @G_TC_FROM(i64 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @SET_TC_NCLS(i64 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %81 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %88 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.TYPE_3__* @dev_get_by_index(i32* @init_net, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %98, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = icmp ne %struct.TYPE_3__* %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %67
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = call i32 @dev_kfree_skb(%struct.sk_buff* %104)
  %106 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %107 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %154

110:                                              ; preds = %67
  %111 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = call i32 @dev_put(%struct.TYPE_3__* %113)
  %115 = load %struct.net_device*, %struct.net_device** %3, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @AT_EGRESS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %110
  %125 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %126 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = call i32 @dev_queue_xmit(%struct.sk_buff* %129)
  br label %153

131:                                              ; preds = %110
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @AT_INGRESS, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %131
  %137 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %138 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @skb_pull(%struct.sk_buff* %141, i32 %146)
  %148 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %149 = call i32 @netif_rx(%struct.sk_buff* %148)
  br label %152

150:                                              ; preds = %131
  %151 = call i32 (...) @BUG()
  br label %152

152:                                              ; preds = %150, %136
  br label %153

153:                                              ; preds = %152, %124
  br label %62

154:                                              ; preds = %103, %62
  %155 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %156 = call i64 @__netif_tx_trylock(%struct.netdev_queue* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %187

158:                                              ; preds = %154
  %159 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %160 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %164 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %163, i32 0, i32 3
  %165 = call %struct.sk_buff* @skb_peek(i32* %164)
  store %struct.sk_buff* %165, %struct.sk_buff** %7, align 8
  %166 = icmp eq %struct.sk_buff* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %158
  %168 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %169 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %168, i32 0, i32 0
  store i32 0, i32* %169, align 4
  %170 = load %struct.net_device*, %struct.net_device** %3, align 8
  %171 = call i64 @netif_queue_stopped(%struct.net_device* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load %struct.net_device*, %struct.net_device** %3, align 8
  %175 = call i32 @netif_wake_queue(%struct.net_device* %174)
  br label %176

176:                                              ; preds = %173, %167
  br label %184

177:                                              ; preds = %158
  %178 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %179 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  %182 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %183 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %182)
  br label %188

184:                                              ; preds = %176
  %185 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %186 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %185)
  br label %194

187:                                              ; preds = %154
  br label %188

188:                                              ; preds = %187, %177, %55
  %189 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %190 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %189, i32 0, i32 0
  store i32 1, i32* %190, align 4
  %191 = load %struct.ifb_private*, %struct.ifb_private** %4, align 8
  %192 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %191, i32 0, i32 1
  %193 = call i32 @tasklet_schedule(i32* %192)
  br label %194

194:                                              ; preds = %188, %184
  ret void
}

declare dso_local %struct.ifb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i64 @__netif_tx_trylock(%struct.netdev_queue*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

declare dso_local i32 @G_TC_FROM(i64) #1

declare dso_local i64 @SET_TC_NCLS(i64) #1

declare dso_local %struct.TYPE_3__* @dev_get_by_index(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dev_put(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
