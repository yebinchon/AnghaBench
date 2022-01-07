; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.ipoib_cm_tx = type { i64, i32, %struct.TYPE_4__*, %struct.ipoib_cm_tx_buf* }
%struct.TYPE_4__ = type { i32 }
%struct.ipoib_cm_tx_buf = type { i32, %struct.sk_buff* }
%struct.ipoib_dev_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"packet len %d (> %d) too long to send, dropping\0A\00", align 1
@IPOIB_ENCAP_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"sending packet: head 0x%x length %d connection 0x%x\0A\00", align 1
@ipoib_sendq_size = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"post_send failed, error %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"TX ring 0x%x full, stopping kernel net queue\0A\00", align 1
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@IB_CQ_REPORT_MISSED_EVENTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"request notify on send CQ failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_cm_send(%struct.net_device* %0, %struct.sk_buff* %1, %struct.ipoib_cm_tx* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipoib_cm_tx*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca %struct.ipoib_cm_tx_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ipoib_cm_tx* %2, %struct.ipoib_cm_tx** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ipoib_dev_priv* %12, %struct.ipoib_dev_priv** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %17 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %3
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %29 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %30)
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %45 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IPOIB_ENCAP_LEN, align 8
  %48 = sub nsw i64 %46, %47
  %49 = call i32 @ipoib_cm_skb_too_long(%struct.net_device* %42, %struct.sk_buff* %43, i64 %48)
  br label %196

50:                                               ; preds = %3
  %51 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %52 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %53 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %59 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %51, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %54, i64 %57, i32 %62)
  %64 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %65 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %64, i32 0, i32 3
  %66 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %65, align 8
  %67 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %68 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ipoib_sendq_size, align 4
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %69, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ipoib_cm_tx_buf, %struct.ipoib_cm_tx_buf* %66, i64 %73
  store %struct.ipoib_cm_tx_buf* %74, %struct.ipoib_cm_tx_buf** %8, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %8, align 8
  %77 = getelementptr inbounds %struct.ipoib_cm_tx_buf, %struct.ipoib_cm_tx_buf* %76, i32 0, i32 1
  store %struct.sk_buff* %75, %struct.sk_buff** %77, align 8
  %78 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %79 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @DMA_TO_DEVICE, align 4
  %88 = call i32 @ib_dma_map_single(i32 %80, i32 %83, i64 %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %90 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @ib_dma_mapping_error(i32 %91, i32 %92)
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %50
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %102)
  br label %196

104:                                              ; preds = %50
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %8, align 8
  %107 = getelementptr inbounds %struct.ipoib_cm_tx_buf, %struct.ipoib_cm_tx_buf* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = call i32 @skb_orphan(%struct.sk_buff* %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = call i32 @skb_dst_drop(%struct.sk_buff* %110)
  %112 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %113 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %114 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %115 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ipoib_sendq_size, align 4
  %118 = sub nsw i32 %117, 1
  %119 = and i32 %116, %118
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @post_send(%struct.ipoib_dev_priv* %112, %struct.ipoib_cm_tx* %113, i32 %119, i32 %120, i64 %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %104
  %129 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %138 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* @DMA_TO_DEVICE, align 4
  %145 = call i32 @ib_dma_unmap_single(i32 %139, i32 %140, i64 %143, i32 %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %146)
  br label %196

148:                                              ; preds = %104
  %149 = load i32, i32* @jiffies, align 4
  %150 = load %struct.net_device*, %struct.net_device** %4, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %153 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  %156 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %157 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* @ipoib_sendq_size, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %195

162:                                              ; preds = %148
  %163 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %164 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %165 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %164, i32 0, i32 2
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %163, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  %170 = load %struct.net_device*, %struct.net_device** %4, align 8
  %171 = call i32 @netif_stop_queue(%struct.net_device* %170)
  %172 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %173 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %176 = load i32, i32* @IB_CQ_REPORT_MISSED_EVENTS, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @ib_req_notify_cq(i32 %174, i32 %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %162
  %182 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %183 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %182, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %194

184:                                              ; preds = %162
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %189 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.net_device*, %struct.net_device** %4, align 8
  %192 = call i32 @ipoib_send_comp_handler(i32 %190, %struct.net_device* %191)
  br label %193

193:                                              ; preds = %187, %184
  br label %194

194:                                              ; preds = %193, %181
  br label %195

195:                                              ; preds = %194, %148
  br label %196

196:                                              ; preds = %23, %96, %195, %128
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local i32 @ipoib_cm_skb_too_long(%struct.net_device*, %struct.sk_buff*, i64) #1

declare dso_local i32 @ipoib_dbg_data(%struct.ipoib_dev_priv*, i8*, i32, i64, i32) #1

declare dso_local i32 @ib_dma_map_single(i32, i32, i64, i32) #1

declare dso_local i32 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @post_send(%struct.ipoib_dev_priv*, %struct.ipoib_cm_tx*, i32, i32, i64) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ib_req_notify_cq(i32, i32) #1

declare dso_local i32 @ipoib_send_comp_handler(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
