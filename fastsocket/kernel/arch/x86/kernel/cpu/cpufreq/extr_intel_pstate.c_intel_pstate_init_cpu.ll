; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_intel_pstate_init_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_intel_pstate_init_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.pstate_adjust_policy* }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pstate_adjust_policy = type { i32 }
%struct.x86_cpu_id = type { i64 }

@intel_pstate_cpu_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@intel_pstate_timer_func = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Intel pstate controlling: cpu %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @intel_pstate_init_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pstate_init_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.x86_cpu_id*, align 8
  %5 = alloca %struct.cpudata*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @intel_pstate_cpu_ids, align 4
  %7 = call %struct.x86_cpu_id* @x86_match_cpu(i32 %6)
  store %struct.x86_cpu_id* %7, %struct.x86_cpu_id** %4, align 8
  %8 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %9 = icmp ne %struct.x86_cpu_id* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %84

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.cpudata* @kzalloc(i32 48, i32 %14)
  %16 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %16, i64 %18
  store %struct.cpudata* %15, %struct.cpudata** %19, align 8
  %20 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %20, i64 %22
  %24 = load %struct.cpudata*, %struct.cpudata** %23, align 8
  %25 = icmp ne %struct.cpudata* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %13
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %84

29:                                               ; preds = %13
  %30 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %30, i64 %32
  %34 = load %struct.cpudata*, %struct.cpudata** %33, align 8
  store %struct.cpudata* %34, %struct.cpudata** %5, align 8
  %35 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %36 = call i32 @intel_pstate_get_cpu_pstates(%struct.cpudata* %35)
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %39 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %4, align 8
  %41 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.pstate_adjust_policy*
  %44 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %45 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %44, i32 0, i32 3
  store %struct.pstate_adjust_policy* %43, %struct.pstate_adjust_policy** %45, align 8
  %46 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %47 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %46, i32 0, i32 1
  %48 = call i32 @init_timer_deferrable(%struct.TYPE_5__* %47)
  %49 = load i32, i32* @intel_pstate_timer_func, align 4
  %50 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %51 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %54 = ptrtoint %struct.cpudata* %53 to i64
  %55 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %56 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i32, i32* @HZ, align 4
  %60 = sdiv i32 %59, 100
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %58, %61
  %63 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %64 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  %66 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %67 = call i32 @intel_pstate_busy_pid_reset(%struct.cpudata* %66)
  %68 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %69 = call i32 @intel_pstate_idle_pid_reset(%struct.cpudata* %68)
  %70 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %71 = call i32 @intel_pstate_sample(%struct.cpudata* %70)
  %72 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %73 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %74 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @intel_pstate_set_pstate(%struct.cpudata* %72, i32 %76)
  %78 = load %struct.cpudata*, %struct.cpudata** %5, align 8
  %79 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %78, i32 0, i32 1
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @add_timer_on(%struct.TYPE_5__* %79, i32 %80)
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %29, %26, %10
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.x86_cpu_id* @x86_match_cpu(i32) #1

declare dso_local %struct.cpudata* @kzalloc(i32, i32) #1

declare dso_local i32 @intel_pstate_get_cpu_pstates(%struct.cpudata*) #1

declare dso_local i32 @init_timer_deferrable(%struct.TYPE_5__*) #1

declare dso_local i32 @intel_pstate_busy_pid_reset(%struct.cpudata*) #1

declare dso_local i32 @intel_pstate_idle_pid_reset(%struct.cpudata*) #1

declare dso_local i32 @intel_pstate_sample(%struct.cpudata*) #1

declare dso_local i32 @intel_pstate_set_pstate(%struct.cpudata*, i32) #1

declare dso_local i32 @add_timer_on(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
