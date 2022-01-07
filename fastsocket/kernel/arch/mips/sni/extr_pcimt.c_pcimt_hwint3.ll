; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sni/extr_pcimt.c_pcimt_hwint3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sni/extr_pcimt.c_pcimt_hwint3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIMT_CSITPEND = common dso_local global i64 0, align 8
@IT_INTA = common dso_local global i8 0, align 1
@IT_INTB = common dso_local global i8 0, align 1
@IT_INTC = common dso_local global i8 0, align 1
@IT_INTD = common dso_local global i8 0, align 1
@IE_IRQ3 = common dso_local global i32 0, align 4
@PCIMT_IRQ_INT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pcimt_hwint3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcimt_hwint3() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = load i64, i64* @PCIMT_CSITPEND, align 8
  %4 = inttoptr i64 %3 to i8*
  %5 = load volatile i8, i8* %4, align 1
  store i8 %5, i8* %1, align 1
  %6 = load i8, i8* @IT_INTA, align 1
  %7 = sext i8 %6 to i32
  %8 = load i8, i8* @IT_INTB, align 1
  %9 = sext i8 %8 to i32
  %10 = or i32 %7, %9
  %11 = load i8, i8* @IT_INTC, align 1
  %12 = sext i8 %11 to i32
  %13 = or i32 %10, %12
  %14 = load i8, i8* @IT_INTD, align 1
  %15 = sext i8 %14 to i32
  %16 = or i32 %13, %15
  %17 = load i8, i8* %1, align 1
  %18 = sext i8 %17 to i32
  %19 = and i32 %18, %16
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %1, align 1
  %21 = load i8, i8* @IT_INTA, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @IT_INTB, align 1
  %24 = sext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = load i8, i8* @IT_INTC, align 1
  %27 = sext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = load i8, i8* @IT_INTD, align 1
  %30 = sext i8 %29 to i32
  %31 = or i32 %28, %30
  %32 = load i8, i8* %1, align 1
  %33 = sext i8 %32 to i32
  %34 = xor i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %1, align 1
  %36 = load i32, i32* @IE_IRQ3, align 4
  %37 = call i32 @clear_c0_status(i32 %36)
  %38 = load i32, i32* @PCIMT_IRQ_INT2, align 4
  %39 = load i8, i8* %1, align 1
  %40 = call i32 @ffs(i8 signext %39)
  %41 = add nsw i32 %38, %40
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @do_IRQ(i32 %43)
  %45 = load i32, i32* @IE_IRQ3, align 4
  %46 = call i32 @set_c0_status(i32 %45)
  ret void
}

declare dso_local i32 @clear_c0_status(i32) #1

declare dso_local i32 @ffs(i8 signext) #1

declare dso_local i32 @do_IRQ(i32) #1

declare dso_local i32 @set_c0_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
