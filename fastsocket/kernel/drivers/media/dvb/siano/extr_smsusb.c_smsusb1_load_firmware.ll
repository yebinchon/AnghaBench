; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsusb.c_smsusb1_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsusb.c_smsusb1_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.firmware = type { i32, i32 }

@DEVICE_MODE_DVBT = common dso_local global i32 0, align 4
@DEVICE_MODE_DVBT_BDA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid firmware id specified %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"failed to open \22%s\22 mode %d, trying again with default firmware\00", align 1
@smsusb1_fw_lkup = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to open \22%s\22 mode %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"sent %zd(%d) bytes, rc %d\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to allocate firmware buffer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"read FW %s, size=%zd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32)* @smsusb1_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsusb1_load_firmware(%struct.usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DEVICE_MODE_DVBT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @DEVICE_MODE_DVBT_BDA, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %104

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @sms_get_fw_name(i32 %26, i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = call i32 @request_firmware(%struct.firmware** %8, i8* %29, i32* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %25
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @sms_warn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %37)
  %39 = load i8**, i8*** @smsusb1_fw_lkup, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 0
  %47 = call i32 @request_firmware(%struct.firmware** %8, i8* %44, i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %35
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @sms_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %104

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55, %25
  %57 = load %struct.firmware*, %struct.firmware** %8, align 8
  %58 = getelementptr inbounds %struct.firmware, %struct.firmware* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32* @kmalloc(i32 %59, i32 %60)
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %91

64:                                               ; preds = %56
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.firmware*, %struct.firmware** %8, align 8
  %67 = getelementptr inbounds %struct.firmware, %struct.firmware* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.firmware*, %struct.firmware** %8, align 8
  %70 = getelementptr inbounds %struct.firmware, %struct.firmware* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memcpy(i32* %65, i32 %68, i32 %71)
  %73 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %74 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %75 = call i32 @usb_sndbulkpipe(%struct.usb_device* %74, i32 2)
  %76 = load i32*, i32** %9, align 8
  %77 = load %struct.firmware*, %struct.firmware** %8, align 8
  %78 = getelementptr inbounds %struct.firmware, %struct.firmware* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @usb_bulk_msg(%struct.usb_device* %73, i32 %75, i32* %76, i32 %79, i32* %11, i32 1000)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.firmware*, %struct.firmware** %8, align 8
  %82 = getelementptr inbounds %struct.firmware, %struct.firmware* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 (i8*, i8*, i32, ...) @sms_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %85, i32 %86, i32 %87)
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @kfree(i32* %89)
  br label %95

91:                                               ; preds = %56
  %92 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %91, %64
  %96 = load i8*, i8** %12, align 8
  %97 = load %struct.firmware*, %struct.firmware** %8, align 8
  %98 = getelementptr inbounds %struct.firmware, %struct.firmware* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, i8*, i32, ...) @sms_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %96, i32 %99)
  %101 = load %struct.firmware*, %struct.firmware** %8, align 8
  %102 = call i32 @release_firmware(%struct.firmware* %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %95, %50, %20
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @sms_err(i8*, ...) #1

declare dso_local i8* @sms_get_fw_name(i32, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @sms_warn(i8*, i8*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @sms_info(i8*, i8*, i32, ...) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
