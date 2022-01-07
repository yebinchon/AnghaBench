; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_core.c_ep93xx_gpio_ab_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_core.c_ep93xx_gpio_ab_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@EP93XX_GPIO_A_INT_STATUS = common dso_local global i32 0, align 4
@EP93XX_GPIO_B_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @ep93xx_gpio_ab_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_gpio_ab_irq_handler(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %9 = load i32, i32* @EP93XX_GPIO_A_INT_STATUS, align 4
  %10 = call zeroext i8 @__raw_readb(i32 %9)
  store i8 %10, i8* %5, align 1
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %29, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = call i32 @EP93XX_GPIO_LINE_A(i32 0)
  %23 = call i32 @gpio_to_irq(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @generic_handle_irq(i32 %26)
  br label %28

28:                                               ; preds = %21, %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load i32, i32* @EP93XX_GPIO_B_INT_STATUS, align 4
  %34 = call zeroext i8 @__raw_readb(i32 %33)
  store i8 %34, i8* %5, align 1
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %53, %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* %6, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = call i32 @EP93XX_GPIO_LINE_B(i32 0)
  %47 = call i32 @gpio_to_irq(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @generic_handle_irq(i32 %50)
  br label %52

52:                                               ; preds = %45, %38
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %35

56:                                               ; preds = %35
  ret void
}

declare dso_local zeroext i8 @__raw_readb(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @EP93XX_GPIO_LINE_A(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @EP93XX_GPIO_LINE_B(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
