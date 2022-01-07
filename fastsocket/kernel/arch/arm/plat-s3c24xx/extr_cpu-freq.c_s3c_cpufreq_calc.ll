; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_cpu-freq.c_s3c_cpufreq_calc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_cpu-freq.c_s3c_cpufreq_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_cpufreq_config = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_cpufreq_config*)* @s3c_cpufreq_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_cpufreq_calc(%struct.s3c_cpufreq_config* %0) #0 {
  %2 = alloca %struct.s3c_cpufreq_config*, align 8
  %3 = alloca i64, align 8
  store %struct.s3c_cpufreq_config* %0, %struct.s3c_cpufreq_config** %2, align 8
  %4 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %5 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %10 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 %8, i64* %11, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %14 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = udiv i64 %12, %16
  %18 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %19 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %23 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = udiv i64 %21, %25
  %27 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %28 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i64 %26, i64* %29, align 8
  %30 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %31 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = udiv i64 %33, 10
  %35 = udiv i64 1000000000, %34
  %36 = trunc i64 %35 to i32
  %37 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %38 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
