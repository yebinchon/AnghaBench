; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_event_enq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_event_enq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i32, i32 }
%struct.fnic_event = type { i32, i32, %struct.fnic* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fnic*, i32)* @fnic_event_enq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_event_enq(%struct.fnic* %0, i32 %1) #0 {
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fnic_event*, align 8
  %6 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.fnic_event* @kmalloc(i32 16, i32 %7)
  store %struct.fnic_event* %8, %struct.fnic_event** %5, align 8
  %9 = load %struct.fnic_event*, %struct.fnic_event** %5, align 8
  %10 = icmp ne %struct.fnic_event* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.fnic*, %struct.fnic** %3, align 8
  %14 = load %struct.fnic_event*, %struct.fnic_event** %5, align 8
  %15 = getelementptr inbounds %struct.fnic_event, %struct.fnic_event* %14, i32 0, i32 2
  store %struct.fnic* %13, %struct.fnic** %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.fnic_event*, %struct.fnic_event** %5, align 8
  %18 = getelementptr inbounds %struct.fnic_event, %struct.fnic_event* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.fnic*, %struct.fnic** %3, align 8
  %20 = getelementptr inbounds %struct.fnic, %struct.fnic* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.fnic_event*, %struct.fnic_event** %5, align 8
  %24 = getelementptr inbounds %struct.fnic_event, %struct.fnic_event* %23, i32 0, i32 1
  %25 = load %struct.fnic*, %struct.fnic** %3, align 8
  %26 = getelementptr inbounds %struct.fnic, %struct.fnic* %25, i32 0, i32 2
  %27 = call i32 @list_add_tail(i32* %24, i32* %26)
  %28 = load %struct.fnic*, %struct.fnic** %3, align 8
  %29 = getelementptr inbounds %struct.fnic, %struct.fnic* %28, i32 0, i32 1
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.fnic*, %struct.fnic** %3, align 8
  %33 = getelementptr inbounds %struct.fnic, %struct.fnic* %32, i32 0, i32 0
  %34 = call i32 @schedule_work(i32* %33)
  br label %35

35:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.fnic_event* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
