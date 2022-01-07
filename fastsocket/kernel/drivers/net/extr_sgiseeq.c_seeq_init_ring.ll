; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_seeq_init_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_seeq_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sgiseeq_private = type { %struct.TYPE_8__*, %struct.TYPE_8__*, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.sk_buff*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_5__ = type { i32 }

@SEEQ_TX_BUFFERS = common dso_local global i32 0, align 4
@TCNTINFO_INIT = common dso_local global i32 0, align 4
@SEEQ_RX_BUFFERS = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RCNTINFO_INIT = common dso_local global i32 0, align 4
@HPCDMA_EOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @seeq_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seeq_init_ring(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sgiseeq_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.sgiseeq_private* @netdev_priv(%struct.net_device* %8)
  store %struct.sgiseeq_private* %9, %struct.sgiseeq_private** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @netif_stop_queue(%struct.net_device* %10)
  %12 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %13 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %15 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %17 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %19 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @__sgiseeq_set_mac_address(%struct.net_device* %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %44, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SEEQ_TX_BUFFERS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i32, i32* @TCNTINFO_INIT, align 4
  %28 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %29 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %27, i32* %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %38 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  %43 = call i32 @dma_sync_desc_dev(%struct.net_device* %36, %struct.TYPE_8__* %42)
  br label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %22

47:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %120, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SEEQ_RX_BUFFERS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %123

52:                                               ; preds = %48
  %53 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %54 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %102, label %62

62:                                               ; preds = %52
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = load i32, i32* @PKT_BUF_SZ, align 4
  %65 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %63, i32 %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %7, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = icmp eq %struct.sk_buff* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %145

71:                                               ; preds = %62
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = call i32 @skb_reserve(%struct.sk_buff* %72, i32 2)
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %80, 2
  %82 = load i32, i32* @PKT_BUF_SZ, align 4
  %83 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %84 = call i32 @dma_map_single(i32 %77, i64 %81, i32 %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %87 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store %struct.sk_buff* %85, %struct.sk_buff** %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %95 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 %93, i32* %101, align 4
  br label %102

102:                                              ; preds = %71, %52
  %103 = load i32, i32* @RCNTINFO_INIT, align 4
  %104 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %105 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32 %103, i32* %111, align 8
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %114 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i64 %117
  %119 = call i32 @dma_sync_desc_dev(%struct.net_device* %112, %struct.TYPE_8__* %118)
  br label %120

120:                                              ; preds = %102
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %48

123:                                              ; preds = %48
  %124 = load i32, i32* @HPCDMA_EOR, align 4
  %125 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %126 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %124
  store i32 %135, i32* %133, align 8
  %136 = load %struct.net_device*, %struct.net_device** %3, align 8
  %137 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %138 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 %142
  %144 = call i32 @dma_sync_desc_dev(%struct.net_device* %136, %struct.TYPE_8__* %143)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %123, %68
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.sgiseeq_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @__sgiseeq_set_mac_address(%struct.net_device*) #1

declare dso_local i32 @dma_sync_desc_dev(%struct.net_device*, %struct.TYPE_8__*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
