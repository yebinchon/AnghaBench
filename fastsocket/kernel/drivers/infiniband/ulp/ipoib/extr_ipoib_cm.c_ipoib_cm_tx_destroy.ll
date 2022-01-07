; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_tx_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_tx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_cm_tx = type { i32, %struct.ipoib_cm_tx_buf*, %struct.TYPE_3__*, i32, i64, i64 }
%struct.ipoib_cm_tx_buf = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"Destroy active connection 0x%x head 0x%x tail 0x%x\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"timing out; %d sends not completed\0A\00", align 1
@ipoib_sendq_size = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IPOIB_FLAG_ADMIN_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoib_cm_tx*)* @ipoib_cm_tx_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_cm_tx_destroy(%struct.ipoib_cm_tx* %0) #0 {
  %2 = alloca %struct.ipoib_cm_tx*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca %struct.ipoib_cm_tx_buf*, align 8
  %5 = alloca i64, align 8
  store %struct.ipoib_cm_tx* %0, %struct.ipoib_cm_tx** %2, align 8
  %6 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %7 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.ipoib_dev_priv* @netdev_priv(i32 %8)
  store %struct.ipoib_dev_priv* %9, %struct.ipoib_dev_priv** %3, align 8
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %11 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %12 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %17 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi i32 [ %20, %15 ], [ 0, %21 ]
  %24 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %25 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %28 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %26, i32 %29)
  %31 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %32 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %37 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ib_destroy_cm_id(i64 %38)
  br label %40

40:                                               ; preds = %35, %22
  %41 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %42 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %41, i32 0, i32 1
  %43 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %42, align 8
  %44 = icmp ne %struct.ipoib_cm_tx_buf* %43, null
  br i1 %44, label %45, label %80

45:                                               ; preds = %40
  %46 = load i64, i64* @jiffies, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %77, %45
  %48 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %49 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %52 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = sub nsw i32 %50, %54
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %47
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* @HZ, align 4
  %61 = mul nsw i32 5, %60
  %62 = sext i32 %61 to i64
  %63 = add i64 %59, %62
  %64 = call i64 @time_after(i64 %58, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %68 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %69 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %72 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %70, %74
  %76 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  br label %81

77:                                               ; preds = %57
  %78 = call i32 @msleep(i32 1)
  br label %47

79:                                               ; preds = %47
  br label %80

80:                                               ; preds = %79, %40
  br label %81

81:                                               ; preds = %80, %66
  br label %82

82:                                               ; preds = %156, %81
  %83 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %84 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %87 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = sub nsw i32 %85, %89
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %161

92:                                               ; preds = %82
  %93 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %94 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %93, i32 0, i32 1
  %95 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %94, align 8
  %96 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %97 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ipoib_sendq_size, align 4
  %100 = sub nsw i32 %99, 1
  %101 = and i32 %98, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ipoib_cm_tx_buf, %struct.ipoib_cm_tx_buf* %95, i64 %102
  store %struct.ipoib_cm_tx_buf* %103, %struct.ipoib_cm_tx_buf** %4, align 8
  %104 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %105 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %4, align 8
  %108 = getelementptr inbounds %struct.ipoib_cm_tx_buf, %struct.ipoib_cm_tx_buf* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %4, align 8
  %111 = getelementptr inbounds %struct.ipoib_cm_tx_buf, %struct.ipoib_cm_tx_buf* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @DMA_TO_DEVICE, align 4
  %116 = call i32 @ib_dma_unmap_single(i32 %106, i32 %109, i32 %114, i32 %115)
  %117 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %4, align 8
  %118 = getelementptr inbounds %struct.ipoib_cm_tx_buf, %struct.ipoib_cm_tx_buf* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = call i32 @dev_kfree_skb_any(%struct.TYPE_4__* %119)
  %121 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %122 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %126 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @netif_tx_lock_bh(i32 %127)
  %129 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %130 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* @ipoib_sendq_size, align 4
  %134 = ashr i32 %133, 1
  %135 = icmp eq i32 %132, %134
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %92
  %140 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %141 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @netif_queue_stopped(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = load i32, i32* @IPOIB_FLAG_ADMIN_UP, align 4
  %147 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %148 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %147, i32 0, i32 1
  %149 = call i64 @test_bit(i32 %146, i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %153 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @netif_wake_queue(i32 %154)
  br label %156

156:                                              ; preds = %151, %145, %139, %92
  %157 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %158 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @netif_tx_unlock_bh(i32 %159)
  br label %82

161:                                              ; preds = %82
  %162 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %163 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %162, i32 0, i32 2
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = icmp ne %struct.TYPE_3__* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %168 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %167, i32 0, i32 2
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = call i32 @ib_destroy_qp(%struct.TYPE_3__* %169)
  br label %171

171:                                              ; preds = %166, %161
  %172 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %173 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %172, i32 0, i32 1
  %174 = load %struct.ipoib_cm_tx_buf*, %struct.ipoib_cm_tx_buf** %173, align 8
  %175 = call i32 @vfree(%struct.ipoib_cm_tx_buf* %174)
  %176 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %2, align 8
  %177 = call i32 @kfree(%struct.ipoib_cm_tx* %176)
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(i32) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32, i64, i32) #1

declare dso_local i32 @ib_destroy_cm_id(i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_4__*) #1

declare dso_local i32 @netif_tx_lock_bh(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @netif_tx_unlock_bh(i32) #1

declare dso_local i32 @ib_destroy_qp(%struct.TYPE_3__*) #1

declare dso_local i32 @vfree(%struct.ipoib_cm_tx_buf*) #1

declare dso_local i32 @kfree(%struct.ipoib_cm_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
