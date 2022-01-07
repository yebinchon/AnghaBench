; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_cia.c_cia_enable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_cia.c_cia_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_AMIGA_CIAB = common dso_local global i32 0, align 4
@ciab_base = common dso_local global i32 0, align 4
@CIA_ICR_SETCLR = common dso_local global i8 0, align 1
@IRQ_AMIGA_CIAA = common dso_local global i32 0, align 4
@ciaa_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cia_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cia_enable_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @IRQ_AMIGA_CIAB, align 4
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @IRQ_AMIGA_CIAB, align 4
  %10 = sub i32 %8, %9
  %11 = shl i32 1, %10
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %3, align 1
  %13 = load i8, i8* %3, align 1
  %14 = call i32 @cia_set_irq(i32* @ciab_base, i8 zeroext %13)
  %15 = load i8, i8* @CIA_ICR_SETCLR, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %16, %18
  %20 = trunc i32 %19 to i8
  %21 = call i32 @cia_able_irq(i32* @ciab_base, i8 zeroext %20)
  br label %37

22:                                               ; preds = %1
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @IRQ_AMIGA_CIAA, align 4
  %25 = sub i32 %23, %24
  %26 = shl i32 1, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %3, align 1
  %28 = load i8, i8* %3, align 1
  %29 = call i32 @cia_set_irq(i32* @ciaa_base, i8 zeroext %28)
  %30 = load i8, i8* @CIA_ICR_SETCLR, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %3, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  %35 = trunc i32 %34 to i8
  %36 = call i32 @cia_able_irq(i32* @ciaa_base, i8 zeroext %35)
  br label %37

37:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @cia_set_irq(i32*, i8 zeroext) #1

declare dso_local i32 @cia_able_irq(i32*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
