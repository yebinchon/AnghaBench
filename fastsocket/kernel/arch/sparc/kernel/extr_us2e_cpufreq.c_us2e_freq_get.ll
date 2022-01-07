; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_us2e_cpufreq.c_us2e_freq_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_us2e_cpufreq.c_us2e_freq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@HBIRD_ESTAR_MODE_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @us2e_freq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us2e_freq_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @cpu_online(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @cpumask_of_cpu(i32 %16)
  %18 = call i32 @set_cpus_allowed(%struct.TYPE_3__* %15, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @sparc64_get_clock_tick(i32 %19)
  %21 = sdiv i32 %20, 1000
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  %23 = load i32, i32* @HBIRD_ESTAR_MODE_ADDR, align 4
  %24 = call i64 @read_hbreg(i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @set_cpus_allowed(%struct.TYPE_3__* %25, i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @estar_to_divisor(i64 %29)
  %31 = udiv i64 %28, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %11, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @set_cpus_allowed(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @cpumask_of_cpu(i32) #1

declare dso_local i32 @sparc64_get_clock_tick(i32) #1

declare dso_local i64 @read_hbreg(i32) #1

declare dso_local i64 @estar_to_divisor(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
