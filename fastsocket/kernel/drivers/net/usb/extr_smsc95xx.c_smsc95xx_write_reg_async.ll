; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_write_reg_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_write_reg_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i32 }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Error allocating URB\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error allocating control msg\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_VENDOR_REQUEST_WRITE_REGISTER = common dso_local global i32 0, align 4
@smsc95xx_async_cmd_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Error submitting control msg, sts=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32, i32*)* @smsc95xx_write_reg_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_write_reg_async(%struct.usbnet* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.usb_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.urb*, align 8
  %11 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 4, i32* %11, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %12)
  store %struct.urb* %13, %struct.urb** %10, align 8
  %14 = load %struct.urb*, %struct.urb** %10, align 8
  %15 = icmp ne %struct.urb* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %18 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %89

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.usb_context* @kmalloc(i32 32, i32 %22)
  store %struct.usb_context* %23, %struct.usb_context** %8, align 8
  %24 = load %struct.usb_context*, %struct.usb_context** %8, align 8
  %25 = icmp eq %struct.usb_context* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %28 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.urb*, %struct.urb** %10, align 8
  %30 = call i32 @usb_free_urb(%struct.urb* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %89

33:                                               ; preds = %21
  %34 = load i32, i32* @USB_DIR_OUT, align 4
  %35 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.usb_context*, %struct.usb_context** %8, align 8
  %40 = getelementptr inbounds %struct.usb_context, %struct.usb_context* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @USB_VENDOR_REQUEST_WRITE_REGISTER, align 4
  %43 = load %struct.usb_context*, %struct.usb_context** %8, align 8
  %44 = getelementptr inbounds %struct.usb_context, %struct.usb_context* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 8
  %46 = load %struct.usb_context*, %struct.usb_context** %8, align 8
  %47 = getelementptr inbounds %struct.usb_context, %struct.usb_context* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.usb_context*, %struct.usb_context** %8, align 8
  %52 = getelementptr inbounds %struct.usb_context, %struct.usb_context* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i8* %50, i8** %53, align 8
  %54 = call i8* @cpu_to_le16(i32 4)
  %55 = load %struct.usb_context*, %struct.usb_context** %8, align 8
  %56 = getelementptr inbounds %struct.usb_context, %struct.usb_context* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  %58 = load %struct.urb*, %struct.urb** %10, align 8
  %59 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %60 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %63 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @usb_sndctrlpipe(i32 %64, i32 0)
  %66 = load %struct.usb_context*, %struct.usb_context** %8, align 8
  %67 = getelementptr inbounds %struct.usb_context, %struct.usb_context* %66, i32 0, i32 0
  %68 = bitcast %struct.TYPE_2__* %67 to i8*
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* @smsc95xx_async_cmd_callback, align 4
  %71 = load %struct.usb_context*, %struct.usb_context** %8, align 8
  %72 = bitcast %struct.usb_context* %71 to i8*
  %73 = call i32 @usb_fill_control_urb(%struct.urb* %58, i32 %61, i32 %65, i8* %68, i32* %69, i32 4, i32 %70, i8* %72)
  %74 = load %struct.urb*, %struct.urb** %10, align 8
  %75 = load i32, i32* @GFP_ATOMIC, align 4
  %76 = call i32 @usb_submit_urb(%struct.urb* %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %33
  %80 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.usb_context*, %struct.usb_context** %8, align 8
  %84 = call i32 @kfree(%struct.usb_context* %83)
  %85 = load %struct.urb*, %struct.urb** %10, align 8
  %86 = call i32 @usb_free_urb(%struct.urb* %85)
  br label %87

87:                                               ; preds = %79, %33
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %26, %16
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @devwarn(%struct.usbnet*, i8*, ...) #1

declare dso_local %struct.usb_context* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, i32, i32, i8*, i32*, i32, i32, i8*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @kfree(%struct.usb_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
