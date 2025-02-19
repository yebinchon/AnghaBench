; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_core.c_ixp2000_GPIO_irq_mask_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_core.c_ixp2000_GPIO_irq_mask_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IXP2000_GPIO_INCR = common dso_local global i32 0, align 4
@IRQ_IXP2000_GPIO0 = common dso_local global i32 0, align 4
@IXP2000_GPIO_EDSR = common dso_local global i32 0, align 4
@IXP2000_GPIO_LDSR = common dso_local global i32 0, align 4
@IXP2000_GPIO_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixp2000_GPIO_irq_mask_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixp2000_GPIO_irq_mask_ack(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @IXP2000_GPIO_INCR, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @IRQ_IXP2000_GPIO0, align 4
  %6 = sub i32 %4, %5
  %7 = shl i32 1, %6
  %8 = call i32 @ixp2000_reg_write(i32 %3, i32 %7)
  %9 = load i32, i32* @IXP2000_GPIO_EDSR, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @IRQ_IXP2000_GPIO0, align 4
  %12 = sub i32 %10, %11
  %13 = shl i32 1, %12
  %14 = call i32 @ixp2000_reg_write(i32 %9, i32 %13)
  %15 = load i32, i32* @IXP2000_GPIO_LDSR, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @IRQ_IXP2000_GPIO0, align 4
  %18 = sub i32 %16, %17
  %19 = shl i32 1, %18
  %20 = call i32 @ixp2000_reg_write(i32 %15, i32 %19)
  %21 = load i32, i32* @IXP2000_GPIO_INST, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @IRQ_IXP2000_GPIO0, align 4
  %24 = sub i32 %22, %23
  %25 = shl i32 1, %24
  %26 = call i32 @ixp2000_reg_wrb(i32 %21, i32 %25)
  ret void
}

declare dso_local i32 @ixp2000_reg_write(i32, i32) #1

declare dso_local i32 @ixp2000_reg_wrb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
