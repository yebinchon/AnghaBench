; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_gpio.c_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_gpio.c_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32)* }
%struct.u300_gpio_port = type { i32 }

@virtbase = common dso_local global i64 0, align 8
@U300_GPIO_PXIEV = common dso_local global i64 0, align 8
@U300_GPIO_PORTX_SPACING = common dso_local global i32 0, align 4
@U300_GPIO_PXIEV_ALL_IRQ_EVENT_MASK = common dso_local global i32 0, align 4
@gpio_pin = common dso_local global %struct.TYPE_2__* null, align 8
@gpiodev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"stray GPIO IRQ on line %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.u300_gpio_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.u300_gpio_port*
  store %struct.u300_gpio_port* %10, %struct.u300_gpio_port** %5, align 8
  %11 = load i64, i64* @virtbase, align 8
  %12 = load i64, i64* @U300_GPIO_PXIEV, align 8
  %13 = add nsw i64 %11, %12
  %14 = load %struct.u300_gpio_port*, %struct.u300_gpio_port** %5, align 8
  %15 = getelementptr inbounds %struct.u300_gpio_port, %struct.u300_gpio_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %13, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i64, i64* @virtbase, align 8
  %23 = load i64, i64* @U300_GPIO_PXIEV, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.u300_gpio_port*, %struct.u300_gpio_port** %5, align 8
  %26 = getelementptr inbounds %struct.u300_gpio_port, %struct.u300_gpio_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %24, %30
  %32 = call i32 @readl(i64 %31)
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @U300_GPIO_PXIEV_ALL_IRQ_EVENT_MASK, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i64, i64* @virtbase, align 8
  %40 = load i64, i64* @U300_GPIO_PXIEV, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.u300_gpio_port*, %struct.u300_gpio_port** %5, align 8
  %43 = getelementptr inbounds %struct.u300_gpio_port, %struct.u300_gpio_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %41, %47
  %49 = call i32 @writel(i32 %38, i64 %48)
  br label %50

50:                                               ; preds = %92, %2
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @__ffs(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 1, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.u300_gpio_port*, %struct.u300_gpio_port** %5, align 8
  %62 = getelementptr inbounds %struct.u300_gpio_port, %struct.u300_gpio_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 3
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gpio_pin, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32 (i32)*, i32 (i32)** %71, align 8
  %73 = icmp ne i32 (i32)* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %53
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gpio_pin, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32 (i32)*, i32 (i32)** %79, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gpio_pin, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 %80(i32 %86)
  br label %92

88:                                               ; preds = %53
  %89 = load i32, i32* @gpiodev, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %74
  br label %50

93:                                               ; preds = %50
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %94
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
