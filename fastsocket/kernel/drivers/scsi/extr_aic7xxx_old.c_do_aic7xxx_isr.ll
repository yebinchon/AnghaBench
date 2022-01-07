; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_do_aic7xxx_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_do_aic7xxx_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@AHC_IN_ISR = common dso_local global i32 0, align 4
@INTSTAT = common dso_local global i32 0, align 4
@INT_PEND = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @do_aic7xxx_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_aic7xxx_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.aic7xxx_host*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.aic7xxx_host*
  store %struct.aic7xxx_host* %9, %struct.aic7xxx_host** %7, align 8
  %10 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %11 = icmp ne %struct.aic7xxx_host* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %16 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  %22 = load i32, i32* @AHC_IN_ISR, align 4
  %23 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %24 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %30, %14
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @aic7xxx_isr(i8* %28)
  br label %30

30:                                               ; preds = %27
  %31 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %32 = load i32, i32* @INTSTAT, align 4
  %33 = call i32 @aic_inb(%struct.aic7xxx_host* %31, i32 %32)
  %34 = load i32, i32* @INT_PEND, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %27, label %37

37:                                               ; preds = %30
  %38 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %39 = call i32 @aic7xxx_done_cmds_complete(%struct.aic7xxx_host* %38)
  %40 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %41 = call i32 @aic7xxx_run_waiting_queues(%struct.aic7xxx_host* %40)
  %42 = load i32, i32* @AHC_IN_ISR, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %45 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %49 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32 %52, i64 %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %37, %12
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @aic7xxx_isr(i8*) #1

declare dso_local i32 @aic_inb(%struct.aic7xxx_host*, i32) #1

declare dso_local i32 @aic7xxx_done_cmds_complete(%struct.aic7xxx_host*) #1

declare dso_local i32 @aic7xxx_run_waiting_queues(%struct.aic7xxx_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
