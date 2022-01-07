; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_p4.c_p4_pmu_disable_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_p4.c_p4_pmu_disable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }

@P4_CCCR_ENABLE = common dso_local global i32 0, align 4
@P4_CCCR_OVF = common dso_local global i32 0, align 4
@P4_CCCR_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @p4_pmu_disable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p4_pmu_disable_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %5 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %4, i32 0, i32 0
  store %struct.hw_perf_event* %5, %struct.hw_perf_event** %3, align 8
  %6 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @p4_config_unpack_cccr(i32 %11)
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @P4_CCCR_ENABLE, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load i32, i32* @P4_CCCR_OVF, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, i32* @P4_CCCR_RESERVED, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @checking_wrmsrl(i32 %8, i32 %22)
  ret void
}

declare dso_local i32 @checking_wrmsrl(i32, i32) #1

declare dso_local i64 @p4_config_unpack_cccr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
