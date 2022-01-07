; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_reset_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { i32, %struct.cmd_ds_802_11_reset* }
%struct.cmd_ds_802_11_reset = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@LBTF_DEB_USB = common dso_local global i32 0, align 4
@CMD_TYPE_REQUEST = common dso_local global i32 0, align 4
@CMD_802_11_RESET = common dso_local global i32 0, align 4
@CMD_ACT_HALT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_usb_card*)* @if_usb_reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_reset_device(%struct.if_usb_card* %0) #0 {
  %2 = alloca %struct.if_usb_card*, align 8
  %3 = alloca %struct.cmd_ds_802_11_reset*, align 8
  %4 = alloca i32, align 4
  store %struct.if_usb_card* %0, %struct.if_usb_card** %2, align 8
  %5 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %6 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %5, i32 0, i32 1
  %7 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %6, align 8
  %8 = getelementptr inbounds %struct.cmd_ds_802_11_reset, %struct.cmd_ds_802_11_reset* %7, i64 4
  store %struct.cmd_ds_802_11_reset* %8, %struct.cmd_ds_802_11_reset** %3, align 8
  %9 = load i32, i32* @LBTF_DEB_USB, align 4
  %10 = call i32 @lbtf_deb_enter(i32 %9)
  %11 = load i32, i32* @CMD_TYPE_REQUEST, align 4
  %12 = call i32 @cpu_to_le32(i32 %11)
  %13 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %14 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %13, i32 0, i32 1
  %15 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %14, align 8
  %16 = bitcast %struct.cmd_ds_802_11_reset* %15 to i32*
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @CMD_802_11_RESET, align 4
  %18 = call i8* @cpu_to_le16(i32 %17)
  %19 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %3, align 8
  %20 = getelementptr inbounds %struct.cmd_ds_802_11_reset, %struct.cmd_ds_802_11_reset* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i8* %18, i8** %21, align 8
  %22 = call i8* @cpu_to_le16(i32 40)
  %23 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %3, align 8
  %24 = getelementptr inbounds %struct.cmd_ds_802_11_reset, %struct.cmd_ds_802_11_reset* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i8* %22, i8** %25, align 8
  %26 = call i8* @cpu_to_le16(i32 0)
  %27 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %3, align 8
  %28 = getelementptr inbounds %struct.cmd_ds_802_11_reset, %struct.cmd_ds_802_11_reset* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = call i8* @cpu_to_le16(i32 23130)
  %31 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %3, align 8
  %32 = getelementptr inbounds %struct.cmd_ds_802_11_reset, %struct.cmd_ds_802_11_reset* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* @CMD_ACT_HALT, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %3, align 8
  %37 = getelementptr inbounds %struct.cmd_ds_802_11_reset, %struct.cmd_ds_802_11_reset* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %39 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %40 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %39, i32 0, i32 1
  %41 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %40, align 8
  %42 = call i32 @usb_tx_block(%struct.if_usb_card* %38, %struct.cmd_ds_802_11_reset* %41, i32 44, i32 0)
  %43 = call i32 @msleep(i32 100)
  %44 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %45 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @usb_reset_device(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = call i32 @msleep(i32 100)
  %49 = load i32, i32* @LBTF_DEB_USB, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @lbtf_deb_leave_args(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_tx_block(%struct.if_usb_card*, %struct.cmd_ds_802_11_reset*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_reset_device(i32) #1

declare dso_local i32 @lbtf_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
