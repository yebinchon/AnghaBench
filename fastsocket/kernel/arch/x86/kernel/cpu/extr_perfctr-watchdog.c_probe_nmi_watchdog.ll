; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perfctr-watchdog.c_probe_nmi_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perfctr-watchdog.c_probe_nmi_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@k7_wd_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@wd_ops = common dso_local global %struct.TYPE_8__* null, align 8
@MSR_ARCH_PERFMON_PERFCTR0 = common dso_local global i32 0, align 4
@intel_arch_wd_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@MSR_ARCH_PERFMON_EVENTSEL0 = common dso_local global i32 0, align 4
@X86_FEATURE_ARCH_PERFMON = common dso_local global i32 0, align 4
@p6_wd_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@p4_wd_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @probe_nmi_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_nmi_watchdog() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @boot_cpu_data, i32 0, i32 0), align 4
  switch i32 %1, label %46 [
    i32 129, label %2
    i32 128, label %13
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @boot_cpu_data, i32 0, i32 1), align 4
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @boot_cpu_data, i32 0, i32 1), align 4
  %7 = icmp sge i32 %6, 15
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @boot_cpu_data, i32 0, i32 1), align 4
  %10 = icmp sle i32 %9, 21
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store %struct.TYPE_8__* @k7_wd_ops, %struct.TYPE_8__** @wd_ops, align 8
  br label %12

12:                                               ; preds = %11, %8, %5
  br label %46

13:                                               ; preds = %0
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @boot_cpu_data, i32 0, i32 1), align 4
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @boot_cpu_data, i32 0, i32 2), align 4
  %18 = icmp eq i32 %17, 14
  br i1 %18, label %28, label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @boot_cpu_data, i32 0, i32 1), align 4
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @boot_cpu_data, i32 0, i32 2), align 4
  %24 = icmp eq i32 %23, 15
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @boot_cpu_data, i32 0, i32 3), align 4
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %16
  %29 = load i32, i32* @MSR_ARCH_PERFMON_PERFCTR0, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_arch_wd_ops, i32 0, i32 1), align 4
  %30 = load i32, i32* @MSR_ARCH_PERFMON_EVENTSEL0, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_arch_wd_ops, i32 0, i32 0), align 4
  br label %31

31:                                               ; preds = %28, %25, %22, %19
  %32 = load i32, i32* @X86_FEATURE_ARCH_PERFMON, align 4
  %33 = call i32 @cpu_has(%struct.TYPE_9__* @boot_cpu_data, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store %struct.TYPE_8__* @intel_arch_wd_ops, %struct.TYPE_8__** @wd_ops, align 8
  br label %46

36:                                               ; preds = %31
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @boot_cpu_data, i32 0, i32 1), align 4
  switch i32 %37, label %44 [
    i32 6, label %38
    i32 15, label %43
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @boot_cpu_data, i32 0, i32 2), align 4
  %40 = icmp sgt i32 %39, 13
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %46

42:                                               ; preds = %38
  store %struct.TYPE_8__* @p6_wd_ops, %struct.TYPE_8__** @wd_ops, align 8
  br label %45

43:                                               ; preds = %36
  store %struct.TYPE_8__* @p4_wd_ops, %struct.TYPE_8__** @wd_ops, align 8
  br label %45

44:                                               ; preds = %36
  br label %46

45:                                               ; preds = %43, %42
  br label %46

46:                                               ; preds = %12, %41, %44, %0, %45, %35
  ret void
}

declare dso_local i32 @cpu_has(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
