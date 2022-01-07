; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/qe_lib/extr_gpio.c_qe_gpio_dir_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/qe_lib/extr_gpio.c_qe_gpio_dir_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.of_mm_gpio_chip = type { i32 }
%struct.qe_gpio_chip = type { i32 }

@QE_PIO_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @qe_gpio_dir_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_gpio_dir_in(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.of_mm_gpio_chip*, align 8
  %6 = alloca %struct.qe_gpio_chip*, align 8
  %7 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.of_mm_gpio_chip* @to_of_mm_gpio_chip(%struct.gpio_chip* %8)
  store %struct.of_mm_gpio_chip* %9, %struct.of_mm_gpio_chip** %5, align 8
  %10 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %5, align 8
  %11 = call %struct.qe_gpio_chip* @to_qe_gpio_chip(%struct.of_mm_gpio_chip* %10)
  store %struct.qe_gpio_chip* %11, %struct.qe_gpio_chip** %6, align 8
  %12 = load %struct.qe_gpio_chip*, %struct.qe_gpio_chip** %6, align 8
  %13 = getelementptr inbounds %struct.qe_gpio_chip, %struct.qe_gpio_chip* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %5, align 8
  %17 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @QE_PIO_DIR_IN, align 4
  %21 = call i32 @__par_io_config_pin(i32 %18, i32 %19, i32 %20, i32 0, i32 0, i32 0)
  %22 = load %struct.qe_gpio_chip*, %struct.qe_gpio_chip** %6, align 8
  %23 = getelementptr inbounds %struct.qe_gpio_chip, %struct.qe_gpio_chip* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  ret i32 0
}

declare dso_local %struct.of_mm_gpio_chip* @to_of_mm_gpio_chip(%struct.gpio_chip*) #1

declare dso_local %struct.qe_gpio_chip* @to_qe_gpio_chip(%struct.of_mm_gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__par_io_config_pin(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
