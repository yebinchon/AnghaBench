; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_p4.c_p4_pmu_enable_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_p4.c_p4_pmu_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p4_event_bind = type { i32, i64* }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i32 }

@p4_event_bind_map = common dso_local global %struct.p4_event_bind* null, align 8
@P4_ESCR_EVENT_MASK = common dso_local global i32 0, align 4
@P4_CCCR_RESERVED = common dso_local global i32 0, align 4
@P4_CCCR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @p4_pmu_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p4_pmu_enable_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.p4_event_bind*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %3, align 8
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @p4_ht_config_thread(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @p4_clear_ht_bit(i32 %18)
  %20 = call i32 @p4_config_unpack_escr(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %22 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @p4_config_unpack_event(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.p4_event_bind*, %struct.p4_event_bind** @p4_event_bind_map, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.p4_event_bind, %struct.p4_event_bind* %25, i64 %27
  store %struct.p4_event_bind* %28, %struct.p4_event_bind** %7, align 8
  %29 = load %struct.p4_event_bind*, %struct.p4_event_bind** %7, align 8
  %30 = getelementptr inbounds %struct.p4_event_bind, %struct.p4_event_bind* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %38 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @p4_is_event_cascaded(i32 %39)
  %41 = call i32 @WARN_ON_ONCE(i32 %40)
  %42 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %43 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON_ONCE(i32 %46)
  %48 = load i32, i32* @P4_ESCR_EVENT_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.p4_event_bind*, %struct.p4_event_bind** %7, align 8
  %53 = getelementptr inbounds %struct.p4_event_bind, %struct.p4_event_bind* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @P4_OPCODE_EVNT(i32 %54)
  %56 = call i32 @P4_ESCR_EVENT(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %60 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @p4_config_unpack_cccr(i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %64 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @p4_pmu_enable_pebs(i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @checking_wrmsrl(i32 %67, i32 %68)
  %70 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %71 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @P4_CCCR_RESERVED, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = load i32, i32* @P4_CCCR_ENABLE, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @checking_wrmsrl(i32 %72, i32 %78)
  ret void
}

declare dso_local i32 @p4_ht_config_thread(i32) #1

declare dso_local i32 @p4_config_unpack_escr(i32) #1

declare dso_local i32 @p4_clear_ht_bit(i32) #1

declare dso_local i32 @p4_config_unpack_event(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @p4_is_event_cascaded(i32) #1

declare dso_local i32 @P4_ESCR_EVENT(i32) #1

declare dso_local i32 @P4_OPCODE_EVNT(i32) #1

declare dso_local i32 @p4_config_unpack_cccr(i32) #1

declare dso_local i32 @p4_pmu_enable_pebs(i32) #1

declare dso_local i32 @checking_wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
