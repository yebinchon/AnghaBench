; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.h___x86_pmu_enable_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.h___x86_pmu_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_perf_event = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw_perf_event*, i32)* @__x86_pmu_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__x86_pmu_enable_event(%struct.hw_perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  store %struct.hw_perf_event* %0, %struct.hw_perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @cpu_hw_events, align 4
  %8 = call i32 @__get_cpu_var(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @wrmsrl(i64 %21, i32 %25)
  br label %27

27:                                               ; preds = %17, %2
  %28 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %29 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %32 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @wrmsrl(i64 %30, i32 %38)
  ret void
}

declare dso_local i32 @__get_cpu_var(i32) #1

declare dso_local i32 @wrmsrl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
