; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_intel_pstate_get_cpu_pstates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_intel_pstate_get_cpu_pstates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Intel 2nd generation core\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpudata*)* @intel_pstate_get_cpu_pstates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pstate_get_cpu_pstates(%struct.cpudata* %0) #0 {
  %2 = alloca %struct.cpudata*, align 8
  store %struct.cpudata* %0, %struct.cpudata** %2, align 8
  %3 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %4 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @sprintf(i32 %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @intel_pstate_min_pstate()
  %8 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %9 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = call i32 (...) @intel_pstate_max_pstate()
  %12 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %13 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = call i32 (...) @intel_pstate_turbo_pstate()
  %16 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %17 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %20 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %21 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @intel_pstate_set_pstate(%struct.cpudata* %19, i32 %23)
  ret void
}

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @intel_pstate_min_pstate(...) #1

declare dso_local i32 @intel_pstate_max_pstate(...) #1

declare dso_local i32 @intel_pstate_turbo_pstate(...) #1

declare dso_local i32 @intel_pstate_set_pstate(%struct.cpudata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
