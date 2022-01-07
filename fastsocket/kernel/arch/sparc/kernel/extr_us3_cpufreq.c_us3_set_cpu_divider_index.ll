; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_us3_cpufreq.c_us3_set_cpu_divider_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_us3_cpufreq.c_us3_set_cpu_divider_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cpufreq_freqs = type { i64, i32, i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@SAFARI_CFG_DIV_1 = common dso_local global i64 0, align 8
@SAFARI_CFG_DIV_2 = common dso_local global i64 0, align 8
@SAFARI_CFG_DIV_32 = common dso_local global i64 0, align 8
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@SAFARI_CFG_DIV_MASK = common dso_local global i64 0, align 8
@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @us3_set_cpu_divider_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @us3_set_cpu_divider_index(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpufreq_freqs, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @cpu_online(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @cpumask_of_cpu(i32 %19)
  %21 = call i32 @set_cpus_allowed(%struct.TYPE_3__* %18, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @sparc64_get_clock_tick(i32 %22)
  %24 = sdiv i32 %23, 1000
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %39 [
    i32 0, label %27
    i32 1, label %31
    i32 2, label %35
  ]

27:                                               ; preds = %14
  %28 = load i64, i64* @SAFARI_CFG_DIV_1, align 8
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = udiv i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %41

31:                                               ; preds = %14
  %32 = load i64, i64* @SAFARI_CFG_DIV_2, align 8
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = udiv i64 %33, 2
  store i64 %34, i64* %6, align 8
  br label %41

35:                                               ; preds = %14
  %36 = load i64, i64* @SAFARI_CFG_DIV_32, align 8
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = udiv i64 %37, 32
  store i64 %38, i64* %6, align 8
  br label %41

39:                                               ; preds = %14
  %40 = call i32 (...) @BUG()
  br label %41

41:                                               ; preds = %39, %35, %31, %27
  %42 = call i64 (...) @read_safari_cfg()
  store i64 %42, i64* %7, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @get_current_freq(i32 %43, i64 %44)
  %46 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* %3, align 4
  %50 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %52 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %9, i32 %51)
  %53 = load i64, i64* @SAFARI_CFG_DIV_MASK, align 8
  %54 = xor i64 %53, -1
  %55 = load i64, i64* %7, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @write_safari_cfg(i64 %60)
  %62 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %63 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %9, i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @set_cpus_allowed(%struct.TYPE_3__* %64, i32 %65)
  br label %67

67:                                               ; preds = %41, %13
  ret void
}

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @set_cpus_allowed(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @cpumask_of_cpu(i32) #1

declare dso_local i32 @sparc64_get_clock_tick(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @read_safari_cfg(...) #1

declare dso_local i32 @get_current_freq(i32, i64) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @write_safari_cfg(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
