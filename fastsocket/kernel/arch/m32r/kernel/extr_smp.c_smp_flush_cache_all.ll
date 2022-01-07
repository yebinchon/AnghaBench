; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_smp.c_smp_flush_cache_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_smp.c_smp_flush_cache_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_online_map = common dso_local global i32 0, align 4
@flushcache_lock = common dso_local global i32 0, align 4
@flushcache_cpumask = common dso_local global i64 0, align 8
@INVALIDATE_CACHE_IPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_flush_cache_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64*, align 8
  %3 = call i32 (...) @preempt_disable()
  %4 = load i32, i32* @cpu_online_map, align 4
  store i32 %4, i32* %1, align 4
  %5 = call i32 (...) @smp_processor_id()
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @cpu_clear(i32 %5, i32 %6)
  %8 = call i32 @spin_lock(i32* @flushcache_lock)
  %9 = load i32, i32* %1, align 4
  %10 = call i64* @cpus_addr(i32 %9)
  store i64* %10, i64** %2, align 8
  %11 = load i64*, i64** %2, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @atomic_set_mask(i64 %12, i32* bitcast (i64* @flushcache_cpumask to i32*))
  %14 = load i32, i32* @INVALIDATE_CACHE_IPI, align 4
  %15 = call i32 @send_IPI_mask(i32* %1, i32 %14, i32 0)
  %16 = call i32 (...) @_flush_cache_copyback_all()
  br label %17

17:                                               ; preds = %20, %0
  %18 = load i64, i64* @flushcache_cpumask, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (...) @mb()
  br label %17

22:                                               ; preds = %17
  %23 = call i32 @spin_unlock(i32* @flushcache_lock)
  %24 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @cpu_clear(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64* @cpus_addr(i32) #1

declare dso_local i32 @atomic_set_mask(i64, i32*) #1

declare dso_local i32 @send_IPI_mask(i32*, i32, i32) #1

declare dso_local i32 @_flush_cache_copyback_all(...) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
