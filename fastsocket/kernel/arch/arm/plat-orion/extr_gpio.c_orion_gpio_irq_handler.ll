; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-orion/extr_gpio.c_orion_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-orion/extr_gpio.c_orion_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @orion_gpio_irq_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @GPIO_DATA_IN(i32 %8)
  %10 = call i32 @readl(i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @GPIO_LEVEL_MASK(i32 %11)
  %13 = call i32 @readl(i32 %12)
  %14 = and i32 %10, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @GPIO_EDGE_CAUSE(i32 %15)
  %17 = call i32 @readl(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @GPIO_EDGE_MASK(i32 %18)
  %20 = call i32 @readl(i32 %19)
  %21 = and i32 %17, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %69, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 8
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @gpio_to_irq(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %33, i64 %35
  store %struct.irq_desc* %36, %struct.irq_desc** %6, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 31
  %40 = shl i32 1, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  br label %69

44:                                               ; preds = %30
  %45 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %46 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @GPIO_IN_POL(i32 %53)
  %55 = call i32 @readl(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 31
  %58 = shl i32 1, %57
  %59 = load i32, i32* %7, align 4
  %60 = xor i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @GPIO_IN_POL(i32 %62)
  %64 = call i32 @writel(i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %52, %44
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %68 = call i32 @desc_handle_irq(i32 %66, %struct.irq_desc* %67)
  br label %69

69:                                               ; preds = %65, %43
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %25

72:                                               ; preds = %25
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @GPIO_DATA_IN(i32) #1

declare dso_local i32 @GPIO_LEVEL_MASK(i32) #1

declare dso_local i32 @GPIO_EDGE_CAUSE(i32) #1

declare dso_local i32 @GPIO_EDGE_MASK(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @GPIO_IN_POL(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @desc_handle_irq(i32, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
