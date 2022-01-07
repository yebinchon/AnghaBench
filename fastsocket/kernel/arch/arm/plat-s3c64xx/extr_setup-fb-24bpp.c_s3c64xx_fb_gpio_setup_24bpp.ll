; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_setup-fb-24bpp.c_s3c64xx_fb_gpio_setup_24bpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_setup-fb-24bpp.c_s3c64xx_fb_gpio_setup_24bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S3C_GPIO_PULL_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c64xx_fb_gpio_setup_24bpp() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @S3C64XX_GPI(i32 0)
  store i32 %2, i32* %1, align 4
  br label %3

3:                                                ; preds = %14, %0
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @S3C64XX_GPI(i32 15)
  %6 = icmp ule i32 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @S3C_GPIO_SFN(i32 2)
  %10 = call i32 @s3c_gpio_cfgpin(i32 %8, i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  %13 = call i32 @s3c_gpio_setpull(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %1, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %3

17:                                               ; preds = %3
  %18 = call i32 @S3C64XX_GPJ(i32 0)
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %30, %17
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @S3C64XX_GPJ(i32 11)
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @S3C_GPIO_SFN(i32 2)
  %26 = call i32 @s3c_gpio_cfgpin(i32 %24, i32 %25)
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  %29 = call i32 @s3c_gpio_setpull(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %1, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %19

33:                                               ; preds = %19
  ret void
}

declare dso_local i32 @S3C64XX_GPI(i32) #1

declare dso_local i32 @s3c_gpio_cfgpin(i32, i32) #1

declare dso_local i32 @S3C_GPIO_SFN(i32) #1

declare dso_local i32 @s3c_gpio_setpull(i32, i32) #1

declare dso_local i32 @S3C64XX_GPJ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
