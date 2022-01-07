; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smp.c_start_secondary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smp.c_start_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)*, i32 (...)* }
%struct.TYPE_4__ = type { i32 }

@mp_ops = common dso_local global %struct.TYPE_3__* null, align 8
@loops_per_jiffy = common dso_local global i32 0, align 4
@cpu_data = common dso_local global %struct.TYPE_4__* null, align 8
@cpu_callin_map = common dso_local global i32 0, align 4
@TCBIND_CURTC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_secondary() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @cpu_probe()
  %3 = call i32 (...) @cpu_report()
  %4 = call i32 (...) @per_cpu_trap_init()
  %5 = call i32 (...) @mips_clockevent_init()
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_ops, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32 (...)*, i32 (...)** %7, align 8
  %9 = call i32 (...) %8()
  %10 = call i32 (...) @calibrate_delay()
  %11 = call i32 (...) @preempt_disable()
  %12 = call i32 (...) @smp_processor_id()
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @loops_per_jiffy, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_data, align 8
  %15 = load i32, i32* %1, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %13, i32* %18, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @notify_cpu_starting(i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_ops, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @set_cpu_sibling_map(i32 %25)
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @cpu_callin_map, align 4
  %29 = call i32 @cpu_set(i32 %27, i32 %28)
  %30 = call i32 (...) @synchronise_count_slave()
  %31 = call i32 (...) @cpu_idle()
  ret void
}

declare dso_local i32 @cpu_probe(...) #1

declare dso_local i32 @cpu_report(...) #1

declare dso_local i32 @per_cpu_trap_init(...) #1

declare dso_local i32 @mips_clockevent_init(...) #1

declare dso_local i32 @calibrate_delay(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @notify_cpu_starting(i32) #1

declare dso_local i32 @set_cpu_sibling_map(i32) #1

declare dso_local i32 @cpu_set(i32, i32) #1

declare dso_local i32 @synchronise_count_slave(...) #1

declare dso_local i32 @cpu_idle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
