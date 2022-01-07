; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_smp.c_smp_rescan_cpus_sigp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_smp.c_smp_rescan_cpus_sigp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_cpu_ids = common dso_local global i32 0, align 4
@MAX_CPU_ADDRESS = common dso_local global i32 0, align 4
@__cpu_logical_map = common dso_local global i32* null, align 8
@POLARIZATION_UNKNWN = common dso_local global i32 0, align 4
@smp_cpu_polarization = common dso_local global i32* null, align 8
@cpu_present_map = common dso_local global i32 0, align 4
@CPU_STATE_CONFIGURED = common dso_local global i32 0, align 4
@smp_cpu_state = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smp_rescan_cpus_sigp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_rescan_cpus_sigp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 @cpumask_first(i32* %3)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @nr_cpu_ids, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %52, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MAX_CPU_ADDRESS, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @cpu_known(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %52

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** @__cpu_logical_map, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @POLARIZATION_UNKNWN, align 4
  %28 = load i32*, i32** @smp_cpu_polarization, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @cpu_stopped(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %52

36:                                               ; preds = %21
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @cpu_present_map, align 4
  %39 = call i32 @cpu_set(i32 %37, i32 %38)
  %40 = load i32, i32* @CPU_STATE_CONFIGURED, align 4
  %41 = load i32*, i32** @smp_cpu_state, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @cpumask_next(i32 %45, i32* %3)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @nr_cpu_ids, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %55

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %35, %20
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %12

55:                                               ; preds = %50, %12
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local i64 @cpu_known(i32) #1

declare dso_local i32 @cpu_stopped(i32) #1

declare dso_local i32 @cpu_set(i32, i32) #1

declare dso_local i32 @cpumask_next(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
