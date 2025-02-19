; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_pca953x.c_pca953x_setup_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_pca953x.c_pca953x_setup_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca953x_chip = type { i32, %struct.TYPE_2__*, i32, %struct.gpio_chip }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gpio_chip = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@pca953x_gpio_direction_input = common dso_local global i32 0, align 4
@pca953x_gpio_direction_output = common dso_local global i32 0, align 4
@pca953x_gpio_get_value = common dso_local global i32 0, align 4
@pca953x_gpio_set_value = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pca953x_chip*, i32)* @pca953x_setup_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pca953x_setup_gpio(%struct.pca953x_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.pca953x_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  store %struct.pca953x_chip* %0, %struct.pca953x_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %7 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %6, i32 0, i32 3
  store %struct.gpio_chip* %7, %struct.gpio_chip** %5, align 8
  %8 = load i32, i32* @pca953x_gpio_direction_input, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %10 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 10
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @pca953x_gpio_direction_output, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @pca953x_gpio_get_value, align 4
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %16 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @pca953x_gpio_set_value, align 4
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %23 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %31 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %36 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %38 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %42 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %41, i32 0, i32 4
  store i32* %40, i32** %42, align 8
  %43 = load i32, i32* @THIS_MODULE, align 4
  %44 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %45 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %47 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %50 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
