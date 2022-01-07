; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/68360/extr_config.c_hw_timer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/68360/extr_config.c_hw_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i8, i32 }

@pquicc = common dso_local global %struct.TYPE_2__* null, align 8
@system_clock = common dso_local global i8 0, align 1
@HZ = common dso_local global i8 0, align 1
@CPMVEC_TIMER1 = common dso_local global i32 0, align 4
@m68360_timer_irq = common dso_local global i32 0, align 4
@IRQ_FLG_LOCK = common dso_local global i32 0, align 4
@IRQ_MACHSPEC = common dso_local global i32 0, align 4
@TCMP = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@TCTL_CLKSOURCE_32KHZ = common dso_local global i32 0, align 4
@TCTL_IRQEN = common dso_local global i32 0, align 4
@TCTL_OM = common dso_local global i32 0, align 4
@TCTL_TEN = common dso_local global i32 0, align 4
@TPRER = common dso_local global i32 0, align 4
@timer_routine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_timer_init() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i16, align 2
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pquicc, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 65520
  %7 = trunc i32 %6 to i16
  store i16 %7, i16* %2, align 2
  %8 = load i16, i16* %2, align 2
  %9 = zext i16 %8 to i32
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pquicc, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  store i8 8, i8* %1, align 1
  %12 = load i8, i8* %1, align 1
  %13 = zext i8 %12 to i32
  %14 = sub nsw i32 %13, 1
  %15 = shl i32 %14, 8
  %16 = trunc i32 %15 to i16
  %17 = zext i16 %16 to i32
  %18 = or i32 26, %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pquicc, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pquicc, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = load i8, i8* @system_clock, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %1, align 1
  %26 = zext i8 %25 to i32
  %27 = sdiv i32 %24, %26
  %28 = load i8, i8* @HZ, align 1
  %29 = zext i8 %28 to i32
  %30 = sdiv i32 %27, %29
  %31 = trunc i32 %30 to i8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pquicc, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i8 %31, i8* %33, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pquicc, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  store i32 3, i32* %35, align 4
  %36 = load i32, i32* @CPMVEC_TIMER1, align 4
  %37 = call i32 @setup_irq(i32 %36, i32* @m68360_timer_irq)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pquicc, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 65520
  %42 = or i32 %41, 1
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %2, align 2
  %44 = load i16, i16* %2, align 2
  %45 = zext i16 %44 to i32
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pquicc, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  ret void
}

declare dso_local i32 @setup_irq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
