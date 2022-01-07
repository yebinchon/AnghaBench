; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_handle_tx_wc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_handle_tx_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ib_wc = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ipoib_cm_tx* }
%struct.ipoib_cm_tx = type { i32, i32, %struct.ipoib_neigh*, i32, %struct.ipoib_cm_tx_buf* }
%struct.ipoib_neigh = type { i32* }
%struct.ipoib_cm_tx_buf = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.ipoib_dev_priv = type { i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@IPOIB_OP_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cm send completion: id %d, status: %d\0A\00", align 1
@ipoib_sendq_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"cm send completion event with wrid %d (> %d)\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IPOIB_FLAG_ADMIN_UP = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"failed cm send event (status=%d, wrid=%d vend_err %x)\0A\00", align 1
@IPOIB_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@IPOIB_FLAG_OPER_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_cm_handle_tx_wc(%struct.net_device* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ipoib_cm_tx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipoib_cm_tx_buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ipoib_neigh*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ipoib_dev_priv* %12, %struct.ipoib_dev_priv** %5, align 8
  %13 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %14 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %16, align 8
  store %struct.ipoib_cm_tx* %17, %struct.ipoib_cm_tx** %6, align 8
  %18 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %19 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IPOIB_OP_CM, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %27 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ipoib_sendq_size, align 4
  %32 = icmp uge i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ipoib_sendq_size, align 4
  %40 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  br label %179

41:                                               ; preds = %2
  %42 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %43 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %42, i32 0, i32 4
  %44 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ipoib_cm_tx_buf, %struct.ipoib_cm_tx_buf* %44, i64 %46
  store %struct.ipoib_cm_tx_buf* %47, %struct.ipoib_cm_tx_buf** %8, align 8
  %48 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %49 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %8, align 8
  %52 = getelementptr inbounds %struct.ipoib_cm_tx_buf, %struct.ipoib_cm_tx_buf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %8, align 8
  %55 = getelementptr inbounds %struct.ipoib_cm_tx_buf, %struct.ipoib_cm_tx_buf* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i32 @ib_dma_unmap_single(i32 %50, i32 %53, i64 %58, i32 %59)
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %8, align 8
  %67 = getelementptr inbounds %struct.ipoib_cm_tx_buf, %struct.ipoib_cm_tx_buf* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %70
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  %78 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %8, align 8
  %79 = getelementptr inbounds %struct.ipoib_cm_tx_buf, %struct.ipoib_cm_tx_buf* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = call i32 @dev_kfree_skb_any(%struct.TYPE_8__* %80)
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = call i32 @netif_tx_lock(%struct.net_device* %82)
  %84 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %85 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %89 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add i32 %90, -1
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @ipoib_sendq_size, align 4
  %93 = lshr i32 %92, 1
  %94 = icmp eq i32 %91, %93
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %41
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = call i64 @netif_queue_stopped(%struct.net_device* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load i32, i32* @IPOIB_FLAG_ADMIN_UP, align 4
  %104 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %105 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %104, i32 0, i32 3
  %106 = call i64 @test_bit(i32 %103, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = call i32 @netif_wake_queue(%struct.net_device* %109)
  br label %111

111:                                              ; preds = %108, %102, %98, %41
  %112 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %113 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @IB_WC_SUCCESS, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %176

117:                                              ; preds = %111
  %118 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %119 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %176

123:                                              ; preds = %117
  %124 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %125 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %126 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %130 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %124, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %128, i32 %131)
  %133 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %134 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %133, i32 0, i32 1
  %135 = load i64, i64* %9, align 8
  %136 = call i32 @spin_lock_irqsave(i32* %134, i64 %135)
  %137 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %138 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %137, i32 0, i32 2
  %139 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %138, align 8
  store %struct.ipoib_neigh* %139, %struct.ipoib_neigh** %10, align 8
  %140 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %10, align 8
  %141 = icmp ne %struct.ipoib_neigh* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %123
  %143 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %10, align 8
  %144 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %143, i32 0, i32 0
  store i32* null, i32** %144, align 8
  %145 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %10, align 8
  %146 = call i32 @ipoib_neigh_free(%struct.ipoib_neigh* %145)
  %147 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %148 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %147, i32 0, i32 2
  store %struct.ipoib_neigh* null, %struct.ipoib_neigh** %148, align 8
  br label %149

149:                                              ; preds = %142, %123
  %150 = load i32, i32* @IPOIB_FLAG_INITIALIZED, align 4
  %151 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %152 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %151, i32 0, i32 0
  %153 = call i64 @test_and_clear_bit(i32 %150, i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %149
  %156 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %157 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %156, i32 0, i32 1
  %158 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %159 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = call i32 @list_move(i32* %157, i32* %160)
  %162 = load i32, i32* @ipoib_workqueue, align 4
  %163 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %164 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = call i32 @queue_work(i32 %162, i32* %165)
  br label %167

167:                                              ; preds = %155, %149
  %168 = load i32, i32* @IPOIB_FLAG_OPER_UP, align 4
  %169 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %170 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %169, i32 0, i32 0
  %171 = call i32 @clear_bit(i32 %168, i32* %170)
  %172 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %173 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %172, i32 0, i32 1
  %174 = load i64, i64* %9, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  br label %176

176:                                              ; preds = %167, %117, %111
  %177 = load %struct.net_device*, %struct.net_device** %3, align 8
  %178 = call i32 @netif_tx_unlock(%struct.net_device* %177)
  br label %179

179:                                              ; preds = %176, %36
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg_data(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_8__*) #1

declare dso_local i32 @netif_tx_lock(%struct.net_device*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipoib_neigh_free(%struct.ipoib_neigh*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_tx_unlock(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
