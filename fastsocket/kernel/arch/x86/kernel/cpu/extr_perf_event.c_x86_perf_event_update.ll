; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_x86_perf_event_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_x86_perf_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i32, i32 }

@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@X86_PMC_IDX_FIXED_BTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_perf_event_update(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %4, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  %13 = sub nsw i32 64, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %15 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @X86_PMC_IDX_FIXED_BTS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %38, %21
  %23 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %24 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %23, i32 0, i32 2
  %25 = call i32 @local64_read(i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @rdmsrl(i32 %28, i32 %29)
  %31 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %32 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %31, i32 0, i32 2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @local64_cmpxchg(i32* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %22

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 %43, %44
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %9, align 4
  %49 = ashr i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %52 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %51, i32 0, i32 0
  %53 = call i32 @local64_add(i32 %50, i32* %52)
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %56 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %55, i32 0, i32 1
  %57 = call i32 @local64_sub(i32 %54, i32* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %39, %20
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @local64_read(i32*) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @local64_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @local64_add(i32, i32*) #1

declare dso_local i32 @local64_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
