; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_setup-sdhci-gpio.c_s3c64xx_setup_sdhci1_cfg_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_setup-sdhci-gpio.c_s3c64xx_setup_sdhci1_cfg_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@S3C_GPIO_PULL_NONE = common dso_local global i32 0, align 4
@S3C_GPIO_PULL_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c64xx_setup_sdhci1_cfg_gpio(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 2, %7
  %9 = call i32 @S3C64XX_GPH(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = call i32 @S3C64XX_GPH(i32 0)
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %22, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @S3C_GPIO_SFN(i32 2)
  %18 = call i32 @s3c_gpio_cfgpin(i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  %21 = call i32 @s3c_gpio_setpull(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %11

25:                                               ; preds = %11
  %26 = call i32 @S3C64XX_GPG(i32 6)
  %27 = load i32, i32* @S3C_GPIO_PULL_UP, align 4
  %28 = call i32 @s3c_gpio_setpull(i32 %26, i32 %27)
  %29 = call i32 @S3C64XX_GPG(i32 6)
  %30 = call i32 @S3C_GPIO_SFN(i32 3)
  %31 = call i32 @s3c_gpio_cfgpin(i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @S3C64XX_GPH(i32) #1

declare dso_local i32 @s3c_gpio_cfgpin(i32, i32) #1

declare dso_local i32 @S3C_GPIO_SFN(i32) #1

declare dso_local i32 @s3c_gpio_setpull(i32, i32) #1

declare dso_local i32 @S3C64XX_GPG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
