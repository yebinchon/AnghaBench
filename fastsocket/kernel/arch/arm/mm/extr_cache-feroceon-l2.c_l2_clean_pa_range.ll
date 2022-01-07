; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_cache-feroceon-l2.c_l2_clean_pa_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_cache-feroceon-l2.c_l2_clean_pa_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @l2_clean_pa_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_clean_pa_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = xor i64 %8, %9
  %11 = load i64, i64* @PAGE_SHIFT, align 8
  %12 = lshr i64 %10, %11
  %13 = call i32 @BUG_ON(i64 %12)
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @raw_local_irq_save(i64 %14)
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @l2_start_va(i64 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = sub i64 %19, %20
  %22 = add i64 %18, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  call void asm sideeffect "mcr p15, 1, $0, c15, c9, 4\0A\09mcr p15, 1, $1, c15, c9, 5", "r,r,~{dirflag},~{fpsr},~{flags}"(i64 %23, i64 %24) #2, !srcloc !2
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @raw_local_irq_restore(i64 %25)
  ret void
}

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i64 @l2_start_va(i64) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 615, i32 644}
