; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-gemini/extr_gpio.c_gpio_set_irq_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-gemini/extr_gpio.c_gpio_set_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_INT_TYPE = common dso_local global i64 0, align 8
@GPIO_INT_BOTH_EDGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gpio_set_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_set_irq_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @irq_to_gpio(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = urem i32 %14, 32
  %16 = shl i32 1, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = udiv i32 %17, 32
  %19 = call i32 @GPIO_BASE(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* @GPIO_INT_TYPE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @__raw_readl(i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* @GPIO_INT_BOTH_EDGE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @__raw_readl(i64 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* @GPIO_INT_BOTH_EDGE, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @__raw_readl(i64 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %84 [
    i32 132, label %36
    i32 130, label %44
    i32 131, label %57
    i32 129, label %69
    i32 128, label %77
  ]

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %87

44:                                               ; preds = %2
  %45 = load i32, i32* %7, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %7, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %87

57:                                               ; preds = %2
  %58 = load i32, i32* %7, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %87

69:                                               ; preds = %2
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %7, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %87

77:                                               ; preds = %2
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %87

84:                                               ; preds = %2
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %108

87:                                               ; preds = %77, %69, %57, %44, %36
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = load i64, i64* @GPIO_INT_TYPE, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @__raw_writel(i32 %88, i64 %92)
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = load i64, i64* @GPIO_INT_BOTH_EDGE, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @__raw_writel(i32 %94, i64 %98)
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = load i64, i64* @GPIO_INT_BOTH_EDGE, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @__raw_writel(i32 %100, i64 %104)
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @gpio_ack_irq(i32 %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %87, %84
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @irq_to_gpio(i32) #1

declare dso_local i32 @GPIO_BASE(i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @gpio_ack_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
