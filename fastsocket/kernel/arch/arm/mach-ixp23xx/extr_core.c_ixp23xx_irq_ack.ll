; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_core.c_ixp23xx_irq_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_core.c_ixp23xx_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_IXP23XX_GPIO6 = common dso_local global i32 0, align 4
@IXP23XX_GPIO_GPISR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixp23xx_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixp23xx_irq_ack(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @IRQ_IXP23XX_GPIO6, align 4
  %6 = sub i32 %4, %5
  %7 = add i32 %6, 6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 6
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, 15
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %1
  br label %18

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 1, %15
  %17 = load i32*, i32** @IXP23XX_GPIO_GPISR, align 8
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
