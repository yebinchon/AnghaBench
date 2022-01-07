; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_core.c_ixp23xx_gettimeoffset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_core.c_ixp23xx_gettimeoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IXP23XX_TIMER_CONT = common dso_local global i64* null, align 8
@next_jiffy_time = common dso_local global i64 0, align 8
@LATCH = common dso_local global i64 0, align 8
@CLOCK_TICKS_PER_USEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @ixp23xx_gettimeoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixp23xx_gettimeoffset() #0 {
  %1 = alloca i64, align 8
  %2 = load i64*, i64** @IXP23XX_TIMER_CONT, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @next_jiffy_time, align 8
  %5 = load i64, i64* @LATCH, align 8
  %6 = sub i64 %4, %5
  %7 = sub i64 %3, %6
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @CLOCK_TICKS_PER_USEC, align 8
  %10 = udiv i64 %8, %9
  ret i64 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
