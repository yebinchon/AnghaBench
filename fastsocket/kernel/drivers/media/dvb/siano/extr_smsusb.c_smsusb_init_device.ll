; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsusb.c_smsusb_init_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsusb.c_smsusb_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.smsdevice_params_t = type { i32, i32, %struct.smsusb_device_t*, i32, i32, i32, i32*, i32, i32, i32 }
%struct.smsusb_device_t = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.smsusb_device_t* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"kzalloc(sizeof(struct smsusb_device_t) failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@USB1_BUFFER_SIZE = common dso_local global i32 0, align 4
@smsusb1_setmode = common dso_local global i32 0, align 4
@smsusb1_detectmode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unspecified sms device type!\00", align 1
@USB2_BUFFER_SIZE = common dso_local global i32 0, align 4
@SMS_DEVICE_FAMILY2 = common dso_local global i32 0, align 4
@MAX_BUFFERS = common dso_local global i32 0, align 4
@smsusb_sendrequest = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"smscore_register_device(...) failed, rc %d\00", align 1
@MAX_URBS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"smsusb_start_streaming(...).\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"smsusb_start_streaming(...) failed\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"smscore_start_device(...) failed\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"device %p created\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @smsusb_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsusb_init_device(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smsdevice_params_t, align 8
  %7 = alloca %struct.smsusb_device_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.smsusb_device_t* @kzalloc(i32 32, i32 %10)
  store %struct.smsusb_device_t* %11, %struct.smsusb_device_t** %7, align 8
  %12 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %13 = icmp ne %struct.smsusb_device_t* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %158

18:                                               ; preds = %2
  %19 = call i32 @memset(%struct.smsdevice_params_t* %6, i32 0, i32 56)
  %20 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %21 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %22 = call i32 @usb_set_intfdata(%struct.usb_interface* %20, %struct.smsusb_device_t* %21)
  %23 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %24 = call %struct.TYPE_10__* @interface_to_usbdev(%struct.usb_interface* %23)
  %25 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %26 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %25, i32 0, i32 2
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.TYPE_11__* @sms_get_board(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %42 [
    i32 129, label %34
    i32 131, label %44
    i32 130, label %44
    i32 128, label %44
  ]

34:                                               ; preds = %18
  %35 = load i32, i32* @USB1_BUFFER_SIZE, align 4
  %36 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %37 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @smsusb1_setmode, align 4
  %39 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 9
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @smsusb1_detectmode, align 4
  %41 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 8
  store i32 %40, i32* %41, align 4
  br label %68

42:                                               ; preds = %18
  %43 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %18, %18, %18, %42
  %45 = load i32, i32* @USB2_BUFFER_SIZE, align 4
  %46 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %47 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %49 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %48, i32 0, i32 2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %52, i64 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = sext i32 %58 to i64
  %60 = sub i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %63 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @SMS_DEVICE_FAMILY2, align 4
  %65 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %44, %34
  %69 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %70 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %69, i32 0, i32 2
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 6
  store i32* %72, i32** %73, align 8
  %74 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %75 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 5
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* @MAX_BUFFERS, align 4
  %79 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 4
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @smsusb_sendrequest, align 4
  %81 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 3
  store i32 %80, i32* %81, align 8
  %82 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %83 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 2
  store %struct.smsusb_device_t* %82, %struct.smsusb_device_t** %83, align 8
  %84 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %85 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %84, i32 0, i32 2
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %6, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @usb_make_path(%struct.TYPE_10__* %86, i32 %88, i32 4)
  %90 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %91 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %90, i32 0, i32 0
  %92 = call i32 @smscore_register_device(%struct.smsdevice_params_t* %6, i32* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %68
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %99 = call i32 @smsusb_term_device(%struct.usb_interface* %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %158

101:                                              ; preds = %68
  %102 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %103 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @smscore_set_board_id(i32 %104, i32 %105)
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %128, %101
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @MAX_URBS, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %107
  %112 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %113 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %114 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  store %struct.smsusb_device_t* %112, %struct.smsusb_device_t** %119, align 8
  %120 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %121 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %120, i32 0, i32 1
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = call i32 @usb_init_urb(i32* %126)
  br label %128

128:                                              ; preds = %111
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %107

131:                                              ; preds = %107
  %132 = call i32 (i8*, ...) @sms_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %133 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %134 = call i32 @smsusb_start_streaming(%struct.smsusb_device_t* %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %139 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %140 = call i32 @smsusb_term_device(%struct.usb_interface* %139)
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %3, align 4
  br label %158

142:                                              ; preds = %131
  %143 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %144 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @smscore_start_device(i32 %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %151 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %152 = call i32 @smsusb_term_device(%struct.usb_interface* %151)
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %3, align 4
  br label %158

154:                                              ; preds = %142
  %155 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %156 = call i32 (i8*, ...) @sms_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), %struct.smsusb_device_t* %155)
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %154, %149, %137, %95, %14
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.smsusb_device_t* @kzalloc(i32, i32) #1

declare dso_local i32 @sms_err(i8*, ...) #1

declare dso_local i32 @memset(%struct.smsdevice_params_t*, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.smsusb_device_t*) #1

declare dso_local %struct.TYPE_10__* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.TYPE_11__* @sms_get_board(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_make_path(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @smscore_register_device(%struct.smsdevice_params_t*, i32*) #1

declare dso_local i32 @smsusb_term_device(%struct.usb_interface*) #1

declare dso_local i32 @smscore_set_board_id(i32, i32) #1

declare dso_local i32 @usb_init_urb(i32*) #1

declare dso_local i32 @sms_info(i8*, ...) #1

declare dso_local i32 @smsusb_start_streaming(%struct.smsusb_device_t*) #1

declare dso_local i32 @smscore_start_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
