; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_irq.c_sa1100_gpio_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_irq.c_sa1100_gpio_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_TYPE_PROBE = common dso_local global i32 0, align 4
@GPIO_IRQ_rising_edge = common dso_local global i32 0, align 4
@GPIO_IRQ_falling_edge = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@GPIO_IRQ_mask = common dso_local global i32 0, align 4
@GRER = common dso_local global i32 0, align 4
@GFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sa1100_gpio_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_gpio_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ule i32 %7, 10
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %6, align 4
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @GPIO11_27_MASK(i32 %13)
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IRQ_TYPE_PROBE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32, i32* @GPIO_IRQ_rising_edge, align 4
  %21 = load i32, i32* @GPIO_IRQ_falling_edge, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %66

27:                                               ; preds = %19
  %28 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %29 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %15
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @GPIO_IRQ_rising_edge, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @GPIO_IRQ_rising_edge, align 4
  br label %45

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* @GPIO_IRQ_rising_edge, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* @GPIO_IRQ_rising_edge, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @GPIO_IRQ_falling_edge, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* @GPIO_IRQ_falling_edge, align 4
  br label %59

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* @GPIO_IRQ_falling_edge, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* @GPIO_IRQ_falling_edge, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* @GPIO_IRQ_rising_edge, align 4
  %61 = load i32, i32* @GPIO_IRQ_mask, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* @GRER, align 4
  %63 = load i32, i32* @GPIO_IRQ_falling_edge, align 4
  %64 = load i32, i32* @GPIO_IRQ_mask, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* @GFER, align 4
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %26
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @GPIO11_27_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
