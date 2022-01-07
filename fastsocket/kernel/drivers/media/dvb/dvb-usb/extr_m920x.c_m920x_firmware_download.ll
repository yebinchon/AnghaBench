; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_firmware_download.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_firmware_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.firmware = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M9206_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%x %x %x %x\0A\00", align 1
@M9206_FW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"error while uploading fw!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"bad firmware file!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M9206_CORE = common dso_local global i32 0, align 4
@M9206_FW_GO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"firmware uploaded!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.firmware*)* @m920x_firmware_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m920x_firmware_download(%struct.usb_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kmalloc(i32 65536, i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %157

21:                                               ; preds = %2
  %22 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %23 = load i32, i32* @M9206_FILTER, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %25 = call i32 @m920x_read(%struct.usb_device* %22, i32 %23, i32 0, i32 32768, i32* %24, i32 4)
  store i32 %25, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %153

28:                                               ; preds = %21
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @deb(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32, i32 %34, i32 %36)
  %38 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %39 = load i32, i32* @M9206_FW, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %41 = call i32 @m920x_read(%struct.usb_device* %38, i32 %39, i32 0, i32 0, i32* %40, i32 1)
  store i32 %41, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %153

44:                                               ; preds = %28
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = call i32 (i8*, ...) @deb(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %143, %44
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %146

51:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %128, %51
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 12
  %56 = load %struct.firmware*, %struct.firmware** %5, align 8
  %57 = getelementptr inbounds %struct.firmware, %struct.firmware* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %55, %59
  br i1 %60, label %61, label %132

61:                                               ; preds = %52
  %62 = load %struct.firmware*, %struct.firmware** %5, align 8
  %63 = getelementptr inbounds %struct.firmware, %struct.firmware* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = call i32 @get_unaligned_le16(i64 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, 4
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load %struct.firmware*, %struct.firmware** %5, align 8
  %74 = getelementptr inbounds %struct.firmware, %struct.firmware* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = call i32 @get_unaligned_le16(i64 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, 4
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  %84 = load %struct.firmware*, %struct.firmware** %5, align 8
  %85 = getelementptr inbounds %struct.firmware, %struct.firmware* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = call i32 @get_unaligned_le16(i64 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, 4
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %128

97:                                               ; preds = %61
  %98 = load i32*, i32** %10, align 8
  %99 = load %struct.firmware*, %struct.firmware** %5, align 8
  %100 = getelementptr inbounds %struct.firmware, %struct.firmware* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @memcpy(i32* %98, i64 %104, i32 %105)
  %107 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %108 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %109 = call i32 @usb_sndctrlpipe(%struct.usb_device* %108, i32 0)
  %110 = load i32, i32* @M9206_FW, align 4
  %111 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %112 = load i32, i32* @USB_DIR_OUT, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @usb_control_msg(%struct.usb_device* %107, i32 %109, i32 %110, i32 %113, i32 %114, i32 %115, i32* %116, i32 %117, i32 20)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %97
  %123 = call i32 (i8*, ...) @deb(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %13, align 4
  br label %153

126:                                              ; preds = %97
  %127 = call i32 @msleep(i32 3)
  br label %128

128:                                              ; preds = %126, %61
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %11, align 4
  br label %52

132:                                              ; preds = %52
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.firmware*, %struct.firmware** %5, align 8
  %135 = getelementptr inbounds %struct.firmware, %struct.firmware* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = call i32 (i8*, ...) @deb(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %13, align 4
  br label %153

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %48

146:                                              ; preds = %48
  %147 = call i32 @msleep(i32 36)
  %148 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %149 = load i32, i32* @M9206_CORE, align 4
  %150 = load i32, i32* @M9206_FW_GO, align 4
  %151 = call i32 @m920x_write(%struct.usb_device* %148, i32 %149, i32 1, i32 %150)
  %152 = call i32 (i8*, ...) @deb(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %153

153:                                              ; preds = %146, %138, %122, %43, %27
  %154 = load i32*, i32** %10, align 8
  %155 = call i32 @kfree(i32* %154)
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %153, %18
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @m920x_read(%struct.usb_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @deb(i8*, ...) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @m920x_write(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
