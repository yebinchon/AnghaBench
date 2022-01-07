; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_setup.c_pseries_dedicated_idle_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_setup.c_pseries_dedicated_idle_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@SPRN_PURR = common dso_local global i32 0, align 4
@smt_snooze_delay = common dso_local global i32 0, align 4
@tb_ticks_per_usec = common dso_local global i64 0, align 8
@TIF_POLLING_NRFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pseries_dedicated_idle_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pseries_dedicated_idle_sleep() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %1, align 4
  %6 = call %struct.TYPE_2__* (...) @get_lppaca()
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = call %struct.TYPE_2__* (...) @get_lppaca()
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @SPRN_PURR, align 4
  %11 = call i64 @mfspr(i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i32, i32* @smt_snooze_delay, align 4
  %13 = call i64 @__get_cpu_var(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %0
  %16 = call i64 (...) @get_tb()
  %17 = load i32, i32* @smt_snooze_delay, align 4
  %18 = call i64 @__get_cpu_var(i32 %17)
  %19 = load i64, i64* @tb_ticks_per_usec, align 8
  %20 = mul i64 %18, %19
  %21 = add i64 %16, %20
  store i64 %21, i64* %2, align 8
  %22 = call i32 (...) @local_irq_enable()
  %23 = load i32, i32* @TIF_POLLING_NRFLAG, align 4
  %24 = call i32 @set_thread_flag(i32 %23)
  br label %25

25:                                               ; preds = %37, %15
  %26 = call i64 (...) @get_tb()
  %27 = load i64, i64* %2, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = call i64 (...) @need_resched()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %1, align 4
  %34 = call i64 @cpu_is_offline(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %29
  br label %57

37:                                               ; preds = %32
  %38 = call i32 (...) @ppc64_runlatch_off()
  %39 = call i32 (...) @HMT_low()
  %40 = call i32 (...) @HMT_very_low()
  br label %25

41:                                               ; preds = %25
  %42 = call i32 (...) @HMT_medium()
  %43 = load i32, i32* @TIF_POLLING_NRFLAG, align 4
  %44 = call i32 @clear_thread_flag(i32 %43)
  %45 = call i32 (...) @smp_mb()
  %46 = call i32 (...) @local_irq_disable()
  %47 = call i64 (...) @need_resched()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %1, align 4
  %51 = call i64 @cpu_is_offline(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %41
  br label %57

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %0
  %56 = call i32 (...) @cede_processor()
  br label %57

57:                                               ; preds = %55, %53, %36
  %58 = call i32 (...) @HMT_medium()
  %59 = load i32, i32* @SPRN_PURR, align 4
  %60 = call i64 @mfspr(i32 %59)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %3, align 8
  %63 = sub i64 %61, %62
  %64 = call %struct.TYPE_2__* (...) @get_lppaca()
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = call %struct.TYPE_2__* (...) @get_lppaca()
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = call %struct.TYPE_2__* (...) @get_lppaca()
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.TYPE_2__* @get_lppaca(...) #1

declare dso_local i64 @mfspr(i32) #1

declare dso_local i64 @__get_cpu_var(i32) #1

declare dso_local i64 @get_tb(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i64 @cpu_is_offline(i32) #1

declare dso_local i32 @ppc64_runlatch_off(...) #1

declare dso_local i32 @HMT_low(...) #1

declare dso_local i32 @HMT_very_low(...) #1

declare dso_local i32 @HMT_medium(...) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @cede_processor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
