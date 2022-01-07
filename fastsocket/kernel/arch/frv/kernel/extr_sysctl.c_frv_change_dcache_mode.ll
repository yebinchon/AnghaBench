; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_sysctl.c_frv_change_dcache_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_sysctl.c_frv_change_dcache_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HSR0_DCE = common dso_local global i64 0, align 8
@HSR0_CBM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @frv_change_dcache_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frv_change_dcache_mode(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @local_irq_save(i64 %5)
  %7 = call i64 @__get_HSR(i32 0)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* @HSR0_DCE, align 8
  %9 = xor i64 %8, -1
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, %9
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @__set_HSR(i32 0, i64 %12)
  call void asm sideeffect "\09dcef\09@(gr0,gr0),#1\09\0A\09membar\09\09\09\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @HSR0_CBM, align 8
  %16 = xor i64 %15, -1
  %17 = and i64 %14, %16
  %18 = load i64, i64* %2, align 8
  %19 = or i64 %17, %18
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @__set_HSR(i32 0, i64 %20)
  %22 = load i64, i64* @HSR0_DCE, align 8
  %23 = load i64, i64* %4, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @__set_HSR(i32 0, i64 %25)
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @local_irq_restore(i64 %27)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @__get_HSR(i32) #1

declare dso_local i32 @__set_HSR(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 551, i32 584}
