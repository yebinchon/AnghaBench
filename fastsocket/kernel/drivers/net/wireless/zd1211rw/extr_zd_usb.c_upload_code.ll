; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_upload_code.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_upload_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@MAX_TRANSFER_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"transfer size %zu\0A\00", align 1
@USB_REQ_FIRMWARE_DOWNLOAD = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"USB control request for firmware upload failed. Error number %d\0A\00", align 1
@REBOOT = common dso_local global i32 0, align 4
@USB_REQ_FIRMWARE_CONFIRM = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"control request firmeware confirmation failed. Return value %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [71 x i8] c"Internal error while downloading. Firmware confirm return value %#04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"firmware confirm return value %#04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32*, i64, i64, i32)* @upload_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload_code(%struct.usb_device* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i64, i64* @MAX_TRANSFER_SIZE, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i64 %15, i32 %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = call i32 (i32*, i8*, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  br label %133

26:                                               ; preds = %5
  %27 = load i64, i64* %8, align 8
  %28 = and i64 %27, -2
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %70, %26
  %30 = load i64, i64* %8, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %84

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @MAX_TRANSFER_SIZE, align 8
  %35 = icmp ule i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  br label %40

38:                                               ; preds = %32
  %39 = load i64, i64* @MAX_TRANSFER_SIZE, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  store i64 %41, i64* %13, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 0
  %44 = load i64, i64* %13, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @dev_dbg_f(i32* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %11, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @memcpy(i32* %47, i32* %48, i64 %49)
  %51 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %53 = call i32 @usb_sndctrlpipe(%struct.usb_device* %52, i32 0)
  %54 = load i32, i32* @USB_REQ_FIRMWARE_DOWNLOAD, align 4
  %55 = load i32, i32* @USB_DIR_OUT, align 4
  %56 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %57 = or i32 %55, %56
  %58 = load i64, i64* %9, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i64, i64* %13, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @usb_control_msg(%struct.usb_device* %51, i32 %53, i32 %54, i32 %57, i64 %58, i32 0, i32* %59, i32 %61, i32 1000)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %40
  %66 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %67 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %66, i32 0, i32 0
  %68 = load i32, i32* %12, align 4
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %133

70:                                               ; preds = %40
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, -2
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %8, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 %77
  store i32* %79, i32** %7, align 8
  %80 = load i64, i64* %13, align 8
  %81 = udiv i64 %80, 8
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %9, align 8
  br label %29

84:                                               ; preds = %29
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @REBOOT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %132

89:                                               ; preds = %84
  %90 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %91 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %92 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %91, i32 0)
  %93 = load i32, i32* @USB_REQ_FIRMWARE_CONFIRM, align 4
  %94 = load i32, i32* @USB_DIR_IN, align 4
  %95 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %96 = or i32 %94, %95
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @usb_control_msg(%struct.usb_device* %90, i32 %92, i32 %93, i32 %96, i64 0, i32 0, i32* %97, i32 4, i32 5000)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp ne i64 %100, 4
  br i1 %101, label %102, label %113

102:                                              ; preds = %89
  %103 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %104 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %103, i32 0, i32 0
  %105 = load i32, i32* %12, align 4
  %106 = call i32 (i32*, i8*, ...) @dev_err(i32* %104, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %12, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %109, %102
  br label %133

113:                                              ; preds = %89
  %114 = load i32*, i32** %11, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = and i32 %117, 128
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %122 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %121, i32 0, i32 0
  %123 = load i32, i32* %14, align 4
  %124 = call i32 (i32*, i8*, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @ENODEV, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %12, align 4
  br label %133

127:                                              ; preds = %113
  %128 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %129 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %128, i32 0, i32 0
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @dev_dbg_f(i32* %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %127, %84
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %132, %120, %112, %65, %20
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @kfree(i32* %134)
  %136 = load i32, i32* %12, align 4
  ret i32 %136
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg_f(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
