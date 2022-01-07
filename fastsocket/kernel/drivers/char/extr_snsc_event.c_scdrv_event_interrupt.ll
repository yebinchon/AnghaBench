; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_snsc_event.c_scdrv_event_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_snsc_event.c_scdrv_event_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subch_data_s = type { i32, i32, i32 }

@SAL_IROUTER_INTR_RECV = common dso_local global i32 0, align 4
@sn_sysctl_event = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @scdrv_event_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scdrv_event_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.subch_data_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.subch_data_s*
  store %struct.subch_data_s* %9, %struct.subch_data_s** %5, align 8
  %10 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %11 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %15 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %18 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ia64_sn_irtr_intr(i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SAL_IROUTER_INTR_RECV, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @tasklet_schedule(i32* @sn_sysctl_event)
  br label %30

30:                                               ; preds = %28, %23, %2
  %31 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %32 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ia64_sn_irtr_intr(i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
