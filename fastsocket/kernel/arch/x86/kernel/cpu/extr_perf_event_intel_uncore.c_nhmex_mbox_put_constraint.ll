; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_mbox_put_constraint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_mbox_put_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_mbox_put_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nhmex_mbox_put_constraint(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event_extra*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store %struct.hw_perf_event_extra* %9, %struct.hw_perf_event_extra** %5, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.hw_perf_event_extra* %12, %struct.hw_perf_event_extra** %6, align 8
  %13 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %14 = call i64 @uncore_box_is_fake(%struct.intel_uncore_box* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %25 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %26 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__BITS_VALUE(i32 %27, i32 0, i32 8)
  %29 = call i32 @nhmex_mbox_put_shared_reg(%struct.intel_uncore_box* %24, i32 %28)
  br label %30

30:                                               ; preds = %23, %17
  %31 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %32 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %38 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %39 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__BITS_VALUE(i32 %40, i32 1, i32 8)
  %42 = call i32 @nhmex_mbox_put_shared_reg(%struct.intel_uncore_box* %37, i32 %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %45 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %47 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %52 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %53 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nhmex_mbox_put_shared_reg(%struct.intel_uncore_box* %51, i32 %54)
  %56 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %57 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %16, %50, %43
  ret void
}

declare dso_local i64 @uncore_box_is_fake(%struct.intel_uncore_box*) #1

declare dso_local i32 @nhmex_mbox_put_shared_reg(%struct.intel_uncore_box*, i32) #1

declare dso_local i32 @__BITS_VALUE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
