; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_mx31moboard.c_moboard_usbotg_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_mx31moboard.c_moboard_usbotg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MX31_PIN_USBOTG_DATA0 = common dso_local global i32 0, align 4
@USB_PAD_CFG = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA1 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA2 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA3 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA4 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA5 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA6 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA7 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_CLK = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DIR = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_NXT = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_STP = common dso_local global i32 0, align 4
@OTG_EN_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"usb-udc-en\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @moboard_usbotg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moboard_usbotg_init() #0 {
  %1 = load i32, i32* @MX31_PIN_USBOTG_DATA0, align 4
  %2 = load i32, i32* @USB_PAD_CFG, align 4
  %3 = call i32 @mxc_iomux_set_pad(i32 %1, i32 %2)
  %4 = load i32, i32* @MX31_PIN_USBOTG_DATA1, align 4
  %5 = load i32, i32* @USB_PAD_CFG, align 4
  %6 = call i32 @mxc_iomux_set_pad(i32 %4, i32 %5)
  %7 = load i32, i32* @MX31_PIN_USBOTG_DATA2, align 4
  %8 = load i32, i32* @USB_PAD_CFG, align 4
  %9 = call i32 @mxc_iomux_set_pad(i32 %7, i32 %8)
  %10 = load i32, i32* @MX31_PIN_USBOTG_DATA3, align 4
  %11 = load i32, i32* @USB_PAD_CFG, align 4
  %12 = call i32 @mxc_iomux_set_pad(i32 %10, i32 %11)
  %13 = load i32, i32* @MX31_PIN_USBOTG_DATA4, align 4
  %14 = load i32, i32* @USB_PAD_CFG, align 4
  %15 = call i32 @mxc_iomux_set_pad(i32 %13, i32 %14)
  %16 = load i32, i32* @MX31_PIN_USBOTG_DATA5, align 4
  %17 = load i32, i32* @USB_PAD_CFG, align 4
  %18 = call i32 @mxc_iomux_set_pad(i32 %16, i32 %17)
  %19 = load i32, i32* @MX31_PIN_USBOTG_DATA6, align 4
  %20 = load i32, i32* @USB_PAD_CFG, align 4
  %21 = call i32 @mxc_iomux_set_pad(i32 %19, i32 %20)
  %22 = load i32, i32* @MX31_PIN_USBOTG_DATA7, align 4
  %23 = load i32, i32* @USB_PAD_CFG, align 4
  %24 = call i32 @mxc_iomux_set_pad(i32 %22, i32 %23)
  %25 = load i32, i32* @MX31_PIN_USBOTG_CLK, align 4
  %26 = load i32, i32* @USB_PAD_CFG, align 4
  %27 = call i32 @mxc_iomux_set_pad(i32 %25, i32 %26)
  %28 = load i32, i32* @MX31_PIN_USBOTG_DIR, align 4
  %29 = load i32, i32* @USB_PAD_CFG, align 4
  %30 = call i32 @mxc_iomux_set_pad(i32 %28, i32 %29)
  %31 = load i32, i32* @MX31_PIN_USBOTG_NXT, align 4
  %32 = load i32, i32* @USB_PAD_CFG, align 4
  %33 = call i32 @mxc_iomux_set_pad(i32 %31, i32 %32)
  %34 = load i32, i32* @MX31_PIN_USBOTG_STP, align 4
  %35 = load i32, i32* @USB_PAD_CFG, align 4
  %36 = call i32 @mxc_iomux_set_pad(i32 %34, i32 %35)
  %37 = load i32, i32* @OTG_EN_B, align 4
  %38 = call i32 @gpio_request(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @OTG_EN_B, align 4
  %40 = call i32 @gpio_direction_output(i32 %39, i32 0)
  ret void
}

declare dso_local i32 @mxc_iomux_set_pad(i32, i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
