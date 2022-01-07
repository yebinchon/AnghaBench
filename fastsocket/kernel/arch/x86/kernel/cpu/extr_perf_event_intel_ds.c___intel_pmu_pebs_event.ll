; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_ds.c___intel_pmu_pebs_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_ds.c___intel_pmu_pebs_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i32, i32, i32, i32 }
%struct.pebs_record_core = type { i32, i32, i32 }
%struct.perf_sample_data = type { i32 }

@PERF_EFLAGS_EXACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.pt_regs*, i8*)* @__intel_pmu_pebs_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_pmu_pebs_event(%struct.perf_event* %0, %struct.pt_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pebs_record_core*, align 8
  %8 = alloca %struct.perf_sample_data, align 4
  %9 = alloca %struct.pt_regs, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.pebs_record_core*
  store %struct.pebs_record_core* %11, %struct.pebs_record_core** %7, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %13 = call i32 @intel_pmu_save_and_restart(%struct.perf_event* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %64

16:                                               ; preds = %3
  %17 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %8, i32 0)
  %18 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %24 = bitcast %struct.pt_regs* %9 to i8*
  %25 = bitcast %struct.pt_regs* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 16, i1 false)
  %26 = load %struct.pebs_record_core*, %struct.pebs_record_core** %7, align 8
  %27 = getelementptr inbounds %struct.pebs_record_core, %struct.pebs_record_core* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load %struct.pebs_record_core*, %struct.pebs_record_core** %7, align 8
  %31 = getelementptr inbounds %struct.pebs_record_core, %struct.pebs_record_core* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.pebs_record_core*, %struct.pebs_record_core** %7, align 8
  %35 = getelementptr inbounds %struct.pebs_record_core, %struct.pebs_record_core* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %39 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %51

43:                                               ; preds = %16
  %44 = call i64 @intel_pmu_pebs_fixup_ip(%struct.pt_regs* %9)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* @PERF_EFLAGS_EXACT, align 4
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %57

51:                                               ; preds = %43, %16
  %52 = load i32, i32* @PERF_EFLAGS_EXACT, align 4
  %53 = xor i32 %52, -1
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %59 = call i64 @perf_event_overflow(%struct.perf_event* %58, %struct.perf_sample_data* %8, %struct.pt_regs* %9)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %63 = call i32 @x86_pmu_stop(%struct.perf_event* %62, i32 0)
  br label %64

64:                                               ; preds = %15, %61, %57
  ret void
}

declare dso_local i32 @intel_pmu_save_and_restart(%struct.perf_event*) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @intel_pmu_pebs_fixup_ip(%struct.pt_regs*) #1

declare dso_local i64 @perf_event_overflow(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @x86_pmu_stop(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
