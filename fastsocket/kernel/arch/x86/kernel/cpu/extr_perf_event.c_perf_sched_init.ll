; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_perf_sched_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_perf_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32, i32, %struct.TYPE_2__, %struct.event_constraint** }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.event_constraint = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*, %struct.event_constraint**, i32, i32, i32)* @perf_sched_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_sched_init(%struct.perf_sched* %0, %struct.event_constraint** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.perf_sched*, align 8
  %7 = alloca %struct.event_constraint**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.perf_sched* %0, %struct.perf_sched** %6, align 8
  store %struct.event_constraint** %1, %struct.event_constraint*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %13 = call i32 @memset(%struct.perf_sched* %12, i32 0, i32 32)
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %16 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %19 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.event_constraint**, %struct.event_constraint*** %7, align 8
  %21 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %22 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %21, i32 0, i32 3
  store %struct.event_constraint** %20, %struct.event_constraint*** %22, align 8
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %39, %5
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load %struct.event_constraint**, %struct.event_constraint*** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %28, i64 %30
  %32 = load %struct.event_constraint*, %struct.event_constraint** %31, align 8
  %33 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %42

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %23

42:                                               ; preds = %37, %23
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %45 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %49 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %53 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  ret void
}

declare dso_local i32 @memset(%struct.perf_sched*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
