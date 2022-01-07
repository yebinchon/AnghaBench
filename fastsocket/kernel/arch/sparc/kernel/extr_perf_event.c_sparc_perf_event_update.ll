; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_perf_event.c_sparc_perf_event_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_perf_event.c_sparc_perf_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.hw_perf_event = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.hw_perf_event*, i32)* @sparc_perf_event_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_perf_event_update(%struct.perf_event* %0, %struct.hw_perf_event* %1, i32 %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.hw_perf_event* %1, %struct.hw_perf_event** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 32, i32* %7, align 4
  br label %11

11:                                               ; preds = %24, %3
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 1
  %14 = call i32 @atomic64_read(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @read_pmc(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %18 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %17, i32 0, i32 1
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @atomic64_cmpxchg(i32* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  br label %11

25:                                               ; preds = %11
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %29, %30
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = ashr i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %38 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %37, i32 0, i32 0
  %39 = call i32 @atomic64_add(i32 %36, i32* %38)
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %42 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %41, i32 0, i32 0
  %43 = call i32 @atomic64_sub(i32 %40, i32* %42)
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @read_pmc(i32) #1

declare dso_local i32 @atomic64_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @atomic64_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
