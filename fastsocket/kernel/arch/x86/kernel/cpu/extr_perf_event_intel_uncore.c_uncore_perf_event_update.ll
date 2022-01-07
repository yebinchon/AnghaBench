; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_perf_event_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_perf_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32 }
%struct.perf_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@UNCORE_PMC_IDX_FIXED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*)* @uncore_perf_event_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncore_perf_event_update(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UNCORE_PMC_IDX_FIXED, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %17 = call i32 @uncore_fixed_ctr_bits(%struct.intel_uncore_box* %16)
  %18 = sub nsw i32 64, %17
  store i32 %18, i32* %8, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %21 = call i32 @uncore_perf_ctr_bits(%struct.intel_uncore_box* %20)
  %22 = sub nsw i32 64, %21
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %39, %23
  %25 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @local64_read(i32* %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %30 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %31 = call i32 @uncore_read_counter(%struct.intel_uncore_box* %29, %struct.perf_event* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @local64_xchg(i32* %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %24

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %44, %45
  %47 = sub nsw i32 %43, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %53 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %52, i32 0, i32 0
  %54 = call i32 @local64_add(i32 %51, i32* %53)
  ret void
}

declare dso_local i32 @uncore_fixed_ctr_bits(%struct.intel_uncore_box*) #1

declare dso_local i32 @uncore_perf_ctr_bits(%struct.intel_uncore_box*) #1

declare dso_local i32 @local64_read(i32*) #1

declare dso_local i32 @uncore_read_counter(%struct.intel_uncore_box*, %struct.perf_event*) #1

declare dso_local i32 @local64_xchg(i32*, i32) #1

declare dso_local i32 @local64_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
