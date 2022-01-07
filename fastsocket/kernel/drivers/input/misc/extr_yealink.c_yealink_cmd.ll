; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_yealink.c_yealink_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_yealink.c_yealink_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yealink_dev = type { i32 }
%struct.yld_ctl_packet = type { i64 }

@USB_PKT_LEN = common dso_local global i32 0, align 4
@USB_REQ_SET_CONFIGURATION = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.yealink_dev*, %struct.yld_ctl_packet*)* @yealink_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yealink_cmd(%struct.yealink_dev* %0, %struct.yld_ctl_packet* %1) #0 {
  %3 = alloca %struct.yealink_dev*, align 8
  %4 = alloca %struct.yld_ctl_packet*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.yealink_dev* %0, %struct.yealink_dev** %3, align 8
  store %struct.yld_ctl_packet* %1, %struct.yld_ctl_packet** %4, align 8
  %8 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %4, align 8
  %9 = bitcast %struct.yld_ctl_packet* %8 to i64*
  store i64* %9, i64** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %23, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @USB_PKT_LEN, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i64*, i64** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = sub nsw i64 %21, %20
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %10

26:                                               ; preds = %10
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %4, align 8
  %29 = getelementptr inbounds %struct.yld_ctl_packet, %struct.yld_ctl_packet* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.yealink_dev*, %struct.yealink_dev** %3, align 8
  %31 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.yealink_dev*, %struct.yealink_dev** %3, align 8
  %34 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_sndctrlpipe(i32 %35, i32 0)
  %37 = load i32, i32* @USB_REQ_SET_CONFIGURATION, align 4
  %38 = load i32, i32* @USB_TYPE_CLASS, align 4
  %39 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @USB_DIR_OUT, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %4, align 8
  %44 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %45 = call i32 @usb_control_msg(i32 %32, i32 %36, i32 %37, i32 %42, i32 512, i32 3, %struct.yld_ctl_packet* %43, i32 8, i32 %44)
  ret i32 %45
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.yld_ctl_packet*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
