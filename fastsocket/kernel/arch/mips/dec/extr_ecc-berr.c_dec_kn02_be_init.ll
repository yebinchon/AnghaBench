; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/dec/extr_ecc-berr.c_dec_kn02_be_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/dec/extr_ecc-berr.c_dec_kn02_be_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KN02_SLOT_BASE = common dso_local global i64 0, align 8
@KN02_CSR = common dso_local global i64 0, align 8
@KN02_ERRADDR = common dso_local global i64 0, align 8
@kn0x_erraddr = common dso_local global i8* null, align 8
@KN02_CHKSYN = common dso_local global i64 0, align 8
@kn0x_chksyn = common dso_local global i8* null, align 8
@KN02_CSR_LEDS = common dso_local global i32 0, align 4
@cached_kn02_csr = common dso_local global i32 0, align 4
@KN02_CSR_DIAGCHK = common dso_local global i32 0, align 4
@KN02_CSR_DIAGGEN = common dso_local global i32 0, align 4
@KN02_CSR_CORRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dec_kn02_be_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec_kn02_be_init() #0 {
  %1 = alloca i32*, align 8
  %2 = load i64, i64* @KN02_SLOT_BASE, align 8
  %3 = load i64, i64* @KN02_CSR, align 8
  %4 = add nsw i64 %2, %3
  %5 = call i64 @CKSEG1ADDR(i64 %4)
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %1, align 8
  %8 = load i64, i64* @KN02_SLOT_BASE, align 8
  %9 = load i64, i64* @KN02_ERRADDR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @CKSEG1ADDR(i64 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** @kn0x_erraddr, align 8
  %13 = load i64, i64* @KN02_SLOT_BASE, align 8
  %14 = load i64, i64* @KN02_CHKSYN, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @CKSEG1ADDR(i64 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** @kn0x_chksyn, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = load volatile i32, i32* %18, align 4
  %20 = load volatile i32, i32* @KN02_CSR_LEDS, align 4
  %21 = or i32 %19, %20
  store volatile i32 %21, i32* @cached_kn02_csr, align 4
  %22 = load volatile i32, i32* @KN02_CSR_DIAGCHK, align 4
  %23 = load volatile i32, i32* @KN02_CSR_DIAGGEN, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load volatile i32, i32* @cached_kn02_csr, align 4
  %27 = and i32 %26, %25
  store volatile i32 %27, i32* @cached_kn02_csr, align 4
  %28 = load volatile i32, i32* @KN02_CSR_CORRECT, align 4
  %29 = load volatile i32, i32* @cached_kn02_csr, align 4
  %30 = or i32 %29, %28
  store volatile i32 %30, i32* @cached_kn02_csr, align 4
  %31 = load volatile i32, i32* @cached_kn02_csr, align 4
  %32 = load i32*, i32** %1, align 8
  store volatile i32 %31, i32* %32, align 4
  %33 = call i32 (...) @iob()
  ret void
}

declare dso_local i64 @CKSEG1ADDR(i64) #1

declare dso_local i32 @iob(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
