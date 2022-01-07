; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/cell/extr_spu_profiler.c_start_spu_profiling_cycles.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/cell/extr_spu_profiler.c_start_spu_profiling_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"timer resolution: %lu\0A\00", align 1
@TICK_NSEC = common dso_local global i32 0, align 4
@profiling_interval = common dso_local global i32 0, align 4
@timer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@profile_spus = common dso_local global i32 0, align 4
@SPUS_PER_NODE = common dso_local global i32 0, align 4
@TRACE_ARRAY_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@samples = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@spu_prof_running = common dso_local global i32 0, align 4
@spu_work = common dso_local global i32 0, align 4
@DEFAULT_TIMER_EXPIRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_spu_profiling_cycles(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @TICK_NSEC, align 4
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @profiling_interval, align 4
  %8 = call i32 @ktime_set(i32 0, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %10 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %11 = call i32 @hrtimer_init(%struct.TYPE_5__* @timer, i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @hrtimer_set_expires(%struct.TYPE_5__* @timer, i32 %12)
  %14 = load i32, i32* @profile_spus, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @timer, i32 0, i32 0), align 4
  %15 = load i32, i32* @SPUS_PER_NODE, align 4
  %16 = load i32, i32* @TRACE_ARRAY_SIZE, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kzalloc(i32 %20, i32 %21)
  store i32 %22, i32* @samples, align 4
  %23 = load i32, i32* @samples, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %34

28:                                               ; preds = %1
  store i32 1, i32* @spu_prof_running, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %31 = call i32 @hrtimer_start(%struct.TYPE_5__* @timer, i32 %29, i32 %30)
  %32 = load i32, i32* @DEFAULT_TIMER_EXPIRE, align 4
  %33 = call i32 @schedule_delayed_work(i32* @spu_work, i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @hrtimer_set_expires(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @hrtimer_start(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
