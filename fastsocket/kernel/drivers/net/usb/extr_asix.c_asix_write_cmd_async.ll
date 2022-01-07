; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_write_cmd_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_write_cmd_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_ctrlrequest = type { i32, i8*, i8*, i8*, i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [68 x i8] c"asix_write_cmd_async() cmd=0x%02x value=0x%04x index=0x%04x size=%d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error allocating URB in write_cmd_async!\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to allocate memory for control request\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@asix_async_cmd_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Error submitting the control message: status=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i32, i32, i32, i32, i8*)* @asix_write_cmd_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asix_write_cmd_async(%struct.usbnet* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.usbnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.usb_ctrlrequest*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.urb*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @devdbg(%struct.usbnet* %16, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %22)
  store %struct.urb* %23, %struct.urb** %15, align 8
  %24 = icmp eq %struct.urb* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %27 = call i32 (%struct.usbnet*, i8*, ...) @deverr(%struct.usbnet* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %87

28:                                               ; preds = %6
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.usb_ctrlrequest* @kmalloc(i32 40, i32 %29)
  store %struct.usb_ctrlrequest* %30, %struct.usb_ctrlrequest** %13, align 8
  %31 = icmp eq %struct.usb_ctrlrequest* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %34 = call i32 (%struct.usbnet*, i8*, ...) @deverr(%struct.usbnet* %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.urb*, %struct.urb** %15, align 8
  %36 = call i32 @usb_free_urb(%struct.urb* %35)
  br label %87

37:                                               ; preds = %28
  %38 = load i32, i32* @USB_DIR_OUT, align 4
  %39 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %44 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %47 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %51 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i8* @cpu_to_le16(i32 %52)
  %54 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %55 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %59 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.urb*, %struct.urb** %15, align 8
  %61 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %62 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %65 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usb_sndctrlpipe(i32 %66, i32 0)
  %68 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %69 = bitcast %struct.usb_ctrlrequest* %68 to i8*
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @asix_async_cmd_callback, align 4
  %73 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %74 = call i32 @usb_fill_control_urb(%struct.urb* %60, i32 %63, i32 %67, i8* %69, i8* %70, i32 %71, i32 %72, %struct.usb_ctrlrequest* %73)
  %75 = load %struct.urb*, %struct.urb** %15, align 8
  %76 = load i32, i32* @GFP_ATOMIC, align 4
  %77 = call i32 @usb_submit_urb(%struct.urb* %75, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %37
  %80 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 (%struct.usbnet*, i8*, ...) @deverr(%struct.usbnet* %80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %84 = call i32 @kfree(%struct.usb_ctrlrequest* %83)
  %85 = load %struct.urb*, %struct.urb** %15, align 8
  %86 = call i32 @usb_free_urb(%struct.urb* %85)
  br label %87

87:                                               ; preds = %25, %32, %79, %37
  ret void
}

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, i32, i32, i32, i32) #1

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
