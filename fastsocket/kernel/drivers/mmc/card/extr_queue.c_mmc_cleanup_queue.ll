; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_queue.c_mmc_cleanup_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_queue.c_mmc_cleanup_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { i32*, i32*, i32*, i32*, i32, %struct.request_queue* }
%struct.request_queue = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_cleanup_queue(%struct.mmc_queue* %0) #0 {
  %2 = alloca %struct.mmc_queue*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i64, align 8
  store %struct.mmc_queue* %0, %struct.mmc_queue** %2, align 8
  %5 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %6 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %5, i32 0, i32 5
  %7 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  store %struct.request_queue* %7, %struct.request_queue** %3, align 8
  %8 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %9 = call i32 @mmc_queue_resume(%struct.mmc_queue* %8)
  %10 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %11 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @kthread_stop(i32 %12)
  %14 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %15 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32 %16, i64 %17)
  %19 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %22 = call i32 @blk_start_queue(%struct.request_queue* %21)
  %23 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32 %25, i64 %26)
  %28 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %29 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %34 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @kfree(i32* %35)
  br label %37

37:                                               ; preds = %32, %1
  %38 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %39 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %41 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %45 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %47 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %52 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @kfree(i32* %53)
  br label %55

55:                                               ; preds = %50, %37
  %56 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %57 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %59 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  ret void
}

declare dso_local i32 @mmc_queue_resume(%struct.mmc_queue*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @blk_start_queue(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
