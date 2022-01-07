; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_perf_cpum_cf.c_hw_perf_event_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_perf_cpum_cf.c_hw_perf_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @hw_perf_event_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_perf_event_update(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i64 @local64_read(i32* %10)
  store i64 %11, i64* %3, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ecctr(i32 %15, i64* %4)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  br label %50

20:                                               ; preds = %7
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @local64_cmpxchg(i32* %24, i64 %25, i64 %26)
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %7, label %30

30:                                               ; preds = %21
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %3, align 8
  %37 = sub i64 %35, %36
  br label %44

38:                                               ; preds = %30
  %39 = load i64, i64* %3, align 8
  %40 = sub i64 -1, %39
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %40, %41
  %43 = add i64 %42, 1
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i64 [ %37, %34 ], [ %43, %38 ]
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %48 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %47, i32 0, i32 0
  %49 = call i32 @local64_add(i64 %46, i32* %48)
  br label %50

50:                                               ; preds = %44, %19
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i32 @ecctr(i32, i64*) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
