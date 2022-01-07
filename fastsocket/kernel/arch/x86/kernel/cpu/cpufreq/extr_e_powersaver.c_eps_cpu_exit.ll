; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_e_powersaver.c_eps_cpu_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_e_powersaver.c_eps_cpu_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eps_cpu_data = type { i32 }
%struct.cpufreq_policy = type { i32 }

@eps_cpu = common dso_local global %struct.eps_cpu_data** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@MSR_IA32_PERF_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @eps_cpu_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eps_cpu_exit(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eps_cpu_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %8 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %9 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.eps_cpu_data**, %struct.eps_cpu_data*** @eps_cpu, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.eps_cpu_data*, %struct.eps_cpu_data** %11, i64 %13
  %15 = load %struct.eps_cpu_data*, %struct.eps_cpu_data** %14, align 8
  %16 = icmp eq %struct.eps_cpu_data* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %49

20:                                               ; preds = %1
  %21 = load %struct.eps_cpu_data**, %struct.eps_cpu_data*** @eps_cpu, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.eps_cpu_data*, %struct.eps_cpu_data** %21, i64 %23
  %25 = load %struct.eps_cpu_data*, %struct.eps_cpu_data** %24, align 8
  store %struct.eps_cpu_data* %25, %struct.eps_cpu_data** %5, align 8
  %26 = load i32, i32* @MSR_IA32_PERF_STATUS, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @rdmsr(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.eps_cpu_data*, %struct.eps_cpu_data** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 65535
  %34 = call i32 @eps_set_state(%struct.eps_cpu_data* %30, i32 %31, i32 %33)
  %35 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %36 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cpufreq_frequency_table_put_attr(i32 %37)
  %39 = load %struct.eps_cpu_data**, %struct.eps_cpu_data*** @eps_cpu, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.eps_cpu_data*, %struct.eps_cpu_data** %39, i64 %41
  %43 = load %struct.eps_cpu_data*, %struct.eps_cpu_data** %42, align 8
  %44 = call i32 @kfree(%struct.eps_cpu_data* %43)
  %45 = load %struct.eps_cpu_data**, %struct.eps_cpu_data*** @eps_cpu, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.eps_cpu_data*, %struct.eps_cpu_data** %45, i64 %47
  store %struct.eps_cpu_data* null, %struct.eps_cpu_data** %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %20, %17
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @eps_set_state(%struct.eps_cpu_data*, i32, i32) #1

declare dso_local i32 @cpufreq_frequency_table_put_attr(i32) #1

declare dso_local i32 @kfree(%struct.eps_cpu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
