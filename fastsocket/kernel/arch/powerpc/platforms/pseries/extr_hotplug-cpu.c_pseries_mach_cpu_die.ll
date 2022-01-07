; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_hotplug-cpu.c_pseries_mach_cpu_die.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_hotplug-cpu.c_pseries_mach_cpu_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@CPU_STATE_INACTIVE = common dso_local global i64 0, align 8
@CPU_STATE_ONLINE = common dso_local global i64 0, align 8
@CPU_STATE_OFFLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pseries_mach_cpu_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pseries_mach_cpu_die() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @smp_processor_id()
  store i32 %4, i32* %1, align 4
  %5 = call i32 (...) @hard_smp_processor_id()
  store i32 %5, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = call i32 (...) @local_irq_disable()
  %7 = call i32 (...) @idle_task_exit()
  %8 = call i32 (...) @xics_teardown_cpu()
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @get_preferred_offline_state(i32 %9)
  %11 = load i64, i64* @CPU_STATE_INACTIVE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %0
  %14 = load i32, i32* %1, align 4
  %15 = load i64, i64* @CPU_STATE_INACTIVE, align 8
  %16 = call i32 @set_cpu_current_state(i32 %14, i64 %15)
  %17 = call i32 (...) @pseries_suspend_cpu()
  store i32 2, i32* %3, align 4
  %18 = call %struct.TYPE_2__* (...) @get_lppaca()
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = call %struct.TYPE_2__* (...) @get_lppaca()
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = call %struct.TYPE_2__* (...) @get_lppaca()
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %13
  br label %28

28:                                               ; preds = %33, %27
  %29 = load i32, i32* %1, align 4
  %30 = call i64 @get_preferred_offline_state(i32 %29)
  %31 = load i64, i64* @CPU_STATE_INACTIVE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @extended_cede_processor(i32 %34)
  br label %28

36:                                               ; preds = %28
  %37 = call %struct.TYPE_2__* (...) @get_lppaca()
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = call %struct.TYPE_2__* (...) @get_lppaca()
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = call %struct.TYPE_2__* (...) @get_lppaca()
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i64 @get_preferred_offline_state(i32 %47)
  %49 = load i64, i64* @CPU_STATE_ONLINE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* %2, align 4
  %53 = call i32 (...) @get_slb_shadow()
  %54 = call i32 @__pa(i32 %53)
  %55 = call i32 @unregister_slb_shadow(i32 %52, i32 %54)
  %56 = call i32 (...) @start_secondary_resume()
  br label %57

57:                                               ; preds = %51, %44
  br label %58

58:                                               ; preds = %57, %0
  %59 = load i32, i32* %1, align 4
  %60 = call i64 @get_preferred_offline_state(i32 %59)
  %61 = load i64, i64* @CPU_STATE_OFFLINE, align 8
  %62 = icmp ne i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = load i32, i32* %1, align 4
  %66 = load i64, i64* @CPU_STATE_OFFLINE, align 8
  %67 = call i32 @set_cpu_current_state(i32 %65, i64 %66)
  %68 = load i32, i32* %2, align 4
  %69 = call i32 (...) @get_slb_shadow()
  %70 = call i32 @__pa(i32 %69)
  %71 = call i32 @unregister_slb_shadow(i32 %68, i32 %70)
  %72 = call i32 (...) @rtas_stop_self()
  %73 = call i32 (...) @BUG()
  br label %74

74:                                               ; preds = %74, %58
  br label %74
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @hard_smp_processor_id(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @idle_task_exit(...) #1

declare dso_local i32 @xics_teardown_cpu(...) #1

declare dso_local i64 @get_preferred_offline_state(i32) #1

declare dso_local i32 @set_cpu_current_state(i32, i64) #1

declare dso_local i32 @pseries_suspend_cpu(...) #1

declare dso_local %struct.TYPE_2__* @get_lppaca(...) #1

declare dso_local i32 @extended_cede_processor(i32) #1

declare dso_local i32 @unregister_slb_shadow(i32, i32) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @get_slb_shadow(...) #1

declare dso_local i32 @start_secondary_resume(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rtas_stop_self(...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
