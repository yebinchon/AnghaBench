; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_core.c_ixp2000_GPIO_irq_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_core.c_ixp2000_GPIO_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_IXP2000_GPIO0 = common dso_local global i32 0, align 4
@IXP2000_GPIO_PDCR = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@GPIO_IRQ_falling_edge = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@GPIO_IRQ_rising_edge = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@GPIO_IRQ_level_low = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@GPIO_IRQ_level_high = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ixp2000_GPIO_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp2000_GPIO_irq_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @IRQ_IXP2000_GPIO0, align 4
  %8 = sub i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @IXP2000_GPIO_PDCR, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 1, %10
  %12 = call i32 @ixp2000_reg_write(i32 %9, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* @GPIO_IRQ_falling_edge, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* @GPIO_IRQ_falling_edge, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 1, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @GPIO_IRQ_falling_edge, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* @GPIO_IRQ_falling_edge, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* @GPIO_IRQ_rising_edge, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* @GPIO_IRQ_rising_edge, align 4
  br label %44

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* @GPIO_IRQ_rising_edge, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* @GPIO_IRQ_rising_edge, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* @GPIO_IRQ_level_low, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* @GPIO_IRQ_level_low, align 4
  br label %60

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = shl i32 1, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* @GPIO_IRQ_level_low, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* @GPIO_IRQ_level_low, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* @GPIO_IRQ_level_high, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* @GPIO_IRQ_level_high, align 4
  br label %76

70:                                               ; preds = %60
  %71 = load i32, i32* %5, align 4
  %72 = shl i32 1, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* @GPIO_IRQ_level_high, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* @GPIO_IRQ_level_high, align 4
  br label %76

76:                                               ; preds = %70, %65
  %77 = call i32 (...) @update_gpio_int_csrs()
  ret i32 0
}

declare dso_local i32 @ixp2000_reg_write(i32, i32) #1

declare dso_local i32 @update_gpio_int_csrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
