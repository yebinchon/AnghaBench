; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_us2e_cpufreq.c_us2e_set_cpu_divider_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_us2e_cpufreq.c_us2e_set_cpu_divider_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cpufreq_freqs = type { i64, i64, i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@HBIRD_ESTAR_MODE_ADDR = common dso_local global i32 0, align 4
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @us2e_set_cpu_divider_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @us2e_set_cpu_divider_index(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cpufreq_freqs, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @cpu_online(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @cpumask_of_cpu(i32 %22)
  %24 = call i32 @set_cpus_allowed(%struct.TYPE_3__* %21, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @sparc64_get_clock_tick(i32 %25)
  %27 = sdiv i32 %26, 1000
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  store i64 %28, i64* %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @index_to_estar_mode(i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @index_to_divisor(i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %6, align 8
  %35 = udiv i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load i32, i32* @HBIRD_ESTAR_MODE_ADDR, align 4
  %37 = call i64 @read_hbreg(i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @estar_to_divisor(i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %9, align 8
  %42 = udiv i64 %40, %41
  %43 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %12, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %12, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %12, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %49 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %12, i32 %48)
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %17
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %7, align 8
  %57 = mul i64 %56, 1000
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @us2e_transition(i64 %54, i64 %55, i64 %57, i64 %58, i64 %59)
  br label %61

61:                                               ; preds = %53, %17
  %62 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %63 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %12, i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @set_cpus_allowed(%struct.TYPE_3__* %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %16
  ret void
}

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @set_cpus_allowed(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @cpumask_of_cpu(i32) #1

declare dso_local i32 @sparc64_get_clock_tick(i32) #1

declare dso_local i64 @index_to_estar_mode(i32) #1

declare dso_local i64 @index_to_divisor(i32) #1

declare dso_local i64 @read_hbreg(i32) #1

declare dso_local i64 @estar_to_divisor(i64) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @us2e_transition(i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
