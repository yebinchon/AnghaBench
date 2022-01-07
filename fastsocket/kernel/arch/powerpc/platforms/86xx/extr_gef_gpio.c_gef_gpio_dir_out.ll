; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/86xx/extr_gef_gpio.c_gef_gpio_dir_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/86xx/extr_gef_gpio.c_gef_gpio_dir_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.of_mm_gpio_chip = type { i64 }

@GEF_GPIO_OUT = common dso_local global i64 0, align 8
@GEF_GPIO_DIRECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @gef_gpio_dir_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gef_gpio_dir_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.of_mm_gpio_chip*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.of_mm_gpio_chip* @to_of_mm_gpio_chip(%struct.gpio_chip* %9)
  store %struct.of_mm_gpio_chip* %10, %struct.of_mm_gpio_chip** %8, align 8
  %11 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %8, align 8
  %12 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @GEF_GPIO_OUT, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @_gef_gpio_set(i64 %15, i32 %16, i32 %17)
  %19 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %8, align 8
  %20 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GEF_GPIO_DIRECT, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @ioread32be(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %25, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %8, align 8
  %32 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GEF_GPIO_DIRECT, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @iowrite32be(i32 %30, i64 %35)
  ret i32 0
}

declare dso_local %struct.of_mm_gpio_chip* @to_of_mm_gpio_chip(%struct.gpio_chip*) #1

declare dso_local i32 @_gef_gpio_set(i64, i32, i32) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
