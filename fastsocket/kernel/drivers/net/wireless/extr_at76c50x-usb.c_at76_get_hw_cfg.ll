; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_get_hw_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_get_hw_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%union.at76_hwcfg = type { i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %union.at76_hwcfg*, i32)* @at76_get_hw_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at76_get_hw_cfg(%struct.usb_device* %0, %union.at76_hwcfg* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %union.at76_hwcfg*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %union.at76_hwcfg* %1, %union.at76_hwcfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %8, i32 0)
  %10 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %11 = load i32, i32* @USB_DIR_IN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %14 = or i32 %12, %13
  %15 = load %union.at76_hwcfg*, %union.at76_hwcfg** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %18 = call i32 @usb_control_msg(%struct.usb_device* %7, i32 %9, i32 51, i32 %14, i32 2562, i32 0, %union.at76_hwcfg* %15, i32 %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, %union.at76_hwcfg*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
