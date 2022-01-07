; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_magician.c_toppoly_lcd_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_magician.c_toppoly_lcd_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Toppoly LCD power\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"on\0A\00", align 1
@EGPIO_MAGICIAN_TOPPOLY_POWER = common dso_local global i32 0, align 4
@GPIO106_MAGICIAN_LCD_POWER_3 = common dso_local global i32 0, align 4
@EGPIO_MAGICIAN_LCD_POWER = common dso_local global i32 0, align 4
@GPIO104_MAGICIAN_LCD_POWER_1 = common dso_local global i32 0, align 4
@GPIO105_MAGICIAN_LCD_POWER_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fb_var_screeninfo*)* @toppoly_lcd_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toppoly_lcd_power(i32 %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %5 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @EGPIO_MAGICIAN_TOPPOLY_POWER, align 4
  %11 = call i32 @gpio_set_value(i32 %10, i32 1)
  %12 = load i32, i32* @GPIO106_MAGICIAN_LCD_POWER_3, align 4
  %13 = call i32 @gpio_set_value(i32 %12, i32 1)
  %14 = call i32 @udelay(i32 2000)
  %15 = load i32, i32* @EGPIO_MAGICIAN_LCD_POWER, align 4
  %16 = call i32 @gpio_set_value(i32 %15, i32 1)
  %17 = call i32 @udelay(i32 2000)
  %18 = call i32 @udelay(i32 2000)
  %19 = load i32, i32* @GPIO104_MAGICIAN_LCD_POWER_1, align 4
  %20 = call i32 @gpio_set_value(i32 %19, i32 1)
  %21 = call i32 @udelay(i32 2000)
  %22 = load i32, i32* @GPIO105_MAGICIAN_LCD_POWER_2, align 4
  %23 = call i32 @gpio_set_value(i32 %22, i32 1)
  br label %37

24:                                               ; preds = %2
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @msleep(i32 15)
  %27 = load i32, i32* @GPIO105_MAGICIAN_LCD_POWER_2, align 4
  %28 = call i32 @gpio_set_value(i32 %27, i32 0)
  %29 = call i32 @udelay(i32 500)
  %30 = load i32, i32* @GPIO104_MAGICIAN_LCD_POWER_1, align 4
  %31 = call i32 @gpio_set_value(i32 %30, i32 0)
  %32 = call i32 @udelay(i32 1000)
  %33 = load i32, i32* @GPIO106_MAGICIAN_LCD_POWER_3, align 4
  %34 = call i32 @gpio_set_value(i32 %33, i32 0)
  %35 = load i32, i32* @EGPIO_MAGICIAN_LCD_POWER, align 4
  %36 = call i32 @gpio_set_value(i32 %35, i32 0)
  br label %37

37:                                               ; preds = %24, %8
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
