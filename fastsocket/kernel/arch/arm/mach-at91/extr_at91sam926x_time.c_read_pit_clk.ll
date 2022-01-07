; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91sam926x_time.c_read_pit_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91sam926x_time.c_read_pit_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }

@pit_cnt = common dso_local global i32 0, align 4
@AT91_PIT_PIIR = common dso_local global i32 0, align 4
@pit_cycle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocksource*)* @read_pit_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pit_clk(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @raw_local_irq_save(i64 %6)
  %8 = load i32, i32* @pit_cnt, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @AT91_PIT_PIIR, align 4
  %10 = call i32 @at91_sys_read(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @raw_local_irq_restore(i64 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @PIT_PICNT(i32 %13)
  %15 = load i32, i32* @pit_cycle, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @PIT_CPIV(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @at91_sys_read(i32) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

declare dso_local i32 @PIT_PICNT(i32) #1

declare dso_local i64 @PIT_CPIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
