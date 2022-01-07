; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_clock.c_pllb_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_clock.c_pllb_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@AT91_PMC_LOCKB = common dso_local global i32 0, align 4
@at91_pllb_usb_init = common dso_local global i64 0, align 8
@AT91_CKGR_PLLBR = common dso_local global i32 0, align 4
@AT91_PMC_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*, i32)* @pllb_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pllb_mode(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @AT91_PMC_LOCKB, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* @at91_pllb_usb_init, align 8
  store i64 %10, i64* %5, align 8
  br label %12

11:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i32, i32* @AT91_CKGR_PLLBR, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @at91_sys_write(i32 %13, i64 %14)
  br label %16

16:                                               ; preds = %18, %12
  %17 = call i32 (...) @cpu_relax()
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* @AT91_PMC_SR, align 4
  %20 = call i32 @at91_sys_read(i32 %19)
  %21 = load i32, i32* @AT91_PMC_LOCKB, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %16, label %25

25:                                               ; preds = %18
  ret void
}

declare dso_local i32 @at91_sys_write(i32, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @at91_sys_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
