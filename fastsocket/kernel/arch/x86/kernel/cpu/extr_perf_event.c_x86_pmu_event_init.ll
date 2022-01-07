; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_x86_pmu_event_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_x86_pmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.perf_event = type { {}*, %struct.pmu*, %struct.perf_event*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@pmu = common dso_local global %struct.pmu zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @x86_pmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86_pmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.pmu*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %11 [
    i32 128, label %10
    i32 130, label %10
    i32 129, label %10
  ]

10:                                               ; preds = %1, %1, %1
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %59

14:                                               ; preds = %10
  %15 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %16 = call i32 @__x86_pmu_event_init(%struct.perf_event* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %14
  %20 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 1
  %22 = load %struct.pmu*, %struct.pmu** %21, align 8
  store %struct.pmu* %22, %struct.pmu** %4, align 8
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 1
  store %struct.pmu* @pmu, %struct.pmu** %24, align 8
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 2
  %27 = load %struct.perf_event*, %struct.perf_event** %26, align 8
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = icmp ne %struct.perf_event* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %32 = call i32 @validate_group(%struct.perf_event* %31)
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %19
  %34 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %35 = call i32 @validate_event(%struct.perf_event* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.pmu*, %struct.pmu** %4, align 8
  %38 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %39 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %38, i32 0, i32 1
  store %struct.pmu* %37, %struct.pmu** %39, align 8
  br label %40

40:                                               ; preds = %36, %14
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %45 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.perf_event*)**
  %47 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %46, align 8
  %48 = icmp ne i32 (%struct.perf_event*)* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.perf_event*)**
  %53 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %52, align 8
  %54 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %55 = call i32 %53(%struct.perf_event* %54)
  br label %56

56:                                               ; preds = %49, %43
  br label %57

57:                                               ; preds = %56, %40
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @__x86_pmu_event_init(%struct.perf_event*) #1

declare dso_local i32 @validate_group(%struct.perf_event*) #1

declare dso_local i32 @validate_event(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
