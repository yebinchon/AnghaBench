; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91rm9200_time.c_clkevt32k_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91rm9200_time.c_clkevt32k_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@AT91_ST_IDR = common dso_local global i32 0, align 4
@AT91_ST_PITS = common dso_local global i32 0, align 4
@AT91_ST_ALMS = common dso_local global i32 0, align 4
@AT91_ST_SR = common dso_local global i32 0, align 4
@last_crtr = common dso_local global i32 0, align 4
@irqmask = common dso_local global i32 0, align 4
@AT91_ST_PIMR = common dso_local global i32 0, align 4
@LATCH = common dso_local global i32 0, align 4
@AT91_ST_RTAR = common dso_local global i32 0, align 4
@AT91_ST_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @clkevt32k_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clkevt32k_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %5 = load i32, i32* @AT91_ST_IDR, align 4
  %6 = load i32, i32* @AT91_ST_PITS, align 4
  %7 = load i32, i32* @AT91_ST_ALMS, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @at91_sys_write(i32 %5, i32 %8)
  %10 = load i32, i32* @AT91_ST_SR, align 4
  %11 = call i32 @at91_sys_read(i32 %10)
  %12 = call i32 (...) @read_CRTR()
  store i32 %12, i32* @last_crtr, align 4
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %25 [
    i32 131, label %14
    i32 132, label %19
    i32 129, label %24
    i32 128, label %24
    i32 130, label %24
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @AT91_ST_PITS, align 4
  store i32 %15, i32* @irqmask, align 4
  %16 = load i32, i32* @AT91_ST_PIMR, align 4
  %17 = load i32, i32* @LATCH, align 4
  %18 = call i32 @at91_sys_write(i32 %16, i32 %17)
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @AT91_ST_ALMS, align 4
  store i32 %20, i32* @irqmask, align 4
  %21 = load i32, i32* @AT91_ST_RTAR, align 4
  %22 = load i32, i32* @last_crtr, align 4
  %23 = call i32 @at91_sys_write(i32 %21, i32 %22)
  br label %25

24:                                               ; preds = %2, %2, %2
  store i32 0, i32* @irqmask, align 4
  br label %25

25:                                               ; preds = %2, %24, %19, %14
  %26 = load i32, i32* @AT91_ST_IER, align 4
  %27 = load i32, i32* @irqmask, align 4
  %28 = call i32 @at91_sys_write(i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @at91_sys_write(i32, i32) #1

declare dso_local i32 @at91_sys_read(i32) #1

declare dso_local i32 @read_CRTR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
