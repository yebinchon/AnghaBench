; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_intel_pstate_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_intel_pstate_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i64, %struct.sample* }
%struct.sample = type { i32 }

@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @intel_pstate_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pstate_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sample*, align 8
  %5 = alloca %struct.cpudata*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %6, i64 %8
  %10 = load %struct.cpudata*, %struct.cpudata** %9, align 8
  store %struct.cpudata* %10, %struct.cpudata** %5, align 8
  %11 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %12 = icmp ne %struct.cpudata* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %16 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %15, i32 0, i32 1
  %17 = load %struct.sample*, %struct.sample** %16, align 8
  %18 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %19 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.sample, %struct.sample* %17, i64 %20
  store %struct.sample* %21, %struct.sample** %4, align 8
  %22 = load %struct.sample*, %struct.sample** %4, align 8
  %23 = getelementptr inbounds %struct.sample, %struct.sample* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %14, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
