; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_txrx.c_p54_tx_qos_accounting_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_txrx.c_p54_tx_qos_accounting_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32, i32, %struct.p54_tx_queue_stats* }
%struct.p54_tx_queue_stats = type { i64, i64, i32 }
%struct.sk_buff = type { i32 }

@P54_QUEUE_NUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@P54_QUEUE_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p54_common*, %struct.sk_buff*, i64)* @p54_tx_qos_accounting_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_tx_qos_accounting_alloc(%struct.p54_common* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p54_common*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.p54_tx_queue_stats*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.p54_common* %0, %struct.p54_common** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @P54_QUEUE_NUM, align 8
  %13 = icmp uge i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %92

20:                                               ; preds = %3
  %21 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %22 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %21, i32 0, i32 2
  %23 = load %struct.p54_tx_queue_stats*, %struct.p54_tx_queue_stats** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.p54_tx_queue_stats, %struct.p54_tx_queue_stats* %23, i64 %24
  store %struct.p54_tx_queue_stats* %25, %struct.p54_tx_queue_stats** %8, align 8
  %26 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %27 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %26, i32 0, i32 0
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.p54_tx_queue_stats*, %struct.p54_tx_queue_stats** %8, align 8
  %31 = getelementptr inbounds %struct.p54_tx_queue_stats, %struct.p54_tx_queue_stats* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.p54_tx_queue_stats*, %struct.p54_tx_queue_stats** %8, align 8
  %34 = getelementptr inbounds %struct.p54_tx_queue_stats, %struct.p54_tx_queue_stats* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %20
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @IS_QOS_QUEUE(i64 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %37, %20
  %42 = phi i1 [ false, %20 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %48 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %47, i32 0, i32 0
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* @ENOSPC, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %92

53:                                               ; preds = %41
  %54 = load %struct.p54_tx_queue_stats*, %struct.p54_tx_queue_stats** %8, align 8
  %55 = getelementptr inbounds %struct.p54_tx_queue_stats, %struct.p54_tx_queue_stats* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.p54_tx_queue_stats*, %struct.p54_tx_queue_stats** %8, align 8
  %59 = getelementptr inbounds %struct.p54_tx_queue_stats, %struct.p54_tx_queue_stats* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.p54_tx_queue_stats*, %struct.p54_tx_queue_stats** %8, align 8
  %63 = getelementptr inbounds %struct.p54_tx_queue_stats, %struct.p54_tx_queue_stats* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.p54_tx_queue_stats*, %struct.p54_tx_queue_stats** %8, align 8
  %66 = getelementptr inbounds %struct.p54_tx_queue_stats, %struct.p54_tx_queue_stats* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %53
  %70 = load i64, i64* %7, align 8
  %71 = call i64 @IS_QOS_QUEUE(i64 %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %69, %53
  %74 = phi i1 [ false, %53 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @P54_QUEUE_DATA, align 8
  %81 = sub i64 %79, %80
  store i64 %81, i64* %10, align 8
  %82 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %83 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @ieee80211_stop_queue(i32 %84, i64 %85)
  br label %87

87:                                               ; preds = %78, %73
  %88 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %89 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %88, i32 0, i32 0
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %46, %17
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IS_QOS_QUEUE(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ieee80211_stop_queue(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
