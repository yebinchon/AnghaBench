; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_timing_alert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_timing_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_irq_parm = type { i64, i64, i64 }

@ETR_EVENT_PORT0_CHANGE = common dso_local global i32 0, align 4
@etr_events = common dso_local global i32 0, align 4
@ETR_EVENT_PORT1_CHANGE = common dso_local global i32 0, align 4
@ETR_EVENT_PORT_ALERT = common dso_local global i32 0, align 4
@time_sync_wq = common dso_local global i32 0, align 4
@etr_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etr_irq_parm*)* @etr_timing_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etr_timing_alert(%struct.etr_irq_parm* %0) #0 {
  %2 = alloca %struct.etr_irq_parm*, align 8
  store %struct.etr_irq_parm* %0, %struct.etr_irq_parm** %2, align 8
  %3 = load %struct.etr_irq_parm*, %struct.etr_irq_parm** %2, align 8
  %4 = getelementptr inbounds %struct.etr_irq_parm, %struct.etr_irq_parm* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ETR_EVENT_PORT0_CHANGE, align 4
  %9 = call i32 @set_bit(i32 %8, i32* @etr_events)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.etr_irq_parm*, %struct.etr_irq_parm** %2, align 8
  %12 = getelementptr inbounds %struct.etr_irq_parm, %struct.etr_irq_parm* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @ETR_EVENT_PORT1_CHANGE, align 4
  %17 = call i32 @set_bit(i32 %16, i32* @etr_events)
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.etr_irq_parm*, %struct.etr_irq_parm** %2, align 8
  %20 = getelementptr inbounds %struct.etr_irq_parm, %struct.etr_irq_parm* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ETR_EVENT_PORT_ALERT, align 4
  %25 = call i32 @set_bit(i32 %24, i32* @etr_events)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* @time_sync_wq, align 4
  %28 = call i32 @queue_work(i32 %27, i32* @etr_work)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
