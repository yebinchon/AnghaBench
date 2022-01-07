; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c___mmc_claim_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c___mmc_claim_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i64, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mmc_claim_host(%struct.mmc_host* %0, i32* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @wait, align 4
  %8 = load i64, i64* @current, align 8
  %9 = call i32 @DECLARE_WAITQUEUE(i32 %7, i64 %8)
  %10 = call i32 (...) @might_sleep()
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %11, i32 0, i32 3
  %13 = call i32 @add_wait_queue(i32* %12, i32* @wait)
  %14 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %14, i32 0, i32 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  br label %18

18:                                               ; preds = %2, %43
  %19 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %20 = call i32 @set_current_state(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @atomic_read(i32* %24)
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 0, %26 ]
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %33 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @current, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %31, %27
  br label %53

43:                                               ; preds = %36
  %44 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %45 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %44, i32 0, i32 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = call i32 (...) @schedule()
  %49 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %50 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %49, i32 0, i32 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  br label %18

53:                                               ; preds = %42
  %54 = load i32, i32* @TASK_RUNNING, align 4
  %55 = call i32 @set_current_state(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i64, i64* @current, align 8
  %62 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %63 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %65 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %72

68:                                               ; preds = %53
  %69 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %70 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %69, i32 0, i32 3
  %71 = call i32 @wake_up(i32* %70)
  br label %72

72:                                               ; preds = %68, %58
  %73 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %74 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %73, i32 0, i32 4
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %78 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %77, i32 0, i32 3
  %79 = call i32 @remove_wait_queue(i32* %78, i32* @wait)
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %72
  %83 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %84 = call i32 @mmc_host_enable(%struct.mmc_host* %83)
  br label %85

85:                                               ; preds = %82, %72
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i64) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @mmc_host_enable(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
