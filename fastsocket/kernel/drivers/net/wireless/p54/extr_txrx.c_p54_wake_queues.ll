; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_txrx.c_p54_wake_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_txrx.c_p54_wake_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@P54_QUEUE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p54_common*)* @p54_wake_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54_wake_queues(%struct.p54_common* %0) #0 {
  %2 = alloca %struct.p54_common*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %2, align 8
  %5 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %6 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %16 = call i32 @p54_tx_pending(%struct.p54_common* %15)
  %17 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %18 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %17, i32 0, i32 1
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %58, %14
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %24 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %22, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %21
  %30 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %31 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @P54_QUEUE_DATA, align 4
  %35 = add i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %41 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @P54_QUEUE_DATA, align 4
  %45 = add i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %39, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %29
  %52 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %53 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ieee80211_wake_queue(%struct.TYPE_4__* %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %29
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %21

61:                                               ; preds = %21
  %62 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %63 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %62, i32 0, i32 1
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  br label %66

66:                                               ; preds = %61, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @p54_tx_pending(%struct.p54_common*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ieee80211_wake_queue(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
