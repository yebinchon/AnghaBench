; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_cpu-sa1100.c_sa1100_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_cpu-sa1100.c_sa1100_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32 }
%struct.cpufreq_freqs = type { i32, i32, i64 }

@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@PPCR = common dso_local global i32 0, align 4
@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @sa1100_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpufreq_freqs, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 @sa11x0_getspeed(i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %44 [
    i32 128, label %12
    i32 129, label %25
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @sa11x0_freq_to_ppcr(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @sa11x0_ppcr_to_freq(i32 %15)
  %17 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %18 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* %8, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %21, %12
  br label %44

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @sa11x0_freq_to_ppcr(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @sa11x0_ppcr_to_freq(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = sub i32 %33, 1
  %35 = call i32 @sa11x0_ppcr_to_freq(i32 %34)
  %36 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %37 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp uge i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %32, %25
  br label %44

44:                                               ; preds = %3, %43, %24
  %45 = load i32, i32* %7, align 4
  %46 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @sa11x0_ppcr_to_freq(i32 %47)
  %49 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %52 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %9, i32 %51)
  %53 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %44
  %58 = load i32, i32* %7, align 4
  %59 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sa1100_update_dram_timings(i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %57, %44
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* @PPCR, align 4
  %64 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @sa1100_update_dram_timings(i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %68, %62
  %74 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %75 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %9, i32 %74)
  ret i32 0
}

declare dso_local i32 @sa11x0_getspeed(i32) #1

declare dso_local i32 @sa11x0_freq_to_ppcr(i32) #1

declare dso_local i32 @sa11x0_ppcr_to_freq(i32) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @sa1100_update_dram_timings(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
