; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91rm9200.c_at91rm9200_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_at91rm9200.c_at91rm9200_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AT91_ST_WDMR = common dso_local global i32 0, align 4
@AT91_ST_RSTEN = common dso_local global i32 0, align 4
@AT91_ST_EXTEN = common dso_local global i32 0, align 4
@AT91_ST_CR = common dso_local global i32 0, align 4
@AT91_ST_WDRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @at91rm9200_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91rm9200_reset() #0 {
  %1 = load i32, i32* @AT91_ST_WDMR, align 4
  %2 = load i32, i32* @AT91_ST_RSTEN, align 4
  %3 = load i32, i32* @AT91_ST_EXTEN, align 4
  %4 = or i32 %2, %3
  %5 = or i32 %4, 1
  %6 = call i32 @at91_sys_write(i32 %1, i32 %5)
  %7 = load i32, i32* @AT91_ST_CR, align 4
  %8 = load i32, i32* @AT91_ST_WDRST, align 4
  %9 = call i32 @at91_sys_write(i32 %7, i32 %8)
  ret void
}

declare dso_local i32 @at91_sys_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
