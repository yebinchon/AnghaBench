; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_firmware_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_firmware_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lbs_private = type { %struct.if_usb_card* }
%struct.if_usb_card = type { i32 }
%struct.TYPE_2__ = type { %struct.lbs_private* }

@BOOT_CMD_UPDATE_FW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @if_usb_firmware_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @if_usb_firmware_set(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lbs_private*, align 8
  %11 = alloca %struct.if_usb_card*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.TYPE_2__* @to_net_dev(%struct.device* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.lbs_private*, %struct.lbs_private** %15, align 8
  store %struct.lbs_private* %16, %struct.lbs_private** %10, align 8
  %17 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %18 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %17, i32 0, i32 0
  %19 = load %struct.if_usb_card*, %struct.if_usb_card** %18, align 8
  store %struct.if_usb_card* %19, %struct.if_usb_card** %11, align 8
  %20 = load %struct.if_usb_card*, %struct.if_usb_card** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @BOOT_CMD_UPDATE_FW, align 4
  %23 = call i32 @if_usb_prog_firmware(%struct.if_usb_card* %20, i8* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %5, align 8
  br label %31

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %28, %26
  %32 = load i64, i64* %5, align 8
  ret i64 %32
}

declare dso_local %struct.TYPE_2__* @to_net_dev(%struct.device*) #1

declare dso_local i32 @if_usb_prog_firmware(%struct.if_usb_card*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
