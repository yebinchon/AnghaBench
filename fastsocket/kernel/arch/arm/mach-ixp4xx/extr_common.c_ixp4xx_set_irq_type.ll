; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_common.c_ixp4xx_set_irq_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_common.c_ixp4xx_set_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@irq2gpio = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IXP4XX_GPIO_STYLE_TRANSITIONAL = common dso_local global i32 0, align 4
@IXP4XX_IRQ_EDGE = common dso_local global i32 0, align 4
@IXP4XX_GPIO_STYLE_RISING_EDGE = common dso_local global i32 0, align 4
@IXP4XX_GPIO_STYLE_FALLING_EDGE = common dso_local global i32 0, align 4
@IXP4XX_GPIO_STYLE_ACTIVE_HIGH = common dso_local global i32 0, align 4
@IXP4XX_IRQ_LEVEL = common dso_local global i32 0, align 4
@IXP4XX_GPIO_STYLE_ACTIVE_LOW = common dso_local global i32 0, align 4
@ixp4xx_irq_edge = common dso_local global i32 0, align 4
@IXP4XX_GPIO_GPIT2R = common dso_local global i32* null, align 8
@IXP4XX_GPIO_GPIT1R = common dso_local global i32* null, align 8
@IXP4XX_GPIO_STYLE_CLEAR = common dso_local global i32 0, align 4
@IXP4XX_GPIO_STYLE_SIZE = common dso_local global i32 0, align 4
@IXP4XX_GPIO_GPISR = common dso_local global i32* null, align 8
@IXP4XX_GPIO_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ixp4xx_set_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp4xx_set_irq_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** @irq2gpio, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %92

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %37 [
    i32 132, label %22
    i32 130, label %25
    i32 131, label %28
    i32 129, label %31
    i32 128, label %34
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @IXP4XX_GPIO_STYLE_TRANSITIONAL, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @IXP4XX_IRQ_EDGE, align 4
  store i32 %24, i32* %8, align 4
  br label %40

25:                                               ; preds = %20
  %26 = load i32, i32* @IXP4XX_GPIO_STYLE_RISING_EDGE, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @IXP4XX_IRQ_EDGE, align 4
  store i32 %27, i32* %8, align 4
  br label %40

28:                                               ; preds = %20
  %29 = load i32, i32* @IXP4XX_GPIO_STYLE_FALLING_EDGE, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @IXP4XX_IRQ_EDGE, align 4
  store i32 %30, i32* %8, align 4
  br label %40

31:                                               ; preds = %20
  %32 = load i32, i32* @IXP4XX_GPIO_STYLE_ACTIVE_HIGH, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @IXP4XX_IRQ_LEVEL, align 4
  store i32 %33, i32* %8, align 4
  br label %40

34:                                               ; preds = %20
  %35 = load i32, i32* @IXP4XX_GPIO_STYLE_ACTIVE_LOW, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @IXP4XX_IRQ_LEVEL, align 4
  store i32 %36, i32* %8, align 4
  br label %40

37:                                               ; preds = %20
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %92

40:                                               ; preds = %34, %31, %28, %25, %22
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @IXP4XX_IRQ_EDGE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* @ixp4xx_irq_edge, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* @ixp4xx_irq_edge, align 4
  br label %55

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = shl i32 1, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* @ixp4xx_irq_edge, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* @ixp4xx_irq_edge, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %6, align 4
  %57 = icmp sge i32 %56, 8
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 8
  store i32 %60, i32* %6, align 4
  %61 = load i32*, i32** @IXP4XX_GPIO_GPIT2R, align 8
  store i32* %61, i32** %9, align 8
  br label %64

62:                                               ; preds = %55
  %63 = load i32*, i32** @IXP4XX_GPIO_GPIT1R, align 8
  store i32* %63, i32** %9, align 8
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* @IXP4XX_GPIO_STYLE_CLEAR, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @IXP4XX_GPIO_STYLE_SIZE, align 4
  %68 = mul nsw i32 %66, %67
  %69 = shl i32 %65, %68
  %70 = xor i32 %69, -1
  %71 = load i32*, i32** %9, align 8
  %72 = load volatile i32, i32* %71, align 4
  %73 = and i32 %72, %70
  store volatile i32 %73, i32* %71, align 4
  %74 = load i32, i32* %6, align 4
  %75 = shl i32 1, %74
  %76 = load i32*, i32** @IXP4XX_GPIO_GPISR, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @IXP4XX_GPIO_STYLE_SIZE, align 4
  %80 = mul nsw i32 %78, %79
  %81 = shl i32 %77, %80
  %82 = load i32*, i32** %9, align 8
  %83 = load volatile i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store volatile i32 %84, i32* %82, align 4
  %85 = load i32*, i32** @irq2gpio, align 8
  %86 = load i32, i32* %4, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IXP4XX_GPIO_IN, align 4
  %91 = call i32 @gpio_line_config(i32 %89, i32 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %64, %37, %17
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @gpio_line_config(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
