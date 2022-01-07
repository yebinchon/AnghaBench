; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-kfr2r09/extr_setup.c_kfr2r09_usb0_gadget_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-kfr2r09/extr_setup.c_kfr2r09_usb0_gadget_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_PTN4 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PORT_MSELCRB = common dso_local global i32 0, align 4
@GPIO_FN_PDSTATUS = common dso_local global i32 0, align 4
@GPIO_PTV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"usb0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kfr2r09_usb0_gadget_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfr2r09_usb0_gadget_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GPIO_PTN4, align 4
  %4 = call i32 @gpio_request(i32 %3, i32* null)
  %5 = load i32, i32* @GPIO_PTN4, align 4
  %6 = call i32 @gpio_direction_input(i32 %5)
  %7 = load i32, i32* @GPIO_PTN4, align 4
  %8 = call i32 @gpio_get_value(i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %37

14:                                               ; preds = %0
  %15 = call i64 (...) @kfr2r09_usb0_gadget_i2c_setup()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %1, align 4
  br label %37

20:                                               ; preds = %14
  %21 = load i32, i32* @PORT_MSELCRB, align 4
  %22 = call i32 @ctrl_inw(i32 %21)
  %23 = and i32 %22, -49153
  %24 = or i32 %23, 32768
  %25 = load i32, i32* @PORT_MSELCRB, align 4
  %26 = call i32 @ctrl_outw(i32 %24, i32 %25)
  %27 = load i32, i32* @GPIO_FN_PDSTATUS, align 4
  %28 = call i32 @gpio_request(i32 %27, i32* null)
  %29 = load i32, i32* @GPIO_PTV6, align 4
  %30 = call i32 @gpio_request(i32 %29, i32* null)
  %31 = load i32, i32* @GPIO_PTV6, align 4
  %32 = call i32 @gpio_direction_output(i32 %31, i32 1)
  %33 = call i32 @msleep(i32 20)
  %34 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @clk_enable(i32 %34)
  %36 = call i32 @ctrl_outw(i32 1536, i32 -1543175724)
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %20, %17, %11
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @gpio_request(i32, i32*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i64 @kfr2r09_usb0_gadget_i2c_setup(...) #1

declare dso_local i32 @ctrl_outw(i32, i32) #1

declare dso_local i32 @ctrl_inw(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
