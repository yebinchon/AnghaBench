; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_dm9601.c_dm_write_async_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_dm9601.c_dm_write_async_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_ctrlrequest = type { i32, i8*, i8*, i8*, i32 }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Error allocating URB in dm_write_async_helper!\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to allocate memory for control request\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@DM_WRITE_REGS = common dso_local global i32 0, align 4
@DM_WRITE_REG = common dso_local global i32 0, align 4
@dm_write_async_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Error submitting the control message: status=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i32, i32, i32, i8*)* @dm_write_async_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_write_async_helper(%struct.usbnet* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.usb_ctrlrequest*, align 8
  %12 = alloca %struct.urb*, align 8
  %13 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %14)
  store %struct.urb* %15, %struct.urb** %12, align 8
  %16 = load %struct.urb*, %struct.urb** %12, align 8
  %17 = icmp ne %struct.urb* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %20 = call i32 (%struct.usbnet*, i8*, ...) @deverr(%struct.usbnet* %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %89

21:                                               ; preds = %5
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.usb_ctrlrequest* @kmalloc(i32 40, i32 %22)
  store %struct.usb_ctrlrequest* %23, %struct.usb_ctrlrequest** %11, align 8
  %24 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %25 = icmp ne %struct.usb_ctrlrequest* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %28 = call i32 (%struct.usbnet*, i8*, ...) @deverr(%struct.usbnet* %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.urb*, %struct.urb** %12, align 8
  %30 = call i32 @usb_free_urb(%struct.urb* %29)
  br label %89

31:                                               ; preds = %21
  %32 = load i32, i32* @USB_DIR_OUT, align 4
  %33 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %38 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @DM_WRITE_REGS, align 4
  br label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @DM_WRITE_REG, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %48 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %52 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %56 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %60 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.urb*, %struct.urb** %12, align 8
  %62 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %63 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %66 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @usb_sndctrlpipe(i32 %67, i32 0)
  %69 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %70 = bitcast %struct.usb_ctrlrequest* %69 to i8*
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @dm_write_async_callback, align 4
  %74 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %75 = call i32 @usb_fill_control_urb(%struct.urb* %61, i32 %64, i32 %68, i8* %70, i8* %71, i32 %72, i32 %73, %struct.usb_ctrlrequest* %74)
  %76 = load %struct.urb*, %struct.urb** %12, align 8
  %77 = load i32, i32* @GFP_ATOMIC, align 4
  %78 = call i32 @usb_submit_urb(%struct.urb* %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %45
  %82 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 (%struct.usbnet*, i8*, ...) @deverr(%struct.usbnet* %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %86 = call i32 @kfree(%struct.usb_ctrlrequest* %85)
  %87 = load %struct.urb*, %struct.urb** %12, align 8
  %88 = call i32 @usb_free_urb(%struct.urb* %87)
  br label %89

89:                                               ; preds = %18, %26, %81, %45
  ret void
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @deverr(%struct.usbnet*, i8*, ...) #1

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, i32, i32, i8*, i8*, i32, i32, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @kfree(%struct.usb_ctrlrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
