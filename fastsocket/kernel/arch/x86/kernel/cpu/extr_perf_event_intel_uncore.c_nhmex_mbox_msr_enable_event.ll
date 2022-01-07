; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_mbox_msr_enable_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_mbox_msr_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32, i64 }

@NHMEX_M_PMON_ADDR_MATCH_MASK = common dso_local global i32 0, align 4
@NHMEX_M_PMON_ADDR_MASK_MASK = common dso_local global i32 0, align 4
@NHMEX_M_PMON_ADDR_MASK_SHIFT = common dso_local global i32 0, align 4
@NHMEX_M_PMON_MM_CFG_EN = common dso_local global i32 0, align 4
@NHMEX_PMON_CTL_EN_BIT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_mbox_msr_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nhmex_mbox_msr_enable_event(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %5, align 8
  %11 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %12 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %11, i32 0, i32 3
  store %struct.hw_perf_event_extra* %12, %struct.hw_perf_event_extra** %6, align 8
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 2
  store %struct.hw_perf_event_extra* %14, %struct.hw_perf_event_extra** %7, align 8
  %15 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @__BITS_VALUE(i32 %17, i32 0, i32 8)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 255
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__BITS_VALUE(i32 %24, i32 0, i32 16)
  %26 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @nhmex_mbox_shared_reg_config(%struct.intel_uncore_box* %26, i32 %27)
  %29 = call i32 @wrmsrl(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %21, %2
  %31 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %32 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @__BITS_VALUE(i32 %33, i32 1, i32 8)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 255
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %39 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__BITS_VALUE(i32 %40, i32 1, i32 16)
  %42 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @nhmex_mbox_shared_reg_config(%struct.intel_uncore_box* %42, i32 %43)
  %45 = call i32 @wrmsrl(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %37, %30
  %47 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %48 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wrmsrl(i32 %49, i32 0)
  %51 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %52 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, -1
  br i1 %54, label %55, label %88

55:                                               ; preds = %46
  %56 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %57 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %61 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @NHMEX_M_PMON_ADDR_MATCH_MASK, align 4
  %64 = sext i32 %63 to i64
  %65 = and i64 %62, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @wrmsrl(i32 %59, i32 %66)
  %68 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %69 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 2
  %72 = load i32, i32* @NHMEX_M_PMON_ADDR_MASK_MASK, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %75 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @NHMEX_M_PMON_ADDR_MASK_SHIFT, align 4
  %78 = zext i32 %77 to i64
  %79 = lshr i64 %76, %78
  %80 = and i64 %73, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @wrmsrl(i32 %71, i32 %81)
  %83 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %84 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NHMEX_M_PMON_MM_CFG_EN, align 4
  %87 = call i32 @wrmsrl(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %55, %46
  %89 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %90 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %93 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @NHMEX_PMON_CTL_EN_BIT0, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @wrmsrl(i32 %91, i32 %96)
  ret void
}

declare dso_local i32 @__BITS_VALUE(i32, i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @nhmex_mbox_shared_reg_config(%struct.intel_uncore_box*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
