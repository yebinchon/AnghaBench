; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_lbr.c_intel_pmu_lbr_read_32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_lbr.c_intel_pmu_lbr_read_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.cpu_hw_events = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }

@x86_pmu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*)* @intel_pmu_lbr_read_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_lbr_read_32(%struct.cpu_hw_events* %0) #0 {
  %2 = alloca %struct.cpu_hw_events*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %union.anon, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 8
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  %11 = call i32 (...) @intel_pmu_lbr_tos()
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %70, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 8
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %3, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 1), align 8
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %23, %24
  %26 = bitcast %union.anon* %7 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rdmsrl(i64 %25, i32 %27)
  %29 = bitcast %union.anon* %7 to %struct.anon*
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %33 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  store i32 %31, i32* %38, align 4
  %39 = bitcast %union.anon* %7 to %struct.anon*
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %43 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i32 %41, i32* %48, align 8
  %49 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %50 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %57 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %64 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %16
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %12

73:                                               ; preds = %12
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %76 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  ret void
}

declare dso_local i32 @intel_pmu_lbr_tos(...) #1

declare dso_local i32 @rdmsrl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
