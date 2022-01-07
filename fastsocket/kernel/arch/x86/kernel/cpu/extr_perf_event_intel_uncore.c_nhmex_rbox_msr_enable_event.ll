; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_rbox_msr_enable_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_rbox_msr_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32, i32 }

@NHMEX_PMON_CTL_EN_BIT0 = common dso_local global i32 0, align 4
@NHMEX_R_PMON_CTL_EV_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_rbox_msr_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nhmex_rbox_msr_enable_event(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %5, align 8
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 3
  store %struct.hw_perf_event_extra* %13, %struct.hw_perf_event_extra** %6, align 8
  %14 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %15 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %14, i32 0, i32 2
  store %struct.hw_perf_event_extra* %15, %struct.hw_perf_event_extra** %7, align 8
  %16 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = srem i32 %18, 6
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %28 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 6
  %31 = mul nsw i32 %30, 5
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %76 [
    i32 0, label %35
    i32 1, label %35
    i32 2, label %43
    i32 3, label %43
    i32 4, label %51
    i32 5, label %51
  ]

35:                                               ; preds = %26, %26
  %36 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %40 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @wrmsrl(i32 %38, i32 %41)
  br label %76

43:                                               ; preds = %26, %26
  %44 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %45 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @nhmex_rbox_shared_reg_config(%struct.intel_uncore_box* %47, i32 %48)
  %50 = call i32 @wrmsrl(i32 %46, i32 %49)
  br label %76

51:                                               ; preds = %26, %26
  %52 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %53 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %56 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @wrmsrl(i32 %54, i32 %57)
  %59 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %60 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  %63 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %64 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 32
  %67 = call i32 @wrmsrl(i32 %62, i32 %66)
  %68 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %69 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 2
  %72 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %73 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wrmsrl(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %26, %51, %43, %35
  %77 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %78 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NHMEX_PMON_CTL_EN_BIT0, align 4
  %81 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %82 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NHMEX_R_PMON_CTL_EV_SEL_MASK, align 4
  %85 = and i32 %83, %84
  %86 = or i32 %80, %85
  %87 = call i32 @wrmsrl(i32 %79, i32 %86)
  ret void
}

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @nhmex_rbox_shared_reg_config(%struct.intel_uncore_box*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
