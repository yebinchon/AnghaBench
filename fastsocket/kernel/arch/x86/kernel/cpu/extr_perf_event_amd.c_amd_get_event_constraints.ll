; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_amd.c_amd_get_event_constraints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_amd.c_amd_get_event_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.event_constraint = type { i32 }
%struct.cpu_hw_events = type { %struct.amd_nb* }
%struct.amd_nb = type { %struct.event_constraint*, %struct.perf_event** }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }

@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@unconstrained = common dso_local global %struct.event_constraint zeroinitializer, align 4
@emptyconstraint = common dso_local global %struct.event_constraint zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.cpu_hw_events*, %struct.perf_event*)* @amd_get_event_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @amd_get_event_constraints(%struct.cpu_hw_events* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.event_constraint*, align 8
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca %struct.amd_nb*, align 8
  %8 = alloca %struct.perf_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  store %struct.hw_perf_event* %14, %struct.hw_perf_event** %6, align 8
  %15 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %16 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %15, i32 0, i32 0
  %17 = load %struct.amd_nb*, %struct.amd_nb** %16, align 8
  store %struct.amd_nb* %17, %struct.amd_nb** %7, align 8
  store %struct.perf_event* null, %struct.perf_event** %8, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  store i32 %18, i32* %9, align 4
  store i32 -1, i32* %12, align 4
  %19 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %20 = call i64 @amd_has_nb(%struct.cpu_hw_events* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %24 = call i64 @amd_is_nb_event(%struct.hw_perf_event* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %2
  store %struct.event_constraint* @unconstrained, %struct.event_constraint** %3, align 8
  br label %114

27:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %58, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.amd_nb*, %struct.amd_nb** %7, align 8
  %37 = getelementptr inbounds %struct.amd_nb, %struct.amd_nb* %36, i32 0, i32 1
  %38 = load %struct.perf_event**, %struct.perf_event*** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %38, i64 %40
  %42 = load %struct.perf_event*, %struct.perf_event** %41, align 8
  %43 = icmp ne %struct.perf_event* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %44, %35, %32
  %47 = load %struct.amd_nb*, %struct.amd_nb** %7, align 8
  %48 = getelementptr inbounds %struct.amd_nb, %struct.amd_nb* %47, i32 0, i32 1
  %49 = load %struct.perf_event**, %struct.perf_event*** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %49, i64 %51
  %53 = load %struct.perf_event*, %struct.perf_event** %52, align 8
  %54 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %55 = icmp eq %struct.perf_event* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %103

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %28

61:                                               ; preds = %28
  %62 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %63 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %68 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  br label %77

70:                                               ; preds = %61
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %10, align 4
  br label %76

75:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %73
  br label %77

77:                                               ; preds = %76, %66
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %98, %77
  %80 = load %struct.amd_nb*, %struct.amd_nb** %7, align 8
  %81 = getelementptr inbounds %struct.amd_nb, %struct.amd_nb* %80, i32 0, i32 1
  %82 = load %struct.perf_event**, %struct.perf_event*** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %82, i64 %84
  %86 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %87 = call %struct.perf_event* @cmpxchg(%struct.perf_event** %85, i32* null, %struct.perf_event* %86)
  store %struct.perf_event* %87, %struct.perf_event** %8, align 8
  %88 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %89 = icmp ne %struct.perf_event* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  br label %102

91:                                               ; preds = %79
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %96, %91
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %79, label %102

102:                                              ; preds = %98, %90
  br label %103

103:                                              ; preds = %102, %56
  %104 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %105 = icmp ne %struct.perf_event* %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load %struct.amd_nb*, %struct.amd_nb** %7, align 8
  %108 = getelementptr inbounds %struct.amd_nb, %struct.amd_nb* %107, i32 0, i32 0
  %109 = load %struct.event_constraint*, %struct.event_constraint** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %109, i64 %111
  store %struct.event_constraint* %112, %struct.event_constraint** %3, align 8
  br label %114

113:                                              ; preds = %103
  store %struct.event_constraint* @emptyconstraint, %struct.event_constraint** %3, align 8
  br label %114

114:                                              ; preds = %113, %106, %26
  %115 = load %struct.event_constraint*, %struct.event_constraint** %3, align 8
  ret %struct.event_constraint* %115
}

declare dso_local i64 @amd_has_nb(%struct.cpu_hw_events*) #1

declare dso_local i64 @amd_is_nb_event(%struct.hw_perf_event*) #1

declare dso_local %struct.perf_event* @cmpxchg(%struct.perf_event**, i32*, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
