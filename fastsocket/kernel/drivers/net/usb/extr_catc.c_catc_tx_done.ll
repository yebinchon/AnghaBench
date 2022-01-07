; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_tx_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.catc* }
%struct.catc = type { i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@ECONNRESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Tx Reset.\00", align 1
@jiffies = common dso_local global i32 0, align 4
@TX_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"tx_done, status %d, length %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @catc_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catc_tx_done(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.catc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 2
  %9 = load %struct.catc*, %struct.catc** %8, align 8
  store %struct.catc* %9, %struct.catc** %3, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ECONNRESET, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.urb*, %struct.urb** %2, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* @jiffies, align 4
  %22 = load %struct.catc*, %struct.catc** %3, align 8
  %23 = getelementptr inbounds %struct.catc, %struct.catc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.catc*, %struct.catc** %3, align 8
  %27 = getelementptr inbounds %struct.catc, %struct.catc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @TX_RUNNING, align 4
  %34 = load %struct.catc*, %struct.catc** %3, align 8
  %35 = getelementptr inbounds %struct.catc, %struct.catc* %34, i32 0, i32 2
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = load %struct.catc*, %struct.catc** %3, align 8
  %38 = getelementptr inbounds %struct.catc, %struct.catc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @netif_wake_queue(%struct.TYPE_4__* %39)
  br label %87

41:                                               ; preds = %1
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.urb*, %struct.urb** %2, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  br label %87

50:                                               ; preds = %41
  %51 = load %struct.catc*, %struct.catc** %3, align 8
  %52 = getelementptr inbounds %struct.catc, %struct.catc* %51, i32 0, i32 0
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.catc*, %struct.catc** %3, align 8
  %56 = getelementptr inbounds %struct.catc, %struct.catc* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %50
  %60 = load %struct.catc*, %struct.catc** %3, align 8
  %61 = call i32 @catc_tx_run(%struct.catc* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i32, i32* @TX_RUNNING, align 4
  %69 = load %struct.catc*, %struct.catc** %3, align 8
  %70 = getelementptr inbounds %struct.catc, %struct.catc* %69, i32 0, i32 2
  %71 = call i32 @clear_bit(i32 %68, i32* %70)
  br label %72

72:                                               ; preds = %67, %59
  br label %78

73:                                               ; preds = %50
  %74 = load i32, i32* @TX_RUNNING, align 4
  %75 = load %struct.catc*, %struct.catc** %3, align 8
  %76 = getelementptr inbounds %struct.catc, %struct.catc* %75, i32 0, i32 2
  %77 = call i32 @clear_bit(i32 %74, i32* %76)
  br label %78

78:                                               ; preds = %73, %72
  %79 = load %struct.catc*, %struct.catc** %3, align 8
  %80 = getelementptr inbounds %struct.catc, %struct.catc* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call i32 @netif_wake_queue(%struct.TYPE_4__* %81)
  %83 = load %struct.catc*, %struct.catc** %3, align 8
  %84 = getelementptr inbounds %struct.catc, %struct.catc* %83, i32 0, i32 0
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  br label %87

87:                                               ; preds = %78, %44, %17
  ret void
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @catc_tx_run(%struct.catc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
