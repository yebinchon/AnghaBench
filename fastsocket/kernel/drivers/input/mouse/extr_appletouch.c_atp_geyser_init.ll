; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_appletouch.c_atp_geyser_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_appletouch.c_atp_geyser_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ATP_GEYSER_MODE_READ_REQUEST_ID = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@ATP_GEYSER_MODE_REQUEST_VALUE = common dso_local global i32 0, align 4
@ATP_GEYSER_MODE_REQUEST_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"atp_geyser_init: read error\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"appletouch[%d]: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to read mode from device.\00", align 1
@EIO = common dso_local global i32 0, align 4
@ATP_GEYSER_MODE_VENDOR_VALUE = common dso_local global i8 0, align 1
@ATP_GEYSER_MODE_WRITE_REQUEST_ID = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"atp_geyser_init: write error\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to request geyser raw mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @atp_geyser_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp_geyser_init(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kmalloc(i32 8, i32 %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %98

16:                                               ; preds = %1
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %19 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %18, i32 0)
  %20 = load i32, i32* @ATP_GEYSER_MODE_READ_REQUEST_ID, align 4
  %21 = load i32, i32* @USB_DIR_IN, align 4
  %22 = load i32, i32* @USB_TYPE_CLASS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ATP_GEYSER_MODE_REQUEST_VALUE, align 4
  %27 = load i32, i32* @ATP_GEYSER_MODE_REQUEST_INDEX, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @usb_control_msg(%struct.usb_device* %17, i32 %19, i32 %20, i32 %25, i32 %26, i32 %27, i8* %28, i32 8, i32 5000)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 8
  br i1 %31, label %32, label %53

32:                                               ; preds = %16
  %33 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %46, %32
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %34

49:                                               ; preds = %34
  %50 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %94

53:                                               ; preds = %16
  %54 = load i8, i8* @ATP_GEYSER_MODE_VENDOR_VALUE, align 1
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 %54, i8* %56, align 1
  %57 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %58 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %59 = call i32 @usb_sndctrlpipe(%struct.usb_device* %58, i32 0)
  %60 = load i32, i32* @ATP_GEYSER_MODE_WRITE_REQUEST_ID, align 4
  %61 = load i32, i32* @USB_DIR_OUT, align 4
  %62 = load i32, i32* @USB_TYPE_CLASS, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @ATP_GEYSER_MODE_REQUEST_VALUE, align 4
  %67 = load i32, i32* @ATP_GEYSER_MODE_REQUEST_INDEX, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @usb_control_msg(%struct.usb_device* %57, i32 %59, i32 %60, i32 %65, i32 %66, i32 %67, i8* %68, i32 8, i32 5000)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 8
  br i1 %71, label %72, label %93

72:                                               ; preds = %53
  %73 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %86, %72
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 8
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %84)
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %74

89:                                               ; preds = %74
  %90 = call i32 @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %94

93:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %89, %49
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @kfree(i8* %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %12
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
