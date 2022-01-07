; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_setup_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_setup_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { %struct.if_usb_card* }
%struct.if_usb_card = type { i32 }
%struct.cmd_ds_set_boot2_ver = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LBTF_DEB_USB = common dso_local global i32 0, align 4
@CMD_SET_BOOT2_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Setting boot2 version failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbtf_private*)* @if_usb_setup_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_setup_firmware(%struct.lbtf_private* %0) #0 {
  %2 = alloca %struct.lbtf_private*, align 8
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca %struct.cmd_ds_set_boot2_ver, align 8
  store %struct.lbtf_private* %0, %struct.lbtf_private** %2, align 8
  %5 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %6 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %5, i32 0, i32 0
  %7 = load %struct.if_usb_card*, %struct.if_usb_card** %6, align 8
  store %struct.if_usb_card* %7, %struct.if_usb_card** %3, align 8
  %8 = load i32, i32* @LBTF_DEB_USB, align 4
  %9 = call i32 @lbtf_deb_enter(i32 %8)
  %10 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %11 = call i32 @if_usb_submit_rx_urb(%struct.if_usb_card* %10)
  %12 = call i32 @cpu_to_le16(i32 24)
  %13 = getelementptr inbounds %struct.cmd_ds_set_boot2_ver, %struct.cmd_ds_set_boot2_ver* %4, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = getelementptr inbounds %struct.cmd_ds_set_boot2_ver, %struct.cmd_ds_set_boot2_ver* %4, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %17 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.cmd_ds_set_boot2_ver, %struct.cmd_ds_set_boot2_ver* %4, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %21 = load i32, i32* @CMD_SET_BOOT2_VER, align 4
  %22 = call i64 @lbtf_cmd_with_response(%struct.lbtf_private* %20, i32 %21, %struct.cmd_ds_set_boot2_ver* %4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @lbtf_deb_usb(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %1
  %27 = load i32, i32* @LBTF_DEB_USB, align 4
  %28 = call i32 @lbtf_deb_leave(i32 %27)
  ret void
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @if_usb_submit_rx_urb(%struct.if_usb_card*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @lbtf_cmd_with_response(%struct.lbtf_private*, i32, %struct.cmd_ds_set_boot2_ver*) #1

declare dso_local i32 @lbtf_deb_usb(i8*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
