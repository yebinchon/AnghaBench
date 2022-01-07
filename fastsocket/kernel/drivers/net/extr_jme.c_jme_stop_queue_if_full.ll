; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_stop_queue_if_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_stop_queue_if_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, i32, %struct.jme_ring* }
%struct.jme_ring = type { i32, i32, %struct.jme_buffer_info* }
%struct.jme_buffer_info = type { i64, i64 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"TX Queue Paused.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"TX Queue Fast Waked.\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@TX_TIMEOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"TX Queue Stopped %d@%lu.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_stop_queue_if_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_stop_queue_if_full(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca %struct.jme_ring*, align 8
  %4 = alloca %struct.jme_buffer_info*, align 8
  %5 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %6 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %6, i32 0, i32 2
  %8 = load %struct.jme_ring*, %struct.jme_ring** %7, align 8
  %9 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %8, i64 0
  store %struct.jme_ring* %9, %struct.jme_ring** %3, align 8
  %10 = load %struct.jme_ring*, %struct.jme_ring** %3, align 8
  %11 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %10, i32 0, i32 2
  %12 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %11, align 8
  store %struct.jme_buffer_info* %12, %struct.jme_buffer_info** %4, align 8
  %13 = load %struct.jme_ring*, %struct.jme_ring** %3, align 8
  %14 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %13, i32 0, i32 1
  %15 = call i32 @atomic_read(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %4, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %17, i64 %18
  store %struct.jme_buffer_info* %19, %struct.jme_buffer_info** %4, align 8
  %20 = call i32 (...) @smp_wmb()
  %21 = load %struct.jme_ring*, %struct.jme_ring** %3, align 8
  %22 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %21, i32 0, i32 0
  %23 = call i32 @atomic_read(i32* %22)
  %24 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %25 = add nsw i32 %24, 2
  %26 = icmp slt i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %1
  %31 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netif_stop_queue(i32 %33)
  %35 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %36 = call i32 (%struct.jme_adapter*, i8*, ...) @msg_tx_queued(%struct.jme_adapter* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 (...) @smp_wmb()
  %38 = load %struct.jme_ring*, %struct.jme_ring** %3, align 8
  %39 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %38, i32 0, i32 0
  %40 = call i32 @atomic_read(i32* %39)
  %41 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %30
  %46 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @netif_wake_queue(i32 %48)
  %50 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %51 = call i32 (%struct.jme_adapter*, i8*, ...) @msg_tx_queued(%struct.jme_adapter* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %45, %30
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %4, align 8
  %55 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i64, i64* @jiffies, align 8
  %60 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %4, align 8
  %61 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load i64, i64* @TX_TIMEOUT, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %4, align 8
  %68 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %66, %58, %53
  %72 = phi i1 [ false, %58 ], [ false, %53 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @netif_stop_queue(i32 %79)
  %81 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i64, i64* @jiffies, align 8
  %84 = call i32 (%struct.jme_adapter*, i8*, ...) @msg_tx_queued(%struct.jme_adapter* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %82, i64 %83)
  br label %85

85:                                               ; preds = %76, %71
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @msg_tx_queued(%struct.jme_adapter*, i8*, ...) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
