; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_cpufreq_64.c_g5_pfunc_query_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_cpufreq_64.c_g5_pfunc_query_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmf_args = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@pfunc_cpu_getfreq = common dso_local global i32 0, align 4
@CPUFREQ_HIGH = common dso_local global i32 0, align 4
@CPUFREQ_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @g5_pfunc_query_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g5_pfunc_query_freq() #0 {
  %1 = alloca %struct.pmf_args, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds %struct.pmf_args, %struct.pmf_args* %1, i32 0, i32 0
  store i32 1, i32* %3, align 8
  %4 = getelementptr inbounds %struct.pmf_args, %struct.pmf_args* %1, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i64* %2, i64** %7, align 8
  %8 = load i32, i32* @pfunc_cpu_getfreq, align 4
  %9 = call i32 @pmf_call_one(i32 %8, %struct.pmf_args* %1)
  %10 = load i64, i64* %2, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* @CPUFREQ_HIGH, align 4
  br label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @CPUFREQ_LOW, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  ret i32 %17
}

declare dso_local i32 @pmf_call_one(i32, %struct.pmf_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
