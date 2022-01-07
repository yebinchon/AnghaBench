; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/txx9/jmr3927/extr_irq.c_mask_irq_ioc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/txx9/jmr3927/extr_irq.c_mask_irq_ioc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JMR3927_IRQ_IOC = common dso_local global i32 0, align 4
@JMR3927_IOC_INTM_ADDR = common dso_local global i32 0, align 4
@JMR3927_IOC_REV_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mask_irq_ioc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mask_irq_ioc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @JMR3927_IRQ_IOC, align 4
  %8 = sub i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @JMR3927_IOC_INTM_ADDR, align 4
  %10 = call zeroext i8 @jmr3927_ioc_reg_in(i32 %9)
  store i8 %10, i8* %4, align 1
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %5, align 4
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = load i32, i32* %5, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* @JMR3927_IOC_INTM_ADDR, align 4
  %20 = call i32 @jmr3927_ioc_reg_out(i8 zeroext %18, i32 %19)
  %21 = load i32, i32* @JMR3927_IOC_REV_ADDR, align 4
  %22 = call zeroext i8 @jmr3927_ioc_reg_in(i32 %21)
  ret void
}

declare dso_local zeroext i8 @jmr3927_ioc_reg_in(i32) #1

declare dso_local i32 @jmr3927_ioc_reg_out(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
