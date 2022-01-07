; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_hard_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_hard_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { %struct.ezusb_priv* }
%struct.ezusb_priv = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Failed to reset\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Failed to unreset\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"sending control message\00", align 1
@EZUSB_REQUEST_TRIGER = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@DEF_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"EZUSB_REQUEST_TRIGER failed retval %d\00", align 1
@EZUSB_REQUEST_TRIG_AC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orinoco_private*)* @ezusb_hard_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ezusb_hard_reset(%struct.orinoco_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.orinoco_private*, align 8
  %4 = alloca %struct.ezusb_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %3, align 8
  %6 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %7 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %6, i32 0, i32 0
  %8 = load %struct.ezusb_priv*, %struct.ezusb_priv** %7, align 8
  store %struct.ezusb_priv* %8, %struct.ezusb_priv** %4, align 8
  %9 = load %struct.ezusb_priv*, %struct.ezusb_priv** %4, align 8
  %10 = call i32 @ezusb_8051_cpucs(%struct.ezusb_priv* %9, i32 1)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.ezusb_priv*, %struct.ezusb_priv** %4, align 8
  %18 = call i32 @ezusb_8051_cpucs(%struct.ezusb_priv* %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %48

24:                                               ; preds = %16
  %25 = call i32 @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.ezusb_priv*, %struct.ezusb_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ezusb_priv*, %struct.ezusb_priv** %4, align 8
  %30 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_sndctrlpipe(i32 %31, i32 0)
  %33 = load i32, i32* @EZUSB_REQUEST_TRIGER, align 4
  %34 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %35 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @USB_DIR_OUT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @DEF_TIMEOUT, align 4
  %40 = call i32 @usb_control_msg(i32 %28, i32 %32, i32 %33, i32 %38, i32 0, i32 0, i32* null, i32 0, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %24
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %43, %21, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @ezusb_8051_cpucs(%struct.ezusb_priv*, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
