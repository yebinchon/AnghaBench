; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_sge_tx_reclaim_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_sge_tx_reclaim_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i32, %struct.TYPE_2__*, %struct.cmdQ* }
%struct.TYPE_2__ = type { i64 }
%struct.cmdQ = type { i32, i64 }

@SGE_CMDQ_N = common dso_local global i32 0, align 4
@F_CMDQ0_ENABLE = common dso_local global i32 0, align 4
@A_SG_DOORBELL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@TX_RECLAIM_PERIOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sge_tx_reclaim_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_tx_reclaim_cb(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge*, align 8
  %5 = alloca %struct.cmdQ*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.sge*
  store %struct.sge* %7, %struct.sge** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %49, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SGE_CMDQ_N, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %8
  %13 = load %struct.sge*, %struct.sge** %4, align 8
  %14 = getelementptr inbounds %struct.sge, %struct.sge* %13, i32 0, i32 2
  %15 = load %struct.cmdQ*, %struct.cmdQ** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %15, i64 %17
  store %struct.cmdQ* %18, %struct.cmdQ** %5, align 8
  %19 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %20 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %19, i32 0, i32 0
  %21 = call i32 @spin_trylock(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %49

24:                                               ; preds = %12
  %25 = load %struct.sge*, %struct.sge** %4, align 8
  %26 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %27 = call i32 @reclaim_completed_tx(%struct.sge* %25, %struct.cmdQ* %26)
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %32 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32, i32* @F_CMDQ0_ENABLE, align 4
  %37 = load %struct.sge*, %struct.sge** %4, align 8
  %38 = getelementptr inbounds %struct.sge, %struct.sge* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @A_SG_DOORBELL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %36, i64 %43)
  br label %45

45:                                               ; preds = %35, %30, %24
  %46 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %47 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %45, %23
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %8

52:                                               ; preds = %8
  %53 = load %struct.sge*, %struct.sge** %4, align 8
  %54 = getelementptr inbounds %struct.sge, %struct.sge* %53, i32 0, i32 0
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i64, i64* @TX_RECLAIM_PERIOD, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @mod_timer(i32* %54, i64 %57)
  ret void
}

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @reclaim_completed_tx(%struct.sge*, %struct.cmdQ*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
