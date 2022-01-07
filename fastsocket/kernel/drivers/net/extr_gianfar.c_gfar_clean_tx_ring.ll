; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.gfar_private = type { i32, i32, i64, i32, %struct.txbd8*, %struct.sk_buff**, i32, i64, %struct.TYPE_4__*, %struct.txbd8* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.txbd8 = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@TXBD_READY = common dso_local global i32 0, align 4
@BD_LENGTH_MASK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TXBD_WRAP = common dso_local global i32 0, align 4
@RXBUF_ALIGNMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @gfar_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_clean_tx_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gfar_private*, align 8
  %4 = alloca %struct.txbd8*, align 8
  %5 = alloca %struct.txbd8*, align 8
  %6 = alloca %struct.txbd8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %14)
  store %struct.gfar_private* %15, %struct.gfar_private** %3, align 8
  store %struct.txbd8* null, %struct.txbd8** %5, align 8
  %16 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %17 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %16, i32 0, i32 9
  %18 = load %struct.txbd8*, %struct.txbd8** %17, align 8
  store %struct.txbd8* %18, %struct.txbd8** %6, align 8
  %19 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %20 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %23 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %22, i32 0, i32 4
  %24 = load %struct.txbd8*, %struct.txbd8** %23, align 8
  store %struct.txbd8* %24, %struct.txbd8** %4, align 8
  %25 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %26 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %139, %1
  %29 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %30 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %29, i32 0, i32 5
  %31 = load %struct.sk_buff**, %struct.sk_buff*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %31, i64 %33
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %7, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %37, label %159

37:                                               ; preds = %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call %struct.txbd8* @skip_txbd(%struct.txbd8* %42, i32 %43, %struct.txbd8* %44, i32 %45)
  store %struct.txbd8* %46, %struct.txbd8** %5, align 8
  %47 = load %struct.txbd8*, %struct.txbd8** %5, align 8
  %48 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @TXBD_READY, align 4
  %52 = call i32 @BD_LFLAG(i32 %51)
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %37
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @BD_LENGTH_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %159

61:                                               ; preds = %55, %37
  %62 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %63 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %62, i32 0, i32 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %67 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %70 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DMA_TO_DEVICE, align 4
  %73 = call i32 @dma_unmap_single(i32* %65, i32 %68, i32 %71, i32 %72)
  %74 = load i32, i32* @TXBD_WRAP, align 4
  %75 = call i32 @BD_LFLAG(i32 %74)
  %76 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %77 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %81 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call %struct.txbd8* @next_txbd(%struct.txbd8* %80, %struct.txbd8* %81, i32 %82)
  store %struct.txbd8* %83, %struct.txbd8** %4, align 8
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %111, %61
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %84
  %89 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %90 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %89, i32 0, i32 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %94 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %97 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DMA_TO_DEVICE, align 4
  %100 = call i32 @dma_unmap_page(i32* %92, i32 %95, i32 %98, i32 %99)
  %101 = load i32, i32* @TXBD_WRAP, align 4
  %102 = call i32 @BD_LFLAG(i32 %101)
  %103 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %104 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %108 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call %struct.txbd8* @next_txbd(%struct.txbd8* %107, %struct.txbd8* %108, i32 %109)
  store %struct.txbd8* %110, %struct.txbd8** %4, align 8
  br label %111

111:                                              ; preds = %88
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %84

114:                                              ; preds = %84
  %115 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %116 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %115, i32 0, i32 6
  %117 = call i64 @skb_queue_len(i32* %116)
  %118 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %119 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %117, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %114
  %123 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %124 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %125 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @RXBUF_ALIGNMENT, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i64 @skb_recycle_check(%struct.sk_buff* %123, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %133 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %132, i32 0, i32 6
  %134 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %135 = call i32 @__skb_queue_head(i32* %133, %struct.sk_buff* %134)
  br label %139

136:                                              ; preds = %122, %114
  %137 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %138 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %137)
  br label %139

139:                                              ; preds = %136, %131
  %140 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %141 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %140, i32 0, i32 5
  %142 = load %struct.sk_buff**, %struct.sk_buff*** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %142, i64 %144
  store %struct.sk_buff* null, %struct.sk_buff** %145, align 8
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @TX_RING_MOD_MASK(i32 %148)
  %150 = and i32 %147, %149
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  %155 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %156 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %28

159:                                              ; preds = %60, %28
  %160 = load %struct.net_device*, %struct.net_device** %2, align 8
  %161 = call i64 @netif_queue_stopped(%struct.net_device* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %165 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.net_device*, %struct.net_device** %2, align 8
  %170 = call i32 @netif_wake_queue(%struct.net_device* %169)
  br label %171

171:                                              ; preds = %168, %163, %159
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %174 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.txbd8*, %struct.txbd8** %4, align 8
  %176 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %177 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %176, i32 0, i32 4
  store %struct.txbd8* %175, %struct.txbd8** %177, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.net_device*, %struct.net_device** %2, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, %178
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* %12, align 4
  ret i32 %184
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.txbd8* @skip_txbd(%struct.txbd8*, i32, %struct.txbd8*, i32) #1

declare dso_local i32 @BD_LFLAG(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local %struct.txbd8* @next_txbd(%struct.txbd8*, %struct.txbd8*, i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i64 @skb_recycle_check(%struct.sk_buff*, i64) #1

declare dso_local i32 @__skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @TX_RING_MOD_MASK(i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
