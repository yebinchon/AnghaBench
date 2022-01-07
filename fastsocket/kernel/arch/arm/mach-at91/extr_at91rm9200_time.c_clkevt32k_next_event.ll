; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91rm9200_time.c_clkevt32k_next_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91rm9200_time.c_clkevt32k_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@AT91_ST_RTAR = common dso_local global i32 0, align 4
@AT91_ST_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @clkevt32k_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clkevt32k_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %3, align 8
  %9 = icmp ult i64 %8, 2
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @raw_local_irq_save(i64 %12)
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @raw_irqs_disabled_flags(i64 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = call i64 (...) @read_CRTR()
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* @AT91_ST_RTAR, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @at91_sys_write(i32 %21, i64 %22)
  %24 = load i32, i32* @AT91_ST_SR, align 4
  %25 = call i32 @at91_sys_read(i32 %24)
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %6, align 8
  %29 = load i32, i32* @AT91_ST_RTAR, align 4
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @at91_sys_write(i32 %29, i64 %30)
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @raw_local_irq_restore(i64 %32)
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @raw_irqs_disabled_flags(i64) #1

declare dso_local i64 @read_CRTR(...) #1

declare dso_local i32 @at91_sys_write(i32, i64) #1

declare dso_local i32 @at91_sys_read(i32) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
