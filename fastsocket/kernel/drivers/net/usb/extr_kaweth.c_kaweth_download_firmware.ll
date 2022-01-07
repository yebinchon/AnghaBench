; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_download_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaweth_device = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Firmware request failed\0A\00", align 1
@KAWETH_FIRMWARE_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Firmware too big: %zu\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"High: %i, Low:%i\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Downloading firmware at %p to kaweth device at %p\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Firmware length: %d\00", align 1
@KAWETH_COMMAND_SCAN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@KAWETH_CONTROL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kaweth_device*, i8*, i8*, i8*)* @kaweth_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_download_firmware(%struct.kaweth_device* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kaweth_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.firmware*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kaweth_device* %0, %struct.kaweth_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %15 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @request_firmware(%struct.firmware** %10, i8* %13, i32* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %114

24:                                               ; preds = %4
  %25 = load %struct.firmware*, %struct.firmware** %10, align 8
  %26 = getelementptr inbounds %struct.firmware, %struct.firmware* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @KAWETH_FIRMWARE_BUF_SIZE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.firmware*, %struct.firmware** %10, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %114

37:                                               ; preds = %24
  %38 = load %struct.firmware*, %struct.firmware** %10, align 8
  %39 = getelementptr inbounds %struct.firmware, %struct.firmware* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %42 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.firmware*, %struct.firmware** %10, align 8
  %45 = getelementptr inbounds %struct.firmware, %struct.firmware* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.firmware*, %struct.firmware** %10, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32* %43, i32 %46, i32 %49)
  %51 = load %struct.firmware*, %struct.firmware** %10, align 8
  %52 = call i32 @release_firmware(%struct.firmware* %51)
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 255
  %55 = sub nsw i32 %54, 7
  %56 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %57 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = ashr i32 %60, 8
  %62 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %63 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %61, i32* %65, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %69 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  store i32 %67, i32* %71, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %75 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  store i32 %73, i32* %77, align 4
  %78 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %79 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %84 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %87)
  %89 = load %struct.firmware*, %struct.firmware** %10, align 8
  %90 = getelementptr inbounds %struct.firmware, %struct.firmware* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %93 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %91, %struct.kaweth_device* %92)
  %94 = load i32, i32* %11, align 4
  %95 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %97 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %98 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = call i32 @usb_sndctrlpipe(%struct.TYPE_2__* %99, i32 0)
  %101 = load i32, i32* @KAWETH_COMMAND_SCAN, align 4
  %102 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %103 = load i32, i32* @USB_DIR_OUT, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %108 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = bitcast i32* %109 to i8*
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @KAWETH_CONTROL_TIMEOUT, align 4
  %113 = call i32 @kaweth_control(%struct.kaweth_device* %96, i32 %100, i32 %101, i32 %106, i32 0, i32 0, i8* %110, i32 %111, i32 %112)
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %37, %30, %21
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @dbg(i8*, i32, ...) #1

declare dso_local i32 @kaweth_control(%struct.kaweth_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
