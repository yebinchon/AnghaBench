; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-da850-evm.c_da850_lcd_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-da850-evm.c_da850_lcd_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DA850_LCD_BL_PIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"lcd bl\0A\00", align 1
@DA850_LCD_PWR_PIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"lcd pwr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @da850_lcd_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da850_lcd_hw_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @DA850_LCD_BL_PIN, align 4
  %4 = call i32 @gpio_request(i32 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  br label %31

9:                                                ; preds = %0
  %10 = load i32, i32* @DA850_LCD_PWR_PIN, align 4
  %11 = call i32 @gpio_request(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* @DA850_LCD_BL_PIN, align 4
  %16 = call i32 @gpio_free(i32 %15)
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* %1, align 4
  br label %31

18:                                               ; preds = %9
  %19 = load i32, i32* @DA850_LCD_BL_PIN, align 4
  %20 = call i32 @gpio_direction_output(i32 %19, i32 0)
  %21 = load i32, i32* @DA850_LCD_PWR_PIN, align 4
  %22 = call i32 @gpio_direction_output(i32 %21, i32 0)
  %23 = load i32, i32* @DA850_LCD_BL_PIN, align 4
  %24 = call i32 @gpio_set_value(i32 %23, i32 0)
  %25 = load i32, i32* @DA850_LCD_PWR_PIN, align 4
  %26 = call i32 @gpio_set_value(i32 %25, i32 0)
  %27 = load i32, i32* @DA850_LCD_PWR_PIN, align 4
  %28 = call i32 @gpio_set_value(i32 %27, i32 1)
  %29 = load i32, i32* @DA850_LCD_BL_PIN, align 4
  %30 = call i32 @gpio_set_value(i32 %29, i32 1)
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %18, %14, %7
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
