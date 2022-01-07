; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_cia.c_cia_disable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_cia.c_cia_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_AMIGA_CIAB = common dso_local global i32 0, align 4
@ciab_base = common dso_local global i32 0, align 4
@ciaa_base = common dso_local global i32 0, align 4
@IRQ_AMIGA_CIAA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cia_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cia_disable_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @IRQ_AMIGA_CIAB, align 4
  %5 = icmp uge i32 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @IRQ_AMIGA_CIAB, align 4
  %9 = sub i32 %7, %8
  %10 = shl i32 1, %9
  %11 = call i32 @cia_able_irq(i32* @ciab_base, i32 %10)
  br label %18

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @IRQ_AMIGA_CIAA, align 4
  %15 = sub i32 %13, %14
  %16 = shl i32 1, %15
  %17 = call i32 @cia_able_irq(i32* @ciaa_base, i32 %16)
  br label %18

18:                                               ; preds = %12, %6
  ret void
}

declare dso_local i32 @cia_able_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
