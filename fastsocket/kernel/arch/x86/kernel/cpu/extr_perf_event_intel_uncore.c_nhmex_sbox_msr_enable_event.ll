; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_sbox_msr_enable_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_sbox_msr_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i64, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i64 }

@NHMEX_S_PMON_MM_CFG_EN = common dso_local global i32 0, align 4
@NHMEX_PMON_CTL_EN_BIT22 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_sbox_msr_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nhmex_sbox_msr_enable_event(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %5, align 8
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 3
  store %struct.hw_perf_event_extra* %11, %struct.hw_perf_event_extra** %6, align 8
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 2
  store %struct.hw_perf_event_extra* %13, %struct.hw_perf_event_extra** %7, align 8
  %14 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %15 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @wrmsrl(i64 %16, i32 0)
  %18 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, -1
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %24 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, -1
  br i1 %26, label %27, label %51

27:                                               ; preds = %22, %2
  %28 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %29 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %33 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @wrmsrl(i64 %31, i32 %35)
  %37 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %38 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 2
  %41 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %42 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @wrmsrl(i64 %40, i32 %44)
  %46 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %47 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @NHMEX_S_PMON_MM_CFG_EN, align 4
  %50 = call i32 @wrmsrl(i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %27, %22
  %52 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %53 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %56 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NHMEX_PMON_CTL_EN_BIT22, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @wrmsrl(i64 %54, i32 %59)
  ret void
}

declare dso_local i32 @wrmsrl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
