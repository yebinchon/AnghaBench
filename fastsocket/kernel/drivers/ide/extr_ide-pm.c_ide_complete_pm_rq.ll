; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-pm.c_ide_complete_pm_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-pm.c_ide_complete_pm_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32, %struct.request_queue* }
%struct.TYPE_5__ = type { i32* }
%struct.request_queue = type { i32 }
%struct.request = type { i64, %struct.request_pm_state* }
%struct.request_pm_state = type { i64 }

@IDE_PM_COMPLETED = common dso_local global i64 0, align 8
@REQ_TYPE_PM_SUSPEND = common dso_local global i64 0, align 8
@IDE_DFLAG_BLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_complete_pm_rq(%struct.TYPE_6__* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request_pm_state*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  store %struct.request_queue* %10, %struct.request_queue** %5, align 8
  %11 = load %struct.request*, %struct.request** %4, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 1
  %13 = load %struct.request_pm_state*, %struct.request_pm_state** %12, align 8
  store %struct.request_pm_state* %13, %struct.request_pm_state** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = call i32 @ide_complete_power_step(%struct.TYPE_6__* %14, %struct.request* %15)
  %17 = load %struct.request_pm_state*, %struct.request_pm_state** %6, align 8
  %18 = getelementptr inbounds %struct.request_pm_state, %struct.request_pm_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IDE_PM_COMPLETED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %59

23:                                               ; preds = %2
  %24 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %25 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32 %26, i64 %27)
  %29 = load %struct.request*, %struct.request** %4, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @REQ_TYPE_PM_SUSPEND, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %36 = call i32 @blk_stop_queue(%struct.request_queue* %35)
  br label %44

37:                                               ; preds = %23
  %38 = load i32, i32* @IDE_DFLAG_BLOCKED, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %37, %34
  %45 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %46 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32 %47, i64 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.request*, %struct.request** %4, align 8
  %55 = call i64 @blk_end_request(%struct.request* %54, i32 0, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = call i32 (...) @BUG()
  br label %59

59:                                               ; preds = %22, %57, %44
  ret void
}

declare dso_local i32 @ide_complete_power_step(%struct.TYPE_6__*, %struct.request*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @blk_stop_queue(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i64 @blk_end_request(%struct.request*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
