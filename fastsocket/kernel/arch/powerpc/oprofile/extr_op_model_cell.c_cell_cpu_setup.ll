; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_cell.c_cell_cpu_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_cell.c_cell_cpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.op_counter_config = type { i32 }

@profiling_mode = common dso_local global i64 0, align 8
@SPU_PROFILING_CYCLES = common dso_local global i64 0, align 8
@pm_start_stop = common dso_local global i32 0, align 4
@group_control = common dso_local global i32 0, align 4
@pm_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@debug_bus_control = common dso_local global i32 0, align 4
@num_counters = common dso_local global i32 0, align 4
@ctr_enabled = common dso_local global i32 0, align 4
@pm_signal = common dso_local global %struct.TYPE_3__* null, align 8
@SPU_PROFILING_EVENTS = common dso_local global i64 0, align 8
@pm_interval = common dso_local global i32 0, align 4
@NUM_INTERVAL_CYC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_counter_config*)* @cell_cpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cell_cpu_setup(%struct.op_counter_config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.op_counter_config*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %3, align 8
  %8 = call i64 (...) @smp_processor_id()
  store i64 %8, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load i64, i64* @profiling_mode, align 8
  %10 = load i64, i64* @SPU_PROFILING_CYCLES, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @cbe_get_hw_thread_id(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %79

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @cbe_disable_pm(i64 %19)
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @cbe_disable_pm_interrupts(i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @pm_start_stop, align 4
  %25 = call i32 @cbe_write_pm(i64 %23, i32 %24, i32 0)
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* @group_control, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pm_regs, i32 0, i32 1), align 4
  %29 = call i32 @cbe_write_pm(i64 %26, i32 %27, i32 %28)
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* @debug_bus_control, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pm_regs, i32 0, i32 0), align 4
  %33 = call i32 @cbe_write_pm(i64 %30, i32 %31, i32 %32)
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @write_pm_cntrl(i64 %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %56, %18
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @num_counters, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i32, i32* @ctr_enabled, align 4
  %42 = load i32, i32* %6, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @cbe_cpu_to_node(i64 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pm_signal, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %46, %40
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %36

59:                                               ; preds = %36
  %60 = load i64, i64* @profiling_mode, align 8
  %61 = load i64, i64* @SPU_PROFILING_EVENTS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @cbe_cpu_to_node(i64 %64)
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 2
  %68 = call i32 @pm_rtas_activate_signals(i32 %65, i64 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i64, i64* %4, align 8
  %70 = load i32, i32* @pm_interval, align 4
  %71 = load i32, i32* @NUM_INTERVAL_CYC, align 4
  %72 = call i32 @cbe_write_pm(i64 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %79

74:                                               ; preds = %59
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @cbe_cpu_to_node(i64 %75)
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @pm_rtas_activate_signals(i32 %76, i64 %77)
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %63, %17, %12
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @cbe_get_hw_thread_id(i64) #1

declare dso_local i32 @cbe_disable_pm(i64) #1

declare dso_local i32 @cbe_disable_pm_interrupts(i64) #1

declare dso_local i32 @cbe_write_pm(i64, i32, i32) #1

declare dso_local i32 @write_pm_cntrl(i64) #1

declare dso_local i32 @cbe_cpu_to_node(i64) #1

declare dso_local i32 @pm_rtas_activate_signals(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
