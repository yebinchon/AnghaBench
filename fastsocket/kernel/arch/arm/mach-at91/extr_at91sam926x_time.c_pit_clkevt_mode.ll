; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91sam926x_time.c_pit_clkevt_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91sam926x_time.c_pit_clkevt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@pit_cycle = common dso_local global i32 0, align 4
@AT91_PIT_PIVR = common dso_local global i32 0, align 4
@pit_cnt = common dso_local global i32 0, align 4
@AT91_PIT_MR = common dso_local global i32 0, align 4
@AT91_PIT_PITEN = common dso_local global i32 0, align 4
@AT91_PIT_PITIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @pit_clkevt_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pit_clkevt_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %37 [
    i32 131, label %7
    i32 132, label %27
    i32 129, label %29
    i32 128, label %29
    i32 130, label %36
  ]

7:                                                ; preds = %2
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @raw_local_irq_save(i64 %8)
  %10 = load i32, i32* @pit_cycle, align 4
  %11 = load i32, i32* @AT91_PIT_PIVR, align 4
  %12 = call i32 @at91_sys_read(i32 %11)
  %13 = call i32 @PIT_PICNT(i32 %12)
  %14 = mul nsw i32 %10, %13
  %15 = load i32, i32* @pit_cnt, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* @pit_cnt, align 4
  %17 = load i32, i32* @AT91_PIT_MR, align 4
  %18 = load i32, i32* @pit_cycle, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* @AT91_PIT_PITEN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @AT91_PIT_PITIEN, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @at91_sys_write(i32 %17, i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @raw_local_irq_restore(i64 %25)
  br label %37

27:                                               ; preds = %2
  %28 = call i32 (...) @BUG()
  br label %29

29:                                               ; preds = %2, %2, %27
  %30 = load i32, i32* @AT91_PIT_MR, align 4
  %31 = load i32, i32* @pit_cycle, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* @AT91_PIT_PITEN, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @at91_sys_write(i32 %30, i32 %34)
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %2, %36, %29, %7
  ret void
}

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @PIT_PICNT(i32) #1

declare dso_local i32 @at91_sys_read(i32) #1

declare dso_local i32 @at91_sys_write(i32, i32) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
