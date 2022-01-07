; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_tx_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_tx_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__*, %struct.tx_ring_info* }
%struct.TYPE_2__ = type { i32 }
%struct.tx_ring_info = type { i32, i32, i32 }
%struct.netdev_queue = type { i32 }

@TX_CS_MK = common dso_local global i32 0, align 4
@TX_CS_MMK = common dso_local global i32 0, align 4
@TX_CS_PKT_CNT = common dso_local global i32 0, align 4
@TX_CS_PKT_CNT_SHIFT = common dso_local global i32 0, align 4
@TX_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: niu_tx_work() pkt_cnt[%u] cons[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, %struct.tx_ring_info*)* @niu_tx_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_tx_work(%struct.niu* %0, %struct.tx_ring_info* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.tx_ring_info*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store %struct.tx_ring_info* %1, %struct.tx_ring_info** %4, align 8
  %11 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %12 = load %struct.niu*, %struct.niu** %3, align 8
  %13 = getelementptr inbounds %struct.niu, %struct.niu* %12, i32 0, i32 1
  %14 = load %struct.tx_ring_info*, %struct.tx_ring_info** %13, align 8
  %15 = ptrtoint %struct.tx_ring_info* %11 to i64
  %16 = ptrtoint %struct.tx_ring_info* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 12
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load %struct.niu*, %struct.niu** %3, align 8
  %21 = getelementptr inbounds %struct.niu, %struct.niu* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_2__* %22, i32 %23)
  store %struct.netdev_queue* %24, %struct.netdev_queue** %5, align 8
  %25 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %26 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @TX_CS_MK, align 4
  %30 = load i32, i32* @TX_CS_MMK, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %83

39:                                               ; preds = %2
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @TX_CS_PKT_CNT, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @TX_CS_PKT_CNT_SHIFT, align 4
  %44 = ashr i32 %42, %43
  store i32 %44, i32* %6, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %47 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  %50 = load i32, i32* @TX_CS_PKT_CNT, align 4
  %51 = load i32, i32* @TX_CS_PKT_CNT_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = and i32 %49, %52
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %56 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %58 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @TX_DONE, align 4
  %61 = load %struct.niu*, %struct.niu** %3, align 8
  %62 = getelementptr inbounds %struct.niu, %struct.niu* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @niudbg(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %73, %39
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %6, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.niu*, %struct.niu** %3, align 8
  %75 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @release_tx_packet(%struct.niu* %74, %struct.tx_ring_info* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  br label %69

78:                                               ; preds = %69
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %81 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = call i32 (...) @smp_mb()
  br label %83

83:                                               ; preds = %78, %38
  %84 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %85 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %89 = call i64 @niu_tx_avail(%struct.tx_ring_info* %88)
  %90 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %91 = call i64 @NIU_TX_WAKEUP_THRESH(%struct.tx_ring_info* %90)
  %92 = icmp sgt i64 %89, %91
  br label %93

93:                                               ; preds = %87, %83
  %94 = phi i1 [ false, %83 ], [ %92, %87 ]
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %93
  %99 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %100 = call i32 (...) @smp_processor_id()
  %101 = call i32 @__netif_tx_lock(%struct.netdev_queue* %99, i32 %100)
  %102 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %103 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %107 = call i64 @niu_tx_avail(%struct.tx_ring_info* %106)
  %108 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %109 = call i64 @NIU_TX_WAKEUP_THRESH(%struct.tx_ring_info* %108)
  %110 = icmp sgt i64 %107, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %113 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %112)
  br label %114

114:                                              ; preds = %111, %105, %98
  %115 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %116 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %115)
  br label %117

117:                                              ; preds = %114, %93
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @niudbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @release_tx_packet(%struct.niu*, %struct.tx_ring_info*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @niu_tx_avail(%struct.tx_ring_info*) #1

declare dso_local i64 @NIU_TX_WAKEUP_THRESH(%struct.tx_ring_info*) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
