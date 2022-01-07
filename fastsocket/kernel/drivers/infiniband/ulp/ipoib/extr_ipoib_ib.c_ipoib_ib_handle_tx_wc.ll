; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_handle_tx_wc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_handle_tx_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ib_wc = type { i32, i32, i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, %struct.ipoib_tx_buf* }
%struct.ipoib_tx_buf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"send completion: id %d, status: %d\0A\00", align 1
@ipoib_sendq_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"send completion event with wrid %d (> %d)\0A\00", align 1
@IPOIB_FLAG_ADMIN_UP = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"failed send event (status=%d, wrid=%d vend_err %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ib_wc*)* @ipoib_ib_handle_tx_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_ib_handle_tx_wc(%struct.net_device* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipoib_tx_buf*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.ipoib_dev_priv* %9, %struct.ipoib_dev_priv** %5, align 8
  %10 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %11 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %16 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ipoib_sendq_size, align 4
  %21 = icmp uge i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ipoib_sendq_size, align 4
  %29 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  br label %112

30:                                               ; preds = %2
  %31 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %32 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %31, i32 0, i32 4
  %33 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %33, i64 %35
  store %struct.ipoib_tx_buf* %36, %struct.ipoib_tx_buf** %7, align 8
  %37 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %38 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %7, align 8
  %41 = call i32 @ipoib_dma_unmap_tx(i32 %39, %struct.ipoib_tx_buf* %40)
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %7, align 8
  %48 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %51
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %7, align 8
  %60 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @dev_kfree_skb_any(%struct.TYPE_4__* %61)
  %63 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %64 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %68 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add i32 %69, -1
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @ipoib_sendq_size, align 4
  %72 = lshr i32 %71, 1
  %73 = icmp eq i32 %70, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %30
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = call i64 @netif_queue_stopped(%struct.net_device* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32, i32* @IPOIB_FLAG_ADMIN_UP, align 4
  %83 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %84 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %83, i32 0, i32 1
  %85 = call i64 @test_bit(i32 %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = call i32 @netif_wake_queue(%struct.net_device* %88)
  br label %90

90:                                               ; preds = %87, %81, %77, %30
  %91 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %92 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IB_WC_SUCCESS, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %90
  %97 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %98 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %104 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %105 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %109 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %103, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %25, %102, %96, %90
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg_data(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, i32, ...) #1

declare dso_local i32 @ipoib_dma_unmap_tx(i32, %struct.ipoib_tx_buf*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_4__*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
