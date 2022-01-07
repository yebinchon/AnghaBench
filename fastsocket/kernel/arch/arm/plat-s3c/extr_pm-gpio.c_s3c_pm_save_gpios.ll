; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pm-gpio.c_s3c_pm_save_gpios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pm-gpio.c_s3c_pm_save_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_gpio_chip = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64, i32 }

@S3C_GPIO_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: save %08x,%08x,%08x,%08x\0A\00", align 1
@CONFIG_S3C_GPIO_SPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c_pm_save_gpios() #0 {
  %1 = alloca %struct.s3c_gpio_chip*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %54, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @S3C_GPIO_END, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %57

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.s3c_gpio_chip* @s3c_gpiolib_getchip(i32 %8)
  store %struct.s3c_gpio_chip* %9, %struct.s3c_gpio_chip** %1, align 8
  %10 = load %struct.s3c_gpio_chip*, %struct.s3c_gpio_chip** %1, align 8
  %11 = icmp ne %struct.s3c_gpio_chip* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %54

13:                                               ; preds = %7
  %14 = load %struct.s3c_gpio_chip*, %struct.s3c_gpio_chip** %1, align 8
  %15 = call i32 @s3c_pm_save_gpio(%struct.s3c_gpio_chip* %14)
  %16 = load %struct.s3c_gpio_chip*, %struct.s3c_gpio_chip** %1, align 8
  %17 = getelementptr inbounds %struct.s3c_gpio_chip, %struct.s3c_gpio_chip* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.s3c_gpio_chip*, %struct.s3c_gpio_chip** %1, align 8
  %21 = getelementptr inbounds %struct.s3c_gpio_chip, %struct.s3c_gpio_chip* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.s3c_gpio_chip*, %struct.s3c_gpio_chip** %1, align 8
  %26 = getelementptr inbounds %struct.s3c_gpio_chip, %struct.s3c_gpio_chip* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.s3c_gpio_chip*, %struct.s3c_gpio_chip** %1, align 8
  %31 = getelementptr inbounds %struct.s3c_gpio_chip, %struct.s3c_gpio_chip* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.s3c_gpio_chip*, %struct.s3c_gpio_chip** %1, align 8
  %36 = getelementptr inbounds %struct.s3c_gpio_chip, %struct.s3c_gpio_chip* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @S3C_PMDBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %24, i32 %29, i32 %34, i32 %39)
  %41 = load %struct.s3c_gpio_chip*, %struct.s3c_gpio_chip** %1, align 8
  %42 = getelementptr inbounds %struct.s3c_gpio_chip, %struct.s3c_gpio_chip* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %2, align 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %2, align 4
  %49 = load i64, i64* @CONFIG_S3C_GPIO_SPACE, align 8
  %50 = load i32, i32* %2, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %13, %12
  %55 = load i32, i32* %2, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %3

57:                                               ; preds = %3
  ret void
}

declare dso_local %struct.s3c_gpio_chip* @s3c_gpiolib_getchip(i32) #1

declare dso_local i32 @s3c_pm_save_gpio(%struct.s3c_gpio_chip*) #1

declare dso_local i32 @S3C_PMDBG(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
