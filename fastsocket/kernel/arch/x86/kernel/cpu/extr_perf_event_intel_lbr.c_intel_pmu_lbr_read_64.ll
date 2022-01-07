; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_lbr.c_intel_pmu_lbr_read_64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_lbr.c_intel_pmu_lbr_read_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cpu_hw_events = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }

@x86_pmu = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@LBR_FORMAT_EIP_FLAGS = common dso_local global i32 0, align 4
@LBR_FROM_FLAG_MISPRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*)* @intel_pmu_lbr_read_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_lbr_read_64(%struct.cpu_hw_events* %0) #0 {
  %2 = alloca %struct.cpu_hw_events*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %2, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @x86_pmu, i32 0, i32 0), align 8
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %3, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @x86_pmu, i32 0, i32 3, i32 0), align 8
  store i32 %15, i32* %4, align 4
  %16 = call i32 (...) @intel_pmu_lbr_tos()
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %96, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @x86_pmu, i32 0, i32 0), align 8
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %99

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %25, %26
  store i64 %27, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @x86_pmu, i32 0, i32 2), align 8
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @rdmsrl(i64 %30, i32 %31)
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @x86_pmu, i32 0, i32 1), align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @rdmsrl(i64 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @LBR_FORMAT_EIP_FLAGS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %21
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @LBR_FROM_FLAG_MISPRED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 %53, 1
  %55 = ashr i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %41, %21
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %59 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %67 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i32 %65, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %75 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 %73, i32* %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %83 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i32 %81, i32* %88, align 4
  %89 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %90 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %56
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %17

99:                                               ; preds = %17
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %102 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
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
