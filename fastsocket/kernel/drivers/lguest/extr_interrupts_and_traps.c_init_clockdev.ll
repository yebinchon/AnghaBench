; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_init_clockdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_init_clockdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@clockdev_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_clockdev(%struct.lg_cpu* %0) #0 {
  %2 = alloca %struct.lg_cpu*, align 8
  store %struct.lg_cpu* %0, %struct.lg_cpu** %2, align 8
  %3 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %4 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %3, i32 0, i32 0
  %5 = load i32, i32* @CLOCK_REALTIME, align 4
  %6 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %7 = call i32 @hrtimer_init(%struct.TYPE_2__* %4, i32 %5, i32 %6)
  %8 = load i32, i32* @clockdev_fn, align 4
  %9 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %10 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  ret void
}

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
