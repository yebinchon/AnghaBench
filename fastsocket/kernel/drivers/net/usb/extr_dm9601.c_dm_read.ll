; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_dm9601.c_dm_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_dm9601.c_dm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"dm_read() reg=0x%02x length=%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@DM_READ_REGS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32, i32, i8*)* @dm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_read(%struct.usbnet* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @devdbg(%struct.usbnet* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 %17, i32 %18)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %60

23:                                               ; preds = %4
  %24 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %25 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %28 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_rcvctrlpipe(i32 %29, i32 0)
  %31 = load i32, i32* @DM_READ_REGS, align 4
  %32 = load i32, i32* @USB_DIR_IN, align 4
  %33 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %41 = call i32 @usb_control_msg(i32 %26, i32 %30, i32 %31, i32 %36, i32 0, i32 %37, i8* %38, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %23
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @memcpy(i8* %46, i8* %47, i32 %48)
  br label %57

50:                                               ; preds = %23
  %51 = load i32, i32* %10, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @kfree(i8* %58)
  br label %60

60:                                               ; preds = %57, %22
  %61 = load i32, i32* %10, align 4
  ret i32 %61
}

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
