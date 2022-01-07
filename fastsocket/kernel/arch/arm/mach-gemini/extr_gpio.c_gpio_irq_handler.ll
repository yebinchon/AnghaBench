; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-gemini/extr_gpio.c_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-gemini/extr_gpio.c_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, %struct.TYPE_3__*)* }
%struct.irq_desc = type { i32 }

@GPIO_INT_STAT = common dso_local global i64 0, align 8
@GPIO_IRQ_BASE = common dso_local global i32 0, align 4
@irq_desc = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @gpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_irq_handler(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @get_irq_data(i32 %8)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @GPIO_BASE(i32 %11)
  %13 = load i64, i64* @GPIO_INT_STAT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @__raw_readl(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @GPIO_IRQ_BASE, align 4
  %17 = load i32, i32* %7, align 4
  %18 = mul i32 %17, 32
  %19 = add i32 %16, %18
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %51, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %51

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_desc, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (i32, %struct.TYPE_3__*)*, i32 (i32, %struct.TYPE_3__*)** %33, align 8
  %35 = icmp ne i32 (i32, %struct.TYPE_3__*)* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_desc, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (i32, %struct.TYPE_3__*)*, i32 (i32, %struct.TYPE_3__*)** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_desc, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = call i32 %44(i32 %45, %struct.TYPE_3__* %49)
  br label %51

51:                                               ; preds = %28, %27
  %52 = load i32, i32* %6, align 4
  %53 = lshr i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %20

56:                                               ; preds = %20
  ret void
}

declare dso_local i64 @get_irq_data(i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i64 @GPIO_BASE(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
