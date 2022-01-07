; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_x86_pmu_extra_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_x86_pmu_extra_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.extra_reg* }
%struct.extra_reg = type { i32, i32, i32, i64, i32 }
%struct.perf_event = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i64, i32 }

@x86_pmu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.perf_event*)* @x86_pmu_extra_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86_pmu_extra_regs(i32 %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  %7 = alloca %struct.extra_reg*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.hw_perf_event_extra* %10, %struct.hw_perf_event_extra** %6, align 8
  %11 = load %struct.extra_reg*, %struct.extra_reg** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 8
  %12 = icmp ne %struct.extra_reg* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.extra_reg*, %struct.extra_reg** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 8
  store %struct.extra_reg* %15, %struct.extra_reg** %7, align 8
  br label %16

16:                                               ; preds = %63, %14
  %17 = load %struct.extra_reg*, %struct.extra_reg** %7, align 8
  %18 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %16
  %22 = load %struct.extra_reg*, %struct.extra_reg** %7, align 8
  %23 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.extra_reg*, %struct.extra_reg** %7, align 8
  %27 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %63

32:                                               ; preds = %21
  %33 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.extra_reg*, %struct.extra_reg** %7, align 8
  %38 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = xor i32 %39, -1
  %41 = and i32 %36, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %67

46:                                               ; preds = %32
  %47 = load %struct.extra_reg*, %struct.extra_reg** %7, align 8
  %48 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %51 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %53 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %57 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.extra_reg*, %struct.extra_reg** %7, align 8
  %59 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %62 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %66

63:                                               ; preds = %31
  %64 = load %struct.extra_reg*, %struct.extra_reg** %7, align 8
  %65 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %64, i32 1
  store %struct.extra_reg* %65, %struct.extra_reg** %7, align 8
  br label %16

66:                                               ; preds = %46, %16
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %43, %13
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
