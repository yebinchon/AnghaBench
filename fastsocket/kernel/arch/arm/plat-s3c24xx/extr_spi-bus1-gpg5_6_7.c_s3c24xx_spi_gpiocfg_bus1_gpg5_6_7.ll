; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_spi-bus1-gpg5_6_7.c_s3c24xx_spi_gpiocfg_bus1_gpg5_6_7.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_spi-bus1-gpg5_6_7.c_s3c24xx_spi_gpiocfg_bus1_gpg5_6_7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_spi_info = type { i32 }

@S3C2410_GPG7_SPICLK1 = common dso_local global i32 0, align 4
@S3C2410_GPG6_SPIMOSI1 = common dso_local global i32 0, align 4
@S3C2410_GPG5_SPIMISO1 = common dso_local global i32 0, align 4
@S3C2410_GPIO_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c24xx_spi_gpiocfg_bus1_gpg5_6_7(%struct.s3c2410_spi_info* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c2410_spi_info*, align 8
  %4 = alloca i32, align 4
  store %struct.s3c2410_spi_info* %0, %struct.s3c2410_spi_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = call i32 @S3C2410_GPG(i32 7)
  %9 = load i32, i32* @S3C2410_GPG7_SPICLK1, align 4
  %10 = call i32 @s3c2410_gpio_cfgpin(i32 %8, i32 %9)
  %11 = call i32 @S3C2410_GPG(i32 6)
  %12 = load i32, i32* @S3C2410_GPG6_SPIMOSI1, align 4
  %13 = call i32 @s3c2410_gpio_cfgpin(i32 %11, i32 %12)
  %14 = call i32 @S3C2410_GPG(i32 5)
  %15 = load i32, i32* @S3C2410_GPG5_SPIMISO1, align 4
  %16 = call i32 @s3c2410_gpio_cfgpin(i32 %14, i32 %15)
  %17 = call i32 @S3C2410_GPG(i32 5)
  %18 = call i32 @s3c2410_gpio_pullup(i32 %17, i32 0)
  %19 = call i32 @S3C2410_GPG(i32 6)
  %20 = call i32 @s3c2410_gpio_pullup(i32 %19, i32 0)
  br label %34

21:                                               ; preds = %2
  %22 = call i32 @S3C2410_GPG(i32 7)
  %23 = load i32, i32* @S3C2410_GPIO_INPUT, align 4
  %24 = call i32 @s3c2410_gpio_cfgpin(i32 %22, i32 %23)
  %25 = call i32 @S3C2410_GPG(i32 5)
  %26 = load i32, i32* @S3C2410_GPIO_INPUT, align 4
  %27 = call i32 @s3c2410_gpio_cfgpin(i32 %25, i32 %26)
  %28 = call i32 @S3C2410_GPG(i32 5)
  %29 = call i32 @s3c2410_gpio_pullup(i32 %28, i32 1)
  %30 = call i32 @S3C2410_GPG(i32 6)
  %31 = call i32 @s3c2410_gpio_pullup(i32 %30, i32 1)
  %32 = call i32 @S3C2410_GPG(i32 7)
  %33 = call i32 @s3c2410_gpio_pullup(i32 %32, i32 1)
  br label %34

34:                                               ; preds = %21, %7
  ret void
}

declare dso_local i32 @s3c2410_gpio_cfgpin(i32, i32) #1

declare dso_local i32 @S3C2410_GPG(i32) #1

declare dso_local i32 @s3c2410_gpio_pullup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
