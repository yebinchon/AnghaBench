; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_net.c_hysdn_tx_netack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_net.c_hysdn_tx_netack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.net_local* }
%struct.net_local = type { i64, i32, %struct.TYPE_9__**, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.net_device = type { i32 }

@MAX_SKB_BUFFERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hysdn_tx_netack(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.net_local*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load %struct.net_local*, %struct.net_local** %5, align 8
  store %struct.net_local* %6, %struct.net_local** %3, align 8
  %7 = load %struct.net_local*, %struct.net_local** %3, align 8
  %8 = icmp ne %struct.net_local* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %73

10:                                               ; preds = %1
  %11 = load %struct.net_local*, %struct.net_local** %3, align 8
  %12 = getelementptr inbounds %struct.net_local, %struct.net_local* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %73

16:                                               ; preds = %10
  %17 = load %struct.net_local*, %struct.net_local** %3, align 8
  %18 = getelementptr inbounds %struct.net_local, %struct.net_local* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.net_local*, %struct.net_local** %3, align 8
  %25 = getelementptr inbounds %struct.net_local, %struct.net_local* %24, i32 0, i32 2
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %25, align 8
  %27 = load %struct.net_local*, %struct.net_local** %3, align 8
  %28 = getelementptr inbounds %struct.net_local, %struct.net_local* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %26, i64 %29
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.net_local*, %struct.net_local** %3, align 8
  %35 = getelementptr inbounds %struct.net_local, %struct.net_local* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %33
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  %43 = load %struct.net_local*, %struct.net_local** %3, align 8
  %44 = getelementptr inbounds %struct.net_local, %struct.net_local* %43, i32 0, i32 2
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %44, align 8
  %46 = load %struct.net_local*, %struct.net_local** %3, align 8
  %47 = getelementptr inbounds %struct.net_local, %struct.net_local* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %45, i64 %48
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = call i32 @dev_kfree_skb(%struct.TYPE_9__* %51)
  %53 = load %struct.net_local*, %struct.net_local** %3, align 8
  %54 = getelementptr inbounds %struct.net_local, %struct.net_local* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MAX_SKB_BUFFERS, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %16
  %59 = load %struct.net_local*, %struct.net_local** %3, align 8
  %60 = getelementptr inbounds %struct.net_local, %struct.net_local* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %16
  %62 = load %struct.net_local*, %struct.net_local** %3, align 8
  %63 = getelementptr inbounds %struct.net_local, %struct.net_local* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 8
  %66 = sext i32 %64 to i64
  %67 = load i64, i64* @MAX_SKB_BUFFERS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.net_local*, %struct.net_local** %3, align 8
  %71 = bitcast %struct.net_local* %70 to %struct.net_device*
  %72 = call i32 @netif_start_queue(%struct.net_device* %71)
  br label %73

73:                                               ; preds = %9, %15, %69, %61
  ret void
}

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_9__*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
