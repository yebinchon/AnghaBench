; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-init.c_dvb_usb_adapter_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-init.c_dvb_usb_adapter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_6__, %struct.TYPE_7__*, i32, i32, %struct.dvb_usb_adapter* }
%struct.TYPE_6__ = type { i32, i64, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.dvb_usb_adapter = type { i32, i32, i32, i32*, %struct.TYPE_8__, %struct.dvb_usb_device* }
%struct.TYPE_8__ = type { i32, i32, i64 }

@USB_SPEED_FULL = common dso_local global i64 0, align 8
@DVB_USB_ADAP_HAS_PID_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"This USB2.0 device cannot be run on a USB1.1 port. (it lacks a hardware PID filter)\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DVB_USB_ADAP_NEED_PID_FILTERING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"will use the device's hardware PID filter (table count: %d).\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"will pass the complete MPEG2 transport stream to the software demuxer.\00", align 1
@dvb_usb_force_pid_filter_usage = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"pid filter enabled by module option.\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"no memory for priv for adapter %d.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DVB_USB_STATE_DVB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i16*)* @dvb_usb_adapter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_usb_adapter_init(%struct.dvb_usb_device* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca %struct.dvb_usb_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %178, %2
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %181

16:                                               ; preds = %9
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 4
  %19 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %19, i64 %21
  store %struct.dvb_usb_adapter* %22, %struct.dvb_usb_adapter** %6, align 8
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %24 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %24, i32 0, i32 5
  store %struct.dvb_usb_device* %23, %struct.dvb_usb_device** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %29, i32 0, i32 4
  %31 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @memcpy(%struct.TYPE_8__* %30, i32* %37, i32 4)
  %39 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @USB_SPEED_FULL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %16
  %47 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DVB_USB_ADAP_HAS_PID_FILTER, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %213

58:                                               ; preds = %46, %16
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %60 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @USB_SPEED_FULL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @DVB_USB_ADAP_HAS_PID_FILTER, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %66, %58
  %75 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %76 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @DVB_USB_ADAP_NEED_PID_FILTERING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %74, %66
  %83 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %89 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %91 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %95 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  br label %102

96:                                               ; preds = %74
  %97 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %99 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %101 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %100, i32 0, i32 2
  store i32 255, i32* %101, align 8
  br label %102

102:                                              ; preds = %96, %82
  %103 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %104 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %128, label %107

107:                                              ; preds = %102
  %108 = load i64, i64* @dvb_usb_force_pid_filter_usage, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %112 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DVB_USB_ADAP_HAS_PID_FILTER, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %110
  %119 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %120 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %121 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  %122 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %127 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %118, %110, %107, %102
  %129 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %130 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %128
  %135 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %136 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call i32* @kzalloc(i64 %138, i32 %139)
  %141 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %142 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %141, i32 0, i32 3
  store i32* %140, i32** %142, align 8
  %143 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %144 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %134
  %148 = load i32, i32* %8, align 4
  %149 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %213

152:                                              ; preds = %134
  br label %153

153:                                              ; preds = %152, %128
  %154 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %155 = call i32 @dvb_usb_adapter_stream_init(%struct.dvb_usb_adapter* %154)
  store i32 %155, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %153
  %158 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %159 = load i16*, i16** %5, align 8
  %160 = call i32 @dvb_usb_adapter_dvb_init(%struct.dvb_usb_adapter* %158, i16* %159)
  store i32 %160, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %164 = call i32 @dvb_usb_adapter_frontend_init(%struct.dvb_usb_adapter* %163)
  store i32 %164, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %162, %157, %153
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %3, align 4
  br label %213

168:                                              ; preds = %162
  %169 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %170 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* @DVB_USB_STATE_DVB, align 4
  %174 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %175 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %168
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %9

181:                                              ; preds = %9
  %182 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %183 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %212

187:                                              ; preds = %181
  %188 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %189 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %188, i32 0, i32 1
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %192 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %191, i32 0, i32 1
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %195 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @usb_sndbulkpipe(%struct.TYPE_7__* %193, i64 %197)
  %199 = call i32 @usb_clear_halt(%struct.TYPE_7__* %190, i32 %198)
  %200 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %201 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %200, i32 0, i32 1
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %204 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %203, i32 0, i32 1
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %207 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @usb_rcvbulkpipe(%struct.TYPE_7__* %205, i64 %209)
  %211 = call i32 @usb_clear_halt(%struct.TYPE_7__* %202, i32 %210)
  br label %212

212:                                              ; preds = %187, %181
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %212, %166, %147, %54
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @dvb_usb_adapter_stream_init(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @dvb_usb_adapter_dvb_init(%struct.dvb_usb_adapter*, i16*) #1

declare dso_local i32 @dvb_usb_adapter_frontend_init(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @usb_clear_halt(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
