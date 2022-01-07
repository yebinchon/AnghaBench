; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pm-gpio.c_s3c_pm_restore_gpios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pm-gpio.c_s3c_pm_restore_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_gpio_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@S3C_GPIO_END = common dso_local global i32 0, align 4
@CONFIG_S3C_GPIO_SPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c_pm_restore_gpios() #0 {
  %1 = alloca %struct.s3c_gpio_chip*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %29, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @S3C_GPIO_END, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.s3c_gpio_chip* @s3c_gpiolib_getchip(i32 %8)
  store %struct.s3c_gpio_chip* %9, %struct.s3c_gpio_chip** %1, align 8
  %10 = load %struct.s3c_gpio_chip*, %struct.s3c_gpio_chip** %1, align 8
  %11 = icmp ne %struct.s3c_gpio_chip* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %29

13:                                               ; preds = %7
  %14 = load %struct.s3c_gpio_chip*, %struct.s3c_gpio_chip** %1, align 8
  %15 = call i32 @s3c_pm_resume_gpio(%struct.s3c_gpio_chip* %14)
  %16 = load %struct.s3c_gpio_chip*, %struct.s3c_gpio_chip** %1, align 8
  %17 = getelementptr inbounds %struct.s3c_gpio_chip, %struct.s3c_gpio_chip* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %2, align 4
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %2, align 4
  %24 = load i64, i64* @CONFIG_S3C_GPIO_SPACE, align 8
  %25 = load i32, i32* %2, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %13, %12
  %30 = load i32, i32* %2, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %3

32:                                               ; preds = %3
  ret void
}

declare dso_local %struct.s3c_gpio_chip* @s3c_gpiolib_getchip(i32) #1

declare dso_local i32 @s3c_pm_resume_gpio(%struct.s3c_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
