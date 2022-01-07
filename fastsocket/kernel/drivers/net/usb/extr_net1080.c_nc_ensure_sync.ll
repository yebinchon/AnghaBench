; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_net1080.c_nc_ensure_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_net1080.c_nc_ensure_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32 }
%struct.urb = type { i32 }
%struct.usb_ctrlrequest = type { i32, i8*, i8*, i8*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@REQUEST_REGISTER = common dso_local global i32 0, align 4
@USBCTL_FLUSH_THIS = common dso_local global i32 0, align 4
@USBCTL_FLUSH_OTHER = common dso_local global i32 0, align 4
@REG_USBCTL = common dso_local global i32 0, align 4
@nc_flush_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"flush net1080; too many framing errors\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @nc_ensure_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nc_ensure_sync(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %6 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %7 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 5
  br i1 %13, label %14, label %85

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %15)
  store %struct.urb* %16, %struct.urb** %3, align 8
  %17 = load %struct.urb*, %struct.urb** %3, align 8
  %18 = icmp ne %struct.urb* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %85

20:                                               ; preds = %14
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.usb_ctrlrequest* @kmalloc(i32 40, i32 %21)
  store %struct.usb_ctrlrequest* %22, %struct.usb_ctrlrequest** %4, align 8
  %23 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %24 = icmp ne %struct.usb_ctrlrequest* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.urb*, %struct.urb** %3, align 8
  %27 = call i32 @usb_free_urb(%struct.urb* %26)
  br label %85

28:                                               ; preds = %20
  %29 = load i32, i32* @USB_DIR_OUT, align 4
  %30 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %35 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @REQUEST_REGISTER, align 4
  %37 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %38 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @USBCTL_FLUSH_THIS, align 4
  %40 = load i32, i32* @USBCTL_FLUSH_OTHER, align 4
  %41 = or i32 %39, %40
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %44 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @REG_USBCTL, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %48 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = call i8* @cpu_to_le16(i32 0)
  %50 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %51 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.urb*, %struct.urb** %3, align 8
  %53 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %54 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %57 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @usb_sndctrlpipe(i32 %58, i32 0)
  %60 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %61 = bitcast %struct.usb_ctrlrequest* %60 to i8*
  %62 = load i32, i32* @nc_flush_complete, align 4
  %63 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %64 = call i32 @usb_fill_control_urb(%struct.urb* %52, i32 %55, i32 %59, i8* %61, i32* null, i32 0, i32 %62, %struct.usb_ctrlrequest* %63)
  %65 = load %struct.urb*, %struct.urb** %3, align 8
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = call i32 @usb_submit_urb(%struct.urb* %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %28
  %71 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %72 = call i32 @kfree(%struct.usb_ctrlrequest* %71)
  %73 = load %struct.urb*, %struct.urb** %3, align 8
  %74 = call i32 @usb_free_urb(%struct.urb* %73)
  br label %85

75:                                               ; preds = %28
  %76 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %77 = call i64 @netif_msg_rx_err(%struct.usbnet* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %81 = call i32 @devdbg(%struct.usbnet* %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %75
  %83 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %84 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %19, %25, %70, %82, %1
  ret void
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, i32, i32, i8*, i32*, i32, i32, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @kfree(%struct.usb_ctrlrequest*) #1

declare dso_local i64 @netif_msg_rx_err(%struct.usbnet*) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
