; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_mcs7830.c_mcs7830_set_reg_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_mcs7830.c_mcs7830_set_reg_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_ctrlrequest = type { i8*, i8*, i64, i32, i32 }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error allocating URB in write_cmd_async!\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to allocate memory for control request\0A\00", align 1
@MCS7830_WR_BMREQ = common dso_local global i32 0, align 4
@MCS7830_WR_BREQ = common dso_local global i32 0, align 4
@mcs7830_async_cmd_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Error submitting the control message: ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i32, i32, i8*)* @mcs7830_set_reg_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcs7830_set_reg_async(%struct.usbnet* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.usb_ctrlrequest*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.urb*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %12)
  store %struct.urb* %13, %struct.urb** %11, align 8
  %14 = load %struct.urb*, %struct.urb** %11, align 8
  %15 = icmp ne %struct.urb* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %83

22:                                               ; preds = %4
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.usb_ctrlrequest* @kmalloc(i32 32, i32 %23)
  store %struct.usb_ctrlrequest* %24, %struct.usb_ctrlrequest** %9, align 8
  %25 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %26 = icmp ne %struct.usb_ctrlrequest* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %29 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %78

33:                                               ; preds = %22
  %34 = load i32, i32* @MCS7830_WR_BMREQ, align 4
  %35 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %36 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @MCS7830_WR_BREQ, align 4
  %38 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %39 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %41 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %45 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %49 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.urb*, %struct.urb** %11, align 8
  %51 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %52 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %55 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %56, i32 0)
  %58 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %59 = bitcast %struct.usb_ctrlrequest* %58 to i8*
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @mcs7830_async_cmd_callback, align 4
  %63 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %64 = call i32 @usb_fill_control_urb(%struct.urb* %50, %struct.TYPE_3__* %53, i32 %57, i8* %59, i8* %60, i32 %61, i32 %62, %struct.usb_ctrlrequest* %63)
  %65 = load %struct.urb*, %struct.urb** %11, align 8
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = call i32 @usb_submit_urb(%struct.urb* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %33
  %71 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %72 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %78

77:                                               ; preds = %33
  br label %83

78:                                               ; preds = %70, %27
  %79 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %80 = call i32 @kfree(%struct.usb_ctrlrequest* %79)
  %81 = load %struct.urb*, %struct.urb** %11, align 8
  %82 = call i32 @usb_free_urb(%struct.urb* %81)
  br label %83

83:                                               ; preds = %78, %77, %16
  ret void
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, %struct.TYPE_3__*, i32, i8*, i8*, i32, i32, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @kfree(%struct.usb_ctrlrequest*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
