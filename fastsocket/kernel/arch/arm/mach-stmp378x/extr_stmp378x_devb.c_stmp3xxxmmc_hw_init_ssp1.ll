; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-stmp378x/extr_stmp378x_devb.c_stmp3xxxmmc_hw_init_ssp1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-stmp378x/extr_stmp378x_devb.c_stmp3xxxmmc_hw_init_ssp1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mmc_pins = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@PINID_PWM4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"mmc wp\00", align 1
@PINID_PWM3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"mmc power\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @stmp3xxxmmc_hw_init_ssp1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmp3xxxmmc_hw_init_ssp1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @stmp3xxx_request_pin_group(i32* @mmc_pins, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %30

7:                                                ; preds = %0
  %8 = load i32, i32* @PINID_PWM4, align 4
  %9 = call i32 @gpio_request(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %28

13:                                               ; preds = %7
  %14 = load i32, i32* @PINID_PWM4, align 4
  %15 = call i32 @gpio_direction_input(i32 %14)
  %16 = load i32, i32* @PINID_PWM3, align 4
  %17 = call i32 @gpio_request(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %25

21:                                               ; preds = %13
  %22 = load i32, i32* @PINID_PWM3, align 4
  %23 = call i32 @gpio_direction_output(i32 %22, i32 0)
  %24 = call i32 @mdelay(i32 100)
  store i32 0, i32* %1, align 4
  br label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @PINID_PWM4, align 4
  %27 = call i32 @gpio_free(i32 %26)
  br label %28

28:                                               ; preds = %25, %12
  %29 = call i32 @stmp3xxx_release_pin_group(i32* @mmc_pins, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %6
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %30, %21
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @stmp3xxx_request_pin_group(i32*, i8*) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @stmp3xxx_release_pin_group(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
