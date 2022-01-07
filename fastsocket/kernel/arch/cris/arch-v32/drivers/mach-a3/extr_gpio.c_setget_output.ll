; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_setget_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_setget_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_private = type { i64 }

@gpio_lock = common dso_local global i32 0, align 4
@dir_oe = common dso_local global i32* null, align 8
@changeable_dir = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gpio_private*, i64)* @setget_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @setget_output(%struct.gpio_private* %0, i64 %1) #0 {
  %3 = alloca %struct.gpio_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.gpio_private* %0, %struct.gpio_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %7)
  %9 = load i32*, i32** @dir_oe, align 8
  %10 = load %struct.gpio_private*, %struct.gpio_private** %3, align 8
  %11 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @readl(i32 %14)
  %16 = load i64, i64* %4, align 8
  %17 = load i64*, i64** @changeable_dir, align 8
  %18 = load %struct.gpio_private*, %struct.gpio_private** %3, align 8
  %19 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %16, %22
  %24 = or i64 %15, %23
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32*, i32** @dir_oe, align 8
  %27 = load %struct.gpio_private*, %struct.gpio_private** %3, align 8
  %28 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @writel(i64 %25, i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %33)
  %35 = load i64, i64* %6, align 8
  ret i64 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
