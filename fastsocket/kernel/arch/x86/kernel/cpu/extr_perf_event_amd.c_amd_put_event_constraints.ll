; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_amd.c_amd_put_event_constraints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_amd.c_amd_put_event_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpu_hw_events = type { %struct.amd_nb* }
%struct.amd_nb = type { %struct.perf_event** }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }

@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*, %struct.perf_event*)* @amd_put_event_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_put_event_constraints(%struct.cpu_hw_events* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.amd_nb*, align 8
  %7 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %5, align 8
  %10 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %11 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %10, i32 0, i32 0
  %12 = load %struct.amd_nb*, %struct.amd_nb** %11, align 8
  store %struct.amd_nb* %12, %struct.amd_nb** %6, align 8
  %13 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %14 = call i64 @amd_has_nb(%struct.cpu_hw_events* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %18 = call i64 @amd_is_nb_event(%struct.hw_perf_event* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %2
  br label %49

21:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %46, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.amd_nb*, %struct.amd_nb** %6, align 8
  %28 = getelementptr inbounds %struct.amd_nb, %struct.amd_nb* %27, i32 0, i32 0
  %29 = load %struct.perf_event**, %struct.perf_event*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %29, i64 %31
  %33 = load %struct.perf_event*, %struct.perf_event** %32, align 8
  %34 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %35 = icmp eq %struct.perf_event* %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.amd_nb*, %struct.amd_nb** %6, align 8
  %38 = getelementptr inbounds %struct.amd_nb, %struct.amd_nb* %37, i32 0, i32 0
  %39 = load %struct.perf_event**, %struct.perf_event*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %39, i64 %41
  %43 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %44 = call i32 @cmpxchg(%struct.perf_event** %42, %struct.perf_event* %43, i32* null)
  br label %49

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %22

49:                                               ; preds = %20, %36, %22
  ret void
}

declare dso_local i64 @amd_has_nb(%struct.cpu_hw_events*) #1

declare dso_local i64 @amd_is_nb_event(%struct.hw_perf_event*) #1

declare dso_local i32 @cmpxchg(%struct.perf_event**, %struct.perf_event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
