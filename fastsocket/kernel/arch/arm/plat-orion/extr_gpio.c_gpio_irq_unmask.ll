; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-orion/extr_gpio.c_gpio_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-orion/extr_gpio.c_gpio_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@irq_desc = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @gpio_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_irq_unmask(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @irq_to_gpio(i64 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_desc, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %18 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @GPIO_EDGE_MASK(i32 %23)
  br label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @GPIO_LEVEL_MASK(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i64 [ %24, %22 ], [ %27, %25 ]
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @readl(i64 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 31
  %34 = shl i32 1, %33
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %6, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @writel(i64 %38, i64 %39)
  ret void
}

declare dso_local i32 @irq_to_gpio(i64) #1

declare dso_local i64 @GPIO_EDGE_MASK(i32) #1

declare dso_local i64 @GPIO_LEVEL_MASK(i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
