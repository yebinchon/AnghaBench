; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_schedule_eval_all_unreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_schedule_eval_all_unreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idset = type { i32 }

@css_bus_type = common dso_local global i32 0, align 4
@__unset_registered = common dso_local global i32 0, align 4
@slow_subchannel_lock = common dso_local global i32 0, align 4
@slow_subchannel_set = common dso_local global i32 0, align 4
@css_eval_scheduled = common dso_local global i32 0, align 4
@cio_work_q = common dso_local global i32 0, align 4
@slow_path_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @css_schedule_eval_all_unreg() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.idset*, align 8
  %3 = call %struct.idset* (...) @idset_sch_new()
  store %struct.idset* %3, %struct.idset** %2, align 8
  %4 = load %struct.idset*, %struct.idset** %2, align 8
  %5 = icmp ne %struct.idset* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 (...) @css_schedule_eval_all()
  br label %26

8:                                                ; preds = %0
  %9 = load %struct.idset*, %struct.idset** %2, align 8
  %10 = call i32 @idset_fill(%struct.idset* %9)
  %11 = load %struct.idset*, %struct.idset** %2, align 8
  %12 = load i32, i32* @__unset_registered, align 4
  %13 = call i32 @bus_for_each_dev(i32* @css_bus_type, i32* null, %struct.idset* %11, i32 %12)
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @slow_subchannel_lock, i64 %14)
  %16 = load i32, i32* @slow_subchannel_set, align 4
  %17 = load %struct.idset*, %struct.idset** %2, align 8
  %18 = call i32 @idset_add_set(i32 %16, %struct.idset* %17)
  %19 = call i32 @atomic_set(i32* @css_eval_scheduled, i32 1)
  %20 = load i32, i32* @cio_work_q, align 4
  %21 = call i32 @queue_work(i32 %20, i32* @slow_path_work)
  %22 = load i64, i64* %1, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* @slow_subchannel_lock, i64 %22)
  %24 = load %struct.idset*, %struct.idset** %2, align 8
  %25 = call i32 @idset_free(%struct.idset* %24)
  br label %26

26:                                               ; preds = %8, %6
  ret void
}

declare dso_local %struct.idset* @idset_sch_new(...) #1

declare dso_local i32 @css_schedule_eval_all(...) #1

declare dso_local i32 @idset_fill(%struct.idset*) #1

declare dso_local i32 @bus_for_each_dev(i32*, i32*, %struct.idset*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idset_add_set(i32, %struct.idset*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @idset_free(%struct.idset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
