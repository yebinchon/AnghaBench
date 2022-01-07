; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_core.c_ixp23xx_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_core.c_ixp23xx_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_IXP23XX_GPIO6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IXP23XX_GPIO_STYLE_TRANSITIONAL = common dso_local global i32 0, align 4
@IXP23XX_IRQ_EDGE = common dso_local global i32 0, align 4
@IXP23XX_GPIO_STYLE_RISING_EDGE = common dso_local global i32 0, align 4
@IXP23XX_GPIO_STYLE_FALLING_EDGE = common dso_local global i32 0, align 4
@IXP23XX_GPIO_STYLE_ACTIVE_HIGH = common dso_local global i32 0, align 4
@IXP23XX_IRQ_LEVEL = common dso_local global i32 0, align 4
@IXP23XX_GPIO_STYLE_ACTIVE_LOW = common dso_local global i32 0, align 4
@IXP23XX_GPIO_GPIT2R = common dso_local global i64 0, align 8
@IXP23XX_GPIO_GPIT1R = common dso_local global i64 0, align 8
@IXP23XX_GPIO_GPISR = common dso_local global i32* null, align 8
@IXP23XX_GPIO_STYLE_MASK = common dso_local global i32 0, align 4
@IXP23XX_GPIO_STYLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ixp23xx_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp23xx_irq_set_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IRQ_IXP23XX_GPIO6, align 4
  %12 = sub i32 %10, %11
  %13 = add i32 %12, 6
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 15
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %77

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %39 [
    i32 132, label %24
    i32 130, label %27
    i32 131, label %30
    i32 129, label %33
    i32 128, label %36
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @IXP23XX_GPIO_STYLE_TRANSITIONAL, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @IXP23XX_IRQ_EDGE, align 4
  store i32 %26, i32* %8, align 4
  br label %42

27:                                               ; preds = %22
  %28 = load i32, i32* @IXP23XX_GPIO_STYLE_RISING_EDGE, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @IXP23XX_IRQ_EDGE, align 4
  store i32 %29, i32* %8, align 4
  br label %42

30:                                               ; preds = %22
  %31 = load i32, i32* @IXP23XX_GPIO_STYLE_FALLING_EDGE, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @IXP23XX_IRQ_EDGE, align 4
  store i32 %32, i32* %8, align 4
  br label %42

33:                                               ; preds = %22
  %34 = load i32, i32* @IXP23XX_GPIO_STYLE_ACTIVE_HIGH, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @IXP23XX_IRQ_LEVEL, align 4
  store i32 %35, i32* %8, align 4
  br label %42

36:                                               ; preds = %22
  %37 = load i32, i32* @IXP23XX_GPIO_STYLE_ACTIVE_LOW, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @IXP23XX_IRQ_LEVEL, align 4
  store i32 %38, i32* %8, align 4
  br label %42

39:                                               ; preds = %22
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %77

42:                                               ; preds = %36, %33, %30, %27, %24
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ixp23xx_config_irq(i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp sge i32 %46, 8
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 8
  store i32 %50, i32* %6, align 4
  %51 = load i64, i64* @IXP23XX_GPIO_GPIT2R, align 8
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %9, align 8
  br label %56

53:                                               ; preds = %42
  %54 = load i64, i64* @IXP23XX_GPIO_GPIT1R, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %9, align 8
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 1, %57
  %59 = load i32*, i32** @IXP23XX_GPIO_GPISR, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @IXP23XX_GPIO_STYLE_MASK, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @IXP23XX_GPIO_STYLE_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  %64 = shl i32 %60, %63
  %65 = xor i32 %64, -1
  %66 = load i32*, i32** %9, align 8
  %67 = load volatile i32, i32* %66, align 4
  %68 = and i32 %67, %65
  store volatile i32 %68, i32* %66, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @IXP23XX_GPIO_STYLE_SIZE, align 4
  %72 = mul nsw i32 %70, %71
  %73 = shl i32 %69, %72
  %74 = load i32*, i32** %9, align 8
  %75 = load volatile i32, i32* %74, align 4
  %76 = or i32 %75, %73
  store volatile i32 %76, i32* %74, align 4
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %56, %39, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @ixp23xx_config_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
