; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_sh_gpio_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_sh_gpio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pinmux_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@gpio_lock = common dso_local global i32 0, align 4
@PINMUX_FLAG_TYPE = common dso_local global i32 0, align 4
@GPIO_CFG_FREE = common dso_local global i32 0, align 4
@PINMUX_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32)* @sh_gpio_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_gpio_free(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinmux_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.pinmux_info* @chip_to_pinmux(%struct.gpio_chip* %8)
  store %struct.pinmux_info* %9, %struct.pinmux_info** %5, align 8
  %10 = load %struct.pinmux_info*, %struct.pinmux_info** %5, align 8
  %11 = icmp ne %struct.pinmux_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %54

13:                                               ; preds = %2
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %14)
  %16 = load %struct.pinmux_info*, %struct.pinmux_info** %5, align 8
  %17 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PINMUX_FLAG_TYPE, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.pinmux_info*, %struct.pinmux_info** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @GPIO_CFG_FREE, align 4
  %30 = call i32 @pinmux_config_gpio(%struct.pinmux_info* %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @PINMUX_FLAG_TYPE, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.pinmux_info*, %struct.pinmux_info** %5, align 8
  %34 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %32
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @PINMUX_TYPE_NONE, align 4
  %43 = load %struct.pinmux_info*, %struct.pinmux_info** %5, align 8
  %44 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %42
  store i32 %51, i32* %49, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %52)
  br label %54

54:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.pinmux_info* @chip_to_pinmux(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pinmux_config_gpio(%struct.pinmux_info*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
