; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-kfr2r09/extr_lcd_wqvga.c_kfr2r09_lcd_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-kfr2r09/extr_lcd_wqvga.c_kfr2r09_lcd_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_sys_bus_ops = type { i32 }

@GPIO_PTF4 = common dso_local global i32 0, align 4
@GPIO_PTE4 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"KFR2R09 WQVGA LCD Module detected.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfr2r09_lcd_setup(i8* %0, i8* %1, %struct.sh_mobile_lcdc_sys_bus_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sh_mobile_lcdc_sys_bus_ops*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sh_mobile_lcdc_sys_bus_ops* %2, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %8 = load i32, i32* @GPIO_PTF4, align 4
  %9 = call i32 @gpio_set_value(i32 %8, i32 0)
  %10 = load i32, i32* @GPIO_PTE4, align 4
  %11 = call i32 @gpio_set_value(i32 %10, i32 0)
  %12 = load i32, i32* @GPIO_PTF4, align 4
  %13 = call i32 @gpio_set_value(i32 %12, i32 1)
  %14 = call i32 @udelay(i32 1100)
  %15 = load i32, i32* @GPIO_PTE4, align 4
  %16 = call i32 @gpio_set_value(i32 %15, i32 1)
  %17 = call i32 @udelay(i32 10)
  %18 = load i32, i32* @GPIO_PTF4, align 4
  %19 = call i32 @gpio_set_value(i32 %18, i32 0)
  %20 = call i32 @mdelay(i32 20)
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %23 = call i32 @read_device_code(i8* %21, %struct.sh_mobile_lcdc_sys_bus_ops* %22)
  %24 = icmp ne i32 %23, 19010839
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %33

28:                                               ; preds = %3
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %32 = call i32 @display_on(i8* %30, %struct.sh_mobile_lcdc_sys_bus_ops* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @read_device_code(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @display_on(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
