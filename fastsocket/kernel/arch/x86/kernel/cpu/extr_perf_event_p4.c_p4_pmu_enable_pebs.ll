; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_p4.c_p4_pmu_enable_pebs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_p4.c_p4_pmu_enable_pebs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p4_pebs_bind = type { i64, i64 }

@P4_PEBS_METRIC__max = common dso_local global i64 0, align 8
@P4_PEBS_CONFIG_METRIC_MASK = common dso_local global i64 0, align 8
@P4_PEBS_METRIC__none = common dso_local global i32 0, align 4
@p4_pebs_bind_map = common dso_local global %struct.p4_pebs_bind* null, align 8
@MSR_IA32_PEBS_ENABLE = common dso_local global i32 0, align 4
@MSR_P4_PEBS_MATRIX_VERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @p4_pmu_enable_pebs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p4_pmu_enable_pebs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p4_pebs_bind*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @P4_PEBS_METRIC__max, align 8
  %6 = load i64, i64* @P4_PEBS_CONFIG_METRIC_MASK, align 8
  %7 = icmp sgt i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUILD_BUG_ON(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @p4_config_unpack_metric(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @P4_PEBS_METRIC__none, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.p4_pebs_bind*, %struct.p4_pebs_bind** @p4_pebs_bind_map, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.p4_pebs_bind, %struct.p4_pebs_bind* %17, i64 %19
  store %struct.p4_pebs_bind* %20, %struct.p4_pebs_bind** %3, align 8
  %21 = load i32, i32* @MSR_IA32_PEBS_ENABLE, align 4
  %22 = load %struct.p4_pebs_bind*, %struct.p4_pebs_bind** %3, align 8
  %23 = getelementptr inbounds %struct.p4_pebs_bind, %struct.p4_pebs_bind* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @checking_wrmsrl(i32 %21, i32 %25)
  %27 = load i32, i32* @MSR_P4_PEBS_MATRIX_VERT, align 4
  %28 = load %struct.p4_pebs_bind*, %struct.p4_pebs_bind** %3, align 8
  %29 = getelementptr inbounds %struct.p4_pebs_bind, %struct.p4_pebs_bind* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @checking_wrmsrl(i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @p4_config_unpack_metric(i32) #1

declare dso_local i32 @checking_wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
