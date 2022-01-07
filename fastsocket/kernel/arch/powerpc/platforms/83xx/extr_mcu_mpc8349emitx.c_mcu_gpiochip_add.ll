; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_mcu_gpiochip_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_mcu_gpiochip_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcu = type { %struct.device_node*, %struct.of_gpio_chip }
%struct.device_node = type { %struct.of_gpio_chip*, i32 }
%struct.of_gpio_chip = type { i32, i32, %struct.gpio_chip }
%struct.gpio_chip = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"fsl,mcu-mpc8349emitx\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@MCU_NUM_GPIO = common dso_local global i32 0, align 4
@mcu_gpio_set = common dso_local global i32 0, align 4
@mcu_gpio_dir_out = common dso_local global i32 0, align 4
@of_gpio_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcu*)* @mcu_gpiochip_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcu_gpiochip_add(%struct.mcu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mcu*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.of_gpio_chip*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.mcu* %0, %struct.mcu** %3, align 8
  %8 = load %struct.mcu*, %struct.mcu** %3, align 8
  %9 = getelementptr inbounds %struct.mcu, %struct.mcu* %8, i32 0, i32 1
  store %struct.of_gpio_chip* %9, %struct.of_gpio_chip** %5, align 8
  %10 = load %struct.of_gpio_chip*, %struct.of_gpio_chip** %5, align 8
  %11 = getelementptr inbounds %struct.of_gpio_chip, %struct.of_gpio_chip* %10, i32 0, i32 2
  store %struct.gpio_chip* %11, %struct.gpio_chip** %6, align 8
  %12 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = getelementptr inbounds %struct.device_node, %struct.device_node* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* @MCU_NUM_GPIO, align 4
  %30 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %31 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %33 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %32, i32 0, i32 1
  store i32 -1, i32* %33, align 4
  %34 = load i32, i32* @mcu_gpio_set, align 4
  %35 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %36 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @mcu_gpio_dir_out, align 4
  %38 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %39 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.of_gpio_chip*, %struct.of_gpio_chip** %5, align 8
  %41 = getelementptr inbounds %struct.of_gpio_chip, %struct.of_gpio_chip* %40, i32 0, i32 0
  store i32 2, i32* %41, align 4
  %42 = load i32, i32* @of_gpio_simple_xlate, align 4
  %43 = load %struct.of_gpio_chip*, %struct.of_gpio_chip** %5, align 8
  %44 = getelementptr inbounds %struct.of_gpio_chip, %struct.of_gpio_chip* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.of_gpio_chip*, %struct.of_gpio_chip** %5, align 8
  %46 = load %struct.device_node*, %struct.device_node** %4, align 8
  %47 = getelementptr inbounds %struct.device_node, %struct.device_node* %46, i32 0, i32 0
  store %struct.of_gpio_chip* %45, %struct.of_gpio_chip** %47, align 8
  %48 = load %struct.device_node*, %struct.device_node** %4, align 8
  %49 = load %struct.mcu*, %struct.mcu** %3, align 8
  %50 = getelementptr inbounds %struct.mcu, %struct.mcu* %49, i32 0, i32 0
  store %struct.device_node* %48, %struct.device_node** %50, align 8
  %51 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %52 = call i32 @gpiochip_add(%struct.gpio_chip* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %18
  %56 = load %struct.device_node*, %struct.device_node** %4, align 8
  %57 = call i32 @of_node_put(%struct.device_node* %56)
  br label %58

58:                                               ; preds = %55, %18
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @gpiochip_add(%struct.gpio_chip*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
