; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-h720x/extr_cpu-h7202.c_h7202_timerx_demux_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-h720x/extr_cpu-h7202.c_h7202_timerx_demux_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@TIMER_VIRT = common dso_local global i32 0, align 4
@TIMER_TOPSTAT = common dso_local global i32 0, align 4
@TSTAT_T0INT = common dso_local global i32 0, align 4
@IRQ_TIMER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @h7202_timerx_demux_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h7202_timerx_demux_handler(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %7 = load i32, i32* @TIMER_VIRT, align 4
  %8 = load i32, i32* @TIMER_TOPSTAT, align 4
  %9 = call i32 @CPU_REG(i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @TSTAT_T0INT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = call i32 (...) @timer_tick()
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TSTAT_T0INT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %40

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32, i32* %5, align 4
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @IRQ_TIMER1, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %35, %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @generic_handle_irq(i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = lshr i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %25

40:                                               ; preds = %19, %25
  ret void
}

declare dso_local i32 @CPU_REG(i32, i32) #1

declare dso_local i32 @timer_tick(...) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
