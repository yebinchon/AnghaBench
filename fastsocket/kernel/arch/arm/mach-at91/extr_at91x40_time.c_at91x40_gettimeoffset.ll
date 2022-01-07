; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91x40_time.c_at91x40_gettimeoffset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91x40_time.c_at91x40_gettimeoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AT91_TC = common dso_local global i64 0, align 8
@AT91_TC_CLK1BASE = common dso_local global i64 0, align 8
@AT91_TC_CV = common dso_local global i64 0, align 8
@AT91X40_MASTER_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @at91x40_gettimeoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @at91x40_gettimeoffset() #0 {
  %1 = load i64, i64* @AT91_TC, align 8
  %2 = load i64, i64* @AT91_TC_CLK1BASE, align 8
  %3 = add nsw i64 %1, %2
  %4 = load i64, i64* @AT91_TC_CV, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @at91_sys_read(i64 %5)
  %7 = mul nsw i32 %6, 1000000
  %8 = load i32, i32* @AT91X40_MASTER_CLOCK, align 4
  %9 = sdiv i32 %8, 128
  %10 = sdiv i32 %7, %9
  %11 = sext i32 %10 to i64
  ret i64 %11
}

declare dso_local i32 @at91_sys_read(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
