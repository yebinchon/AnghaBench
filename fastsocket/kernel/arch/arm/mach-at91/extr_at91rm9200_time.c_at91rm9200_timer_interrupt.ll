; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91rm9200_time.c_at91rm9200_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91rm9200_time.c_at91rm9200_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }

@AT91_ST_SR = common dso_local global i32 0, align 4
@irqmask = common dso_local global i32 0, align 4
@AT91_ST_ALMS = common dso_local global i32 0, align 4
@clkevt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@AT91_ST_PITS = common dso_local global i32 0, align 4
@last_crtr = common dso_local global i32 0, align 4
@AT91_ST_CRTV = common dso_local global i32 0, align 4
@LATCH = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91rm9200_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91rm9200_timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @AT91_ST_SR, align 4
  %9 = call i32 @at91_sys_read(i32 %8)
  %10 = load i32, i32* @irqmask, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @AT91_ST_ALMS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clkevt, i32 0, i32 0), align 8
  %18 = call i32 %17(%struct.TYPE_4__* @clkevt)
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @AT91_ST_PITS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = call i32 (...) @read_CRTR()
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %35, %25
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @last_crtr, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* @AT91_ST_CRTV, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @LATCH, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32, i32* @LATCH, align 4
  %37 = load i32, i32* @last_crtr, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* @last_crtr, align 4
  %39 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clkevt, i32 0, i32 0), align 8
  %40 = call i32 %39(%struct.TYPE_4__* @clkevt)
  br label %27

41:                                               ; preds = %27
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %20
  %44 = load i32, i32* @IRQ_NONE, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %41, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @at91_sys_read(i32) #1

declare dso_local i32 @read_CRTR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
