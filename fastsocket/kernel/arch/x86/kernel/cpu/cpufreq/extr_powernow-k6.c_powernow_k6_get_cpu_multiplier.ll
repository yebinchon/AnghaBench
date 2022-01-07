; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k6.c_powernow_k6_get_cpu_multiplier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k6.c_powernow_k6_get_cpu_multiplier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@POWERNOW_IOPORT = common dso_local global i64 0, align 8
@MSR_K6_EPMR = common dso_local global i32 0, align 4
@clock_ratio = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @powernow_k6_get_cpu_multiplier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernow_k6_get_cpu_multiplier() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = load i64, i64* @POWERNOW_IOPORT, align 8
  %4 = add nsw i64 %3, 1
  store i64 %4, i64* %2, align 8
  %5 = load i32, i32* @MSR_K6_EPMR, align 4
  %6 = load i64, i64* %2, align 8
  %7 = call i32 @wrmsr(i32 %5, i64 %6, i32 0)
  %8 = load i64, i64* @POWERNOW_IOPORT, align 8
  %9 = add nsw i64 %8, 8
  %10 = call i32 @inl(i64 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i64, i64* @POWERNOW_IOPORT, align 8
  %12 = add nsw i64 %11, 0
  store i64 %12, i64* %2, align 8
  %13 = load i32, i32* @MSR_K6_EPMR, align 4
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @wrmsr(i32 %13, i64 %14, i32 0)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock_ratio, align 8
  %17 = load i32, i32* %1, align 4
  %18 = ashr i32 %17, 5
  %19 = and i32 %18, 7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  ret i32 %23
}

declare dso_local i32 @wrmsr(i32, i64, i32) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
