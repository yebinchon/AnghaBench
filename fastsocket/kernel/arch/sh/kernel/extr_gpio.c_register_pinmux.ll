; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_register_pinmux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_register_pinmux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_info = type { i64, i64, i32, %struct.gpio_chip }
%struct.gpio_chip = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"sh pinmux: %s handling gpio %d -> %d\0A\00", align 1
@sh_gpio_request = common dso_local global i32 0, align 4
@sh_gpio_free = common dso_local global i32 0, align 4
@sh_gpio_direction_input = common dso_local global i32 0, align 4
@sh_gpio_get = common dso_local global i32 0, align 4
@sh_gpio_direction_output = common dso_local global i32 0, align 4
@sh_gpio_set = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_pinmux(%struct.pinmux_info* %0) #0 {
  %2 = alloca %struct.pinmux_info*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  store %struct.pinmux_info* %0, %struct.pinmux_info** %2, align 8
  %4 = load %struct.pinmux_info*, %struct.pinmux_info** %2, align 8
  %5 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %4, i32 0, i32 3
  store %struct.gpio_chip* %5, %struct.gpio_chip** %3, align 8
  %6 = load %struct.pinmux_info*, %struct.pinmux_info** %2, align 8
  %7 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.pinmux_info*, %struct.pinmux_info** %2, align 8
  %10 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.pinmux_info*, %struct.pinmux_info** %2, align 8
  %13 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %11, i64 %14)
  %16 = load %struct.pinmux_info*, %struct.pinmux_info** %2, align 8
  %17 = call i32 @setup_data_regs(%struct.pinmux_info* %16)
  %18 = load i32, i32* @sh_gpio_request, align 4
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @sh_gpio_free, align 4
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @sh_gpio_direction_input, align 4
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @sh_gpio_get, align 4
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @sh_gpio_direction_output, align 4
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @sh_gpio_set, align 4
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.pinmux_info*, %struct.pinmux_info** %2, align 8
  %37 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load %struct.pinmux_info*, %struct.pinmux_info** %2, align 8
  %43 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %46 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @THIS_MODULE, align 4
  %48 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %49 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pinmux_info*, %struct.pinmux_info** %2, align 8
  %51 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %54 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.pinmux_info*, %struct.pinmux_info** %2, align 8
  %56 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.pinmux_info*, %struct.pinmux_info** %2, align 8
  %59 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = add nsw i64 %61, 1
  %63 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %64 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %66 = call i32 @gpiochip_add(%struct.gpio_chip* %65)
  ret i32 %66
}

declare dso_local i32 @pr_info(i8*, i32, i64, i64) #1

declare dso_local i32 @setup_data_regs(%struct.pinmux_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @gpiochip_add(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
