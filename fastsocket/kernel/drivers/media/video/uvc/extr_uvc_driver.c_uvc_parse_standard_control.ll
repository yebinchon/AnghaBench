; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_parse_standard_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_parse_standard_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32, i32, i32, %struct.TYPE_7__*, %struct.usb_device* }
%struct.TYPE_7__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.uvc_entity = type { i32, i32, %struct.TYPE_12__, i32*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i8, i8, i32*, i32* }
%struct.TYPE_10__ = type { i8, i8, i32*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32*, i8*, i8*, i8* }
%struct.usb_interface = type { i32 }

@UVC_TRACE_DESCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"device %d videocontrol interface %d HEADER error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"device %d interface %d doesn't exists\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"device %d videocontrol interface %d INPUT_TERMINAL error\0A\00", align 1
@.str.3 = private unnamed_addr constant [89 x i8] c"device %d videocontrol interface %d INPUT_TERMINAL %d has invalid type 0x%04x, skipping\0A\00", align 1
@UVC_ITT_CAMERA = common dso_local global i32 0, align 4
@UVC_ITT_MEDIA_TRANSPORT_INPUT = common dso_local global i32 0, align 4
@UVC_TERM_INPUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Camera %u\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Media %u\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Input %u\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"device %d videocontrol interface %d OUTPUT_TERMINAL error\0A\00", align 1
@.str.8 = private unnamed_addr constant [90 x i8] c"device %d videocontrol interface %d OUTPUT_TERMINAL %d has invalid type 0x%04x, skipping\0A\00", align 1
@UVC_TERM_OUTPUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"Output %u\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"device %d videocontrol interface %d SELECTOR_UNIT error\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Selector %u\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"device %d videocontrol interface %d PROCESSING_UNIT error\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Processing %u\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"device %d videocontrol interface %d EXTENSION_UNIT error\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Extension %u\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Found an unknown CS_INTERFACE descriptor (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, i8*, i32)* @uvc_parse_standard_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_parse_standard_control(%struct.uvc_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.uvc_entity*, align 8
  %10 = alloca %struct.uvc_entity*, align 8
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca %struct.usb_host_interface*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %19 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %18, i32 0, i32 4
  %20 = load %struct.usb_device*, %struct.usb_device** %19, align 8
  store %struct.usb_device* %20, %struct.usb_device** %8, align 8
  %21 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %22 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %21, i32 0, i32 3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.usb_host_interface*, %struct.usb_host_interface** %24, align 8
  store %struct.usb_host_interface* %25, %struct.usb_host_interface** %12, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  switch i32 %29, label %830 [
    i32 132, label %30
    i32 131, label %104
    i32 130, label %376
    i32 128, label %465
    i32 129, label %553
    i32 133, label %684
  ]

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %31, 12
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 11
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  br label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %33
  %40 = phi i32 [ %37, %33 ], [ 0, %38 ]
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 12
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %14, align 4
  %46 = add i32 12, %45
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %43, %39
  %49 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %50 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %51 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = trunc i32 %52 to i8
  %54 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %55 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8 zeroext %53, i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %837

61:                                               ; preds = %43
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = call i8* @get_unaligned_le16(i8* %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %67 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 7
  %70 = call i32 @get_unaligned_le32(i8* %69)
  %71 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %72 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %100, %61
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %73
  %78 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %13, align 4
  %81 = add i32 12, %80
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %78, i8 zeroext %84)
  store %struct.usb_interface* %85, %struct.usb_interface** %11, align 8
  %86 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %87 = icmp eq %struct.usb_interface* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %77
  %89 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %90 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = trunc i32 %92 to i8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %93, i32 %94)
  br label %100

96:                                               ; preds = %77
  %97 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %98 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %99 = call i32 @uvc_parse_streaming(%struct.uvc_device* %97, %struct.usb_interface* %98)
  br label %100

100:                                              ; preds = %96, %88
  %101 = load i32, i32* %13, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %73

103:                                              ; preds = %73
  br label %836

104:                                              ; preds = %3
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 8
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %109 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %110 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = trunc i32 %111 to i8
  %113 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %114 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %108, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %112, i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %837

120:                                              ; preds = %104
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 4
  %123 = call i8* @get_unaligned_le16(i8* %122)
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = and i32 %125, 65280
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %120
  %129 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %130 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %131 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = trunc i32 %132 to i8
  %134 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %135 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 3
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = load i32, i32* %17, align 4
  %143 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %129, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %133, i32 %137, i32 %141, i32 %142)
  store i32 0, i32* %4, align 4
  br label %837

144:                                              ; preds = %120
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 8, i32* %16, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* @UVC_ITT_CAMERA, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %144
  %149 = load i32, i32* %7, align 4
  %150 = icmp sge i32 %149, 15
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i8*, i8** %6, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 14
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  br label %157

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %151
  %158 = phi i32 [ %155, %151 ], [ 0, %156 ]
  store i32 %158, i32* %14, align 4
  store i32 15, i32* %16, align 4
  br label %190

159:                                              ; preds = %144
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* @UVC_ITT_MEDIA_TRANSPORT_INPUT, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %189

163:                                              ; preds = %159
  %164 = load i32, i32* %7, align 4
  %165 = icmp sge i32 %164, 9
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 8
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  br label %172

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %171, %166
  %173 = phi i32 [ %170, %166 ], [ 0, %171 ]
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %14, align 4
  %176 = add i32 10, %175
  %177 = icmp uge i32 %174, %176
  br i1 %177, label %178, label %186

178:                                              ; preds = %172
  %179 = load i8*, i8** %6, align 8
  %180 = load i32, i32* %14, align 4
  %181 = add i32 9, %180
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  br label %187

186:                                              ; preds = %172
  br label %187

187:                                              ; preds = %186, %178
  %188 = phi i32 [ %185, %178 ], [ 0, %186 ]
  store i32 %188, i32* %15, align 4
  store i32 10, i32* %16, align 4
  br label %189

189:                                              ; preds = %187, %159
  br label %190

190:                                              ; preds = %189, %157
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %14, align 4
  %194 = add i32 %192, %193
  %195 = load i32, i32* %15, align 4
  %196 = add i32 %194, %195
  %197 = icmp ult i32 %191, %196
  br i1 %197, label %198, label %211

198:                                              ; preds = %190
  %199 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %200 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %201 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = trunc i32 %202 to i8
  %204 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %205 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %199, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %203, i32 %207)
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %4, align 4
  br label %837

211:                                              ; preds = %190
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* @UVC_TERM_INPUT, align 4
  %214 = or i32 %212, %213
  %215 = trunc i32 %214 to i8
  %216 = load i8*, i8** %6, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 3
  %218 = load i8, i8* %217, align 1
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %15, align 4
  %221 = add i32 %219, %220
  %222 = call %struct.uvc_entity* @uvc_alloc_entity(i8 zeroext %215, i8 zeroext %218, i32 1, i32 %221)
  store %struct.uvc_entity* %222, %struct.uvc_entity** %10, align 8
  %223 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %224 = icmp eq %struct.uvc_entity* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %211
  %226 = load i32, i32* @ENOMEM, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %4, align 4
  br label %837

228:                                              ; preds = %211
  %229 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %230 = call i32 @UVC_ENTITY_TYPE(%struct.uvc_entity* %229)
  %231 = load i32, i32* @UVC_ITT_CAMERA, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %270

233:                                              ; preds = %228
  %234 = load i32, i32* %14, align 4
  %235 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %236 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  store i32 %234, i32* %237, align 8
  %238 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %239 = bitcast %struct.uvc_entity* %238 to i32*
  %240 = getelementptr inbounds i32, i32* %239, i64 128
  %241 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %242 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  store i32* %240, i32** %243, align 8
  %244 = load i8*, i8** %6, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 8
  %246 = call i8* @get_unaligned_le16(i8* %245)
  %247 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %248 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %247, i32 0, i32 6
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 4
  store i8* %246, i8** %249, align 8
  %250 = load i8*, i8** %6, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 10
  %252 = call i8* @get_unaligned_le16(i8* %251)
  %253 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %254 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %253, i32 0, i32 6
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 3
  store i8* %252, i8** %255, align 8
  %256 = load i8*, i8** %6, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 12
  %258 = call i8* @get_unaligned_le16(i8* %257)
  %259 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %260 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 2
  store i8* %258, i8** %261, align 8
  %262 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %263 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %262, i32 0, i32 6
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load i8*, i8** %6, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 15
  %268 = load i32, i32* %14, align 4
  %269 = call i32 @memcpy(i32* %265, i8* %267, i32 %268)
  br label %319

270:                                              ; preds = %228
  %271 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %272 = call i32 @UVC_ENTITY_TYPE(%struct.uvc_entity* %271)
  %273 = load i32, i32* @UVC_ITT_MEDIA_TRANSPORT_INPUT, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %318

275:                                              ; preds = %270
  %276 = load i32, i32* %14, align 4
  %277 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %278 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 0
  store i32 %276, i32* %279, align 8
  %280 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %281 = bitcast %struct.uvc_entity* %280 to i32*
  %282 = getelementptr inbounds i32, i32* %281, i64 128
  %283 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %284 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %283, i32 0, i32 5
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 3
  store i32* %282, i32** %285, align 8
  %286 = load i32, i32* %15, align 4
  %287 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %288 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 1
  store i32 %286, i32* %289, align 4
  %290 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %291 = bitcast %struct.uvc_entity* %290 to i32*
  %292 = getelementptr inbounds i32, i32* %291, i64 128
  %293 = load i32, i32* %14, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %297 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 2
  store i32* %295, i32** %298, align 8
  %299 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %300 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %299, i32 0, i32 5
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 3
  %302 = load i32*, i32** %301, align 8
  %303 = load i8*, i8** %6, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 9
  %305 = load i32, i32* %14, align 4
  %306 = call i32 @memcpy(i32* %302, i8* %304, i32 %305)
  %307 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %308 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %307, i32 0, i32 5
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 2
  %310 = load i32*, i32** %309, align 8
  %311 = load i8*, i8** %6, align 8
  %312 = load i32, i32* %14, align 4
  %313 = add i32 10, %312
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds i8, i8* %311, i64 %314
  %316 = load i32, i32* %15, align 4
  %317 = call i32 @memcpy(i32* %310, i8* %315, i32 %316)
  br label %318

318:                                              ; preds = %275, %270
  br label %319

319:                                              ; preds = %318, %233
  %320 = load i8*, i8** %6, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 7
  %322 = load i8, i8* %321, align 1
  %323 = zext i8 %322 to i32
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %334

325:                                              ; preds = %319
  %326 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %327 = load i8*, i8** %6, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 7
  %329 = load i8, i8* %328, align 1
  %330 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %331 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @usb_string(%struct.usb_device* %326, i8 zeroext %329, i32 %332, i32 4)
  br label %370

334:                                              ; preds = %319
  %335 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %336 = call i32 @UVC_ENTITY_TYPE(%struct.uvc_entity* %335)
  %337 = load i32, i32* @UVC_ITT_CAMERA, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %347

339:                                              ; preds = %334
  %340 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %341 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load i8*, i8** %6, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 3
  %345 = load i8, i8* %344, align 1
  %346 = call i32 @sprintf(i32 %342, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %345)
  br label %369

347:                                              ; preds = %334
  %348 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %349 = call i32 @UVC_ENTITY_TYPE(%struct.uvc_entity* %348)
  %350 = load i32, i32* @UVC_ITT_MEDIA_TRANSPORT_INPUT, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %352, label %360

352:                                              ; preds = %347
  %353 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %354 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load i8*, i8** %6, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 3
  %358 = load i8, i8* %357, align 1
  %359 = call i32 @sprintf(i32 %355, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8 zeroext %358)
  br label %368

360:                                              ; preds = %347
  %361 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %362 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = load i8*, i8** %6, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 3
  %366 = load i8, i8* %365, align 1
  %367 = call i32 @sprintf(i32 %363, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8 zeroext %366)
  br label %368

368:                                              ; preds = %360, %352
  br label %369

369:                                              ; preds = %368, %339
  br label %370

370:                                              ; preds = %369, %325
  %371 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %372 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %371, i32 0, i32 0
  %373 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %374 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %373, i32 0, i32 1
  %375 = call i32 @list_add_tail(i32* %372, i32* %374)
  br label %836

376:                                              ; preds = %3
  %377 = load i32, i32* %7, align 4
  %378 = icmp slt i32 %377, 9
  br i1 %378, label %379, label %392

379:                                              ; preds = %376
  %380 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %381 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %382 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = trunc i32 %383 to i8
  %385 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %386 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %380, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i8 zeroext %384, i32 %388)
  %390 = load i32, i32* @EINVAL, align 4
  %391 = sub nsw i32 0, %390
  store i32 %391, i32* %4, align 4
  br label %837

392:                                              ; preds = %376
  %393 = load i8*, i8** %6, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 4
  %395 = call i8* @get_unaligned_le16(i8* %394)
  %396 = ptrtoint i8* %395 to i32
  store i32 %396, i32* %17, align 4
  %397 = load i32, i32* %17, align 4
  %398 = and i32 %397, 65280
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %416

400:                                              ; preds = %392
  %401 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %402 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %403 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = trunc i32 %404 to i8
  %406 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %407 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = load i8*, i8** %6, align 8
  %411 = getelementptr inbounds i8, i8* %410, i64 3
  %412 = load i8, i8* %411, align 1
  %413 = zext i8 %412 to i32
  %414 = load i32, i32* %17, align 4
  %415 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %401, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.8, i64 0, i64 0), i8 zeroext %405, i32 %409, i32 %413, i32 %414)
  store i32 0, i32* %4, align 4
  br label %837

416:                                              ; preds = %392
  %417 = load i32, i32* %17, align 4
  %418 = load i32, i32* @UVC_TERM_OUTPUT, align 4
  %419 = or i32 %417, %418
  %420 = trunc i32 %419 to i8
  %421 = load i8*, i8** %6, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 3
  %423 = load i8, i8* %422, align 1
  %424 = call %struct.uvc_entity* @uvc_alloc_entity(i8 zeroext %420, i8 zeroext %423, i32 1, i32 0)
  store %struct.uvc_entity* %424, %struct.uvc_entity** %10, align 8
  %425 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %426 = icmp eq %struct.uvc_entity* %425, null
  br i1 %426, label %427, label %430

427:                                              ; preds = %416
  %428 = load i32, i32* @ENOMEM, align 4
  %429 = sub nsw i32 0, %428
  store i32 %429, i32* %4, align 4
  br label %837

430:                                              ; preds = %416
  %431 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %432 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %431, i32 0, i32 3
  %433 = load i32*, i32** %432, align 8
  %434 = load i8*, i8** %6, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 7
  %436 = call i32 @memcpy(i32* %433, i8* %435, i32 1)
  %437 = load i8*, i8** %6, align 8
  %438 = getelementptr inbounds i8, i8* %437, i64 8
  %439 = load i8, i8* %438, align 1
  %440 = zext i8 %439 to i32
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %451

442:                                              ; preds = %430
  %443 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %444 = load i8*, i8** %6, align 8
  %445 = getelementptr inbounds i8, i8* %444, i64 8
  %446 = load i8, i8* %445, align 1
  %447 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %448 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = call i32 @usb_string(%struct.usb_device* %443, i8 zeroext %446, i32 %449, i32 4)
  br label %459

451:                                              ; preds = %430
  %452 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %453 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = load i8*, i8** %6, align 8
  %456 = getelementptr inbounds i8, i8* %455, i64 3
  %457 = load i8, i8* %456, align 1
  %458 = call i32 @sprintf(i32 %454, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8 zeroext %457)
  br label %459

459:                                              ; preds = %451, %442
  %460 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %461 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %460, i32 0, i32 0
  %462 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %463 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %462, i32 0, i32 1
  %464 = call i32 @list_add_tail(i32* %461, i32* %463)
  br label %836

465:                                              ; preds = %3
  %466 = load i32, i32* %7, align 4
  %467 = icmp sge i32 %466, 5
  br i1 %467, label %468, label %473

468:                                              ; preds = %465
  %469 = load i8*, i8** %6, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 4
  %471 = load i8, i8* %470, align 1
  %472 = zext i8 %471 to i32
  br label %474

473:                                              ; preds = %465
  br label %474

474:                                              ; preds = %473, %468
  %475 = phi i32 [ %472, %468 ], [ 0, %473 ]
  store i32 %475, i32* %15, align 4
  %476 = load i32, i32* %7, align 4
  %477 = icmp slt i32 %476, 5
  br i1 %477, label %483, label %478

478:                                              ; preds = %474
  %479 = load i32, i32* %7, align 4
  %480 = load i32, i32* %15, align 4
  %481 = add i32 6, %480
  %482 = icmp ult i32 %479, %481
  br i1 %482, label %483, label %496

483:                                              ; preds = %478, %474
  %484 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %485 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %486 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = trunc i32 %487 to i8
  %489 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %490 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 4
  %493 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %484, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i8 zeroext %488, i32 %492)
  %494 = load i32, i32* @EINVAL, align 4
  %495 = sub nsw i32 0, %494
  store i32 %495, i32* %4, align 4
  br label %837

496:                                              ; preds = %478
  %497 = load i8*, i8** %6, align 8
  %498 = getelementptr inbounds i8, i8* %497, i64 2
  %499 = load i8, i8* %498, align 1
  %500 = load i8*, i8** %6, align 8
  %501 = getelementptr inbounds i8, i8* %500, i64 3
  %502 = load i8, i8* %501, align 1
  %503 = load i32, i32* %15, align 4
  %504 = add i32 %503, 1
  %505 = call %struct.uvc_entity* @uvc_alloc_entity(i8 zeroext %499, i8 zeroext %502, i32 %504, i32 0)
  store %struct.uvc_entity* %505, %struct.uvc_entity** %9, align 8
  %506 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %507 = icmp eq %struct.uvc_entity* %506, null
  br i1 %507, label %508, label %511

508:                                              ; preds = %496
  %509 = load i32, i32* @ENOMEM, align 4
  %510 = sub nsw i32 0, %509
  store i32 %510, i32* %4, align 4
  br label %837

511:                                              ; preds = %496
  %512 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %513 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %512, i32 0, i32 3
  %514 = load i32*, i32** %513, align 8
  %515 = load i8*, i8** %6, align 8
  %516 = getelementptr inbounds i8, i8* %515, i64 5
  %517 = load i32, i32* %15, align 4
  %518 = call i32 @memcpy(i32* %514, i8* %516, i32 %517)
  %519 = load i8*, i8** %6, align 8
  %520 = load i32, i32* %15, align 4
  %521 = add i32 5, %520
  %522 = zext i32 %521 to i64
  %523 = getelementptr inbounds i8, i8* %519, i64 %522
  %524 = load i8, i8* %523, align 1
  %525 = zext i8 %524 to i32
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %539

527:                                              ; preds = %511
  %528 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %529 = load i8*, i8** %6, align 8
  %530 = load i32, i32* %15, align 4
  %531 = add i32 5, %530
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds i8, i8* %529, i64 %532
  %534 = load i8, i8* %533, align 1
  %535 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %536 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = call i32 @usb_string(%struct.usb_device* %528, i8 zeroext %534, i32 %537, i32 4)
  br label %547

539:                                              ; preds = %511
  %540 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %541 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %540, i32 0, i32 1
  %542 = load i32, i32* %541, align 4
  %543 = load i8*, i8** %6, align 8
  %544 = getelementptr inbounds i8, i8* %543, i64 3
  %545 = load i8, i8* %544, align 1
  %546 = call i32 @sprintf(i32 %542, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8 zeroext %545)
  br label %547

547:                                              ; preds = %539, %527
  %548 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %549 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %548, i32 0, i32 0
  %550 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %551 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %550, i32 0, i32 1
  %552 = call i32 @list_add_tail(i32* %549, i32* %551)
  br label %836

553:                                              ; preds = %3
  %554 = load i32, i32* %7, align 4
  %555 = icmp sge i32 %554, 8
  br i1 %555, label %556, label %561

556:                                              ; preds = %553
  %557 = load i8*, i8** %6, align 8
  %558 = getelementptr inbounds i8, i8* %557, i64 7
  %559 = load i8, i8* %558, align 1
  %560 = zext i8 %559 to i32
  br label %562

561:                                              ; preds = %553
  br label %562

562:                                              ; preds = %561, %556
  %563 = phi i32 [ %560, %556 ], [ 0, %561 ]
  store i32 %563, i32* %14, align 4
  %564 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %565 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 8
  %567 = icmp sge i32 %566, 272
  %568 = zext i1 %567 to i64
  %569 = select i1 %567, i32 10, i32 9
  store i32 %569, i32* %15, align 4
  %570 = load i32, i32* %7, align 4
  %571 = load i32, i32* %15, align 4
  %572 = load i32, i32* %14, align 4
  %573 = add i32 %571, %572
  %574 = icmp ult i32 %570, %573
  br i1 %574, label %575, label %588

575:                                              ; preds = %562
  %576 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %577 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %578 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 4
  %580 = trunc i32 %579 to i8
  %581 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %582 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 4
  %585 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %576, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i8 zeroext %580, i32 %584)
  %586 = load i32, i32* @EINVAL, align 4
  %587 = sub nsw i32 0, %586
  store i32 %587, i32* %4, align 4
  br label %837

588:                                              ; preds = %562
  %589 = load i8*, i8** %6, align 8
  %590 = getelementptr inbounds i8, i8* %589, i64 2
  %591 = load i8, i8* %590, align 1
  %592 = load i8*, i8** %6, align 8
  %593 = getelementptr inbounds i8, i8* %592, i64 3
  %594 = load i8, i8* %593, align 1
  %595 = load i32, i32* %14, align 4
  %596 = call %struct.uvc_entity* @uvc_alloc_entity(i8 zeroext %591, i8 zeroext %594, i32 2, i32 %595)
  store %struct.uvc_entity* %596, %struct.uvc_entity** %9, align 8
  %597 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %598 = icmp eq %struct.uvc_entity* %597, null
  br i1 %598, label %599, label %602

599:                                              ; preds = %588
  %600 = load i32, i32* @ENOMEM, align 4
  %601 = sub nsw i32 0, %600
  store i32 %601, i32* %4, align 4
  br label %837

602:                                              ; preds = %588
  %603 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %604 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %603, i32 0, i32 3
  %605 = load i32*, i32** %604, align 8
  %606 = load i8*, i8** %6, align 8
  %607 = getelementptr inbounds i8, i8* %606, i64 4
  %608 = call i32 @memcpy(i32* %605, i8* %607, i32 1)
  %609 = load i8*, i8** %6, align 8
  %610 = getelementptr inbounds i8, i8* %609, i64 5
  %611 = call i8* @get_unaligned_le16(i8* %610)
  %612 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %613 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %612, i32 0, i32 4
  %614 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %613, i32 0, i32 3
  store i8* %611, i8** %614, align 8
  %615 = load i8*, i8** %6, align 8
  %616 = getelementptr inbounds i8, i8* %615, i64 7
  %617 = load i8, i8* %616, align 1
  %618 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %619 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %618, i32 0, i32 4
  %620 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %619, i32 0, i32 0
  store i8 %617, i8* %620, align 8
  %621 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %622 = bitcast %struct.uvc_entity* %621 to i32*
  %623 = getelementptr inbounds i32, i32* %622, i64 128
  %624 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %625 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %624, i32 0, i32 4
  %626 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %625, i32 0, i32 2
  store i32* %623, i32** %626, align 8
  %627 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %628 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %627, i32 0, i32 4
  %629 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %628, i32 0, i32 2
  %630 = load i32*, i32** %629, align 8
  %631 = load i8*, i8** %6, align 8
  %632 = getelementptr inbounds i8, i8* %631, i64 8
  %633 = load i32, i32* %14, align 4
  %634 = call i32 @memcpy(i32* %630, i8* %632, i32 %633)
  %635 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %636 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 8
  %638 = icmp sge i32 %637, 272
  br i1 %638, label %639, label %649

639:                                              ; preds = %602
  %640 = load i8*, i8** %6, align 8
  %641 = load i32, i32* %14, align 4
  %642 = add i32 9, %641
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds i8, i8* %640, i64 %643
  %645 = load i8, i8* %644, align 1
  %646 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %647 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %646, i32 0, i32 4
  %648 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %647, i32 0, i32 1
  store i8 %645, i8* %648, align 1
  br label %649

649:                                              ; preds = %639, %602
  %650 = load i8*, i8** %6, align 8
  %651 = load i32, i32* %14, align 4
  %652 = add i32 8, %651
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds i8, i8* %650, i64 %653
  %655 = load i8, i8* %654, align 1
  %656 = zext i8 %655 to i32
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %670

658:                                              ; preds = %649
  %659 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %660 = load i8*, i8** %6, align 8
  %661 = load i32, i32* %14, align 4
  %662 = add i32 8, %661
  %663 = zext i32 %662 to i64
  %664 = getelementptr inbounds i8, i8* %660, i64 %663
  %665 = load i8, i8* %664, align 1
  %666 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %667 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %666, i32 0, i32 1
  %668 = load i32, i32* %667, align 4
  %669 = call i32 @usb_string(%struct.usb_device* %659, i8 zeroext %665, i32 %668, i32 4)
  br label %678

670:                                              ; preds = %649
  %671 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %672 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %671, i32 0, i32 1
  %673 = load i32, i32* %672, align 4
  %674 = load i8*, i8** %6, align 8
  %675 = getelementptr inbounds i8, i8* %674, i64 3
  %676 = load i8, i8* %675, align 1
  %677 = call i32 @sprintf(i32 %673, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8 zeroext %676)
  br label %678

678:                                              ; preds = %670, %658
  %679 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %680 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %679, i32 0, i32 0
  %681 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %682 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %681, i32 0, i32 1
  %683 = call i32 @list_add_tail(i32* %680, i32* %682)
  br label %836

684:                                              ; preds = %3
  %685 = load i32, i32* %7, align 4
  %686 = icmp sge i32 %685, 22
  br i1 %686, label %687, label %692

687:                                              ; preds = %684
  %688 = load i8*, i8** %6, align 8
  %689 = getelementptr inbounds i8, i8* %688, i64 21
  %690 = load i8, i8* %689, align 1
  %691 = zext i8 %690 to i32
  br label %693

692:                                              ; preds = %684
  br label %693

693:                                              ; preds = %692, %687
  %694 = phi i32 [ %691, %687 ], [ 0, %692 ]
  store i32 %694, i32* %15, align 4
  %695 = load i32, i32* %7, align 4
  %696 = load i32, i32* %15, align 4
  %697 = add i32 24, %696
  %698 = icmp uge i32 %695, %697
  br i1 %698, label %699, label %707

699:                                              ; preds = %693
  %700 = load i8*, i8** %6, align 8
  %701 = load i32, i32* %15, align 4
  %702 = add i32 22, %701
  %703 = zext i32 %702 to i64
  %704 = getelementptr inbounds i8, i8* %700, i64 %703
  %705 = load i8, i8* %704, align 1
  %706 = zext i8 %705 to i32
  br label %708

707:                                              ; preds = %693
  br label %708

708:                                              ; preds = %707, %699
  %709 = phi i32 [ %706, %699 ], [ 0, %707 ]
  store i32 %709, i32* %14, align 4
  %710 = load i32, i32* %7, align 4
  %711 = load i32, i32* %15, align 4
  %712 = add i32 24, %711
  %713 = load i32, i32* %14, align 4
  %714 = add i32 %712, %713
  %715 = icmp ult i32 %710, %714
  br i1 %715, label %716, label %729

716:                                              ; preds = %708
  %717 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %718 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %719 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %718, i32 0, i32 0
  %720 = load i32, i32* %719, align 4
  %721 = trunc i32 %720 to i8
  %722 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %723 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %722, i32 0, i32 0
  %724 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %723, i32 0, i32 0
  %725 = load i32, i32* %724, align 4
  %726 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %717, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0), i8 zeroext %721, i32 %725)
  %727 = load i32, i32* @EINVAL, align 4
  %728 = sub nsw i32 0, %727
  store i32 %728, i32* %4, align 4
  br label %837

729:                                              ; preds = %708
  %730 = load i8*, i8** %6, align 8
  %731 = getelementptr inbounds i8, i8* %730, i64 2
  %732 = load i8, i8* %731, align 1
  %733 = load i8*, i8** %6, align 8
  %734 = getelementptr inbounds i8, i8* %733, i64 3
  %735 = load i8, i8* %734, align 1
  %736 = load i32, i32* %15, align 4
  %737 = add i32 %736, 1
  %738 = load i32, i32* %14, align 4
  %739 = call %struct.uvc_entity* @uvc_alloc_entity(i8 zeroext %732, i8 zeroext %735, i32 %737, i32 %738)
  store %struct.uvc_entity* %739, %struct.uvc_entity** %9, align 8
  %740 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %741 = icmp eq %struct.uvc_entity* %740, null
  br i1 %741, label %742, label %745

742:                                              ; preds = %729
  %743 = load i32, i32* @ENOMEM, align 4
  %744 = sub nsw i32 0, %743
  store i32 %744, i32* %4, align 4
  br label %837

745:                                              ; preds = %729
  %746 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %747 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %746, i32 0, i32 2
  %748 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %747, i32 0, i32 3
  %749 = load i32*, i32** %748, align 8
  %750 = load i8*, i8** %6, align 8
  %751 = getelementptr inbounds i8, i8* %750, i64 4
  %752 = call i32 @memcpy(i32* %749, i8* %751, i32 16)
  %753 = load i8*, i8** %6, align 8
  %754 = getelementptr inbounds i8, i8* %753, i64 20
  %755 = load i8, i8* %754, align 1
  %756 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %757 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %756, i32 0, i32 2
  %758 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %757, i32 0, i32 0
  store i8 %755, i8* %758, align 8
  %759 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %760 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %759, i32 0, i32 3
  %761 = load i32*, i32** %760, align 8
  %762 = load i8*, i8** %6, align 8
  %763 = getelementptr inbounds i8, i8* %762, i64 22
  %764 = load i32, i32* %15, align 4
  %765 = call i32 @memcpy(i32* %761, i8* %763, i32 %764)
  %766 = load i8*, i8** %6, align 8
  %767 = load i32, i32* %15, align 4
  %768 = add i32 22, %767
  %769 = zext i32 %768 to i64
  %770 = getelementptr inbounds i8, i8* %766, i64 %769
  %771 = load i8, i8* %770, align 1
  %772 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %773 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %772, i32 0, i32 2
  %774 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %773, i32 0, i32 1
  store i8 %771, i8* %774, align 1
  %775 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %776 = bitcast %struct.uvc_entity* %775 to i32*
  %777 = getelementptr inbounds i32, i32* %776, i64 128
  %778 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %779 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %778, i32 0, i32 2
  %780 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %779, i32 0, i32 2
  store i32* %777, i32** %780, align 8
  %781 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %782 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %781, i32 0, i32 2
  %783 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %782, i32 0, i32 2
  %784 = load i32*, i32** %783, align 8
  %785 = load i8*, i8** %6, align 8
  %786 = load i32, i32* %15, align 4
  %787 = add i32 23, %786
  %788 = zext i32 %787 to i64
  %789 = getelementptr inbounds i8, i8* %785, i64 %788
  %790 = load i32, i32* %14, align 4
  %791 = call i32 @memcpy(i32* %784, i8* %789, i32 %790)
  %792 = load i8*, i8** %6, align 8
  %793 = load i32, i32* %15, align 4
  %794 = add i32 23, %793
  %795 = load i32, i32* %14, align 4
  %796 = add i32 %794, %795
  %797 = zext i32 %796 to i64
  %798 = getelementptr inbounds i8, i8* %792, i64 %797
  %799 = load i8, i8* %798, align 1
  %800 = zext i8 %799 to i32
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %802, label %816

802:                                              ; preds = %745
  %803 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %804 = load i8*, i8** %6, align 8
  %805 = load i32, i32* %15, align 4
  %806 = add i32 23, %805
  %807 = load i32, i32* %14, align 4
  %808 = add i32 %806, %807
  %809 = zext i32 %808 to i64
  %810 = getelementptr inbounds i8, i8* %804, i64 %809
  %811 = load i8, i8* %810, align 1
  %812 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %813 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %812, i32 0, i32 1
  %814 = load i32, i32* %813, align 4
  %815 = call i32 @usb_string(%struct.usb_device* %803, i8 zeroext %811, i32 %814, i32 4)
  br label %824

816:                                              ; preds = %745
  %817 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %818 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %817, i32 0, i32 1
  %819 = load i32, i32* %818, align 4
  %820 = load i8*, i8** %6, align 8
  %821 = getelementptr inbounds i8, i8* %820, i64 3
  %822 = load i8, i8* %821, align 1
  %823 = call i32 @sprintf(i32 %819, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8 zeroext %822)
  br label %824

824:                                              ; preds = %816, %802
  %825 = load %struct.uvc_entity*, %struct.uvc_entity** %9, align 8
  %826 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %825, i32 0, i32 0
  %827 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %828 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %827, i32 0, i32 1
  %829 = call i32 @list_add_tail(i32* %826, i32* %828)
  br label %836

830:                                              ; preds = %3
  %831 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %832 = load i8*, i8** %6, align 8
  %833 = getelementptr inbounds i8, i8* %832, i64 2
  %834 = load i8, i8* %833, align 1
  %835 = call i32 (i32, i8*, i8, ...) @uvc_trace(i32 %831, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), i8 zeroext %834)
  br label %836

836:                                              ; preds = %830, %824, %678, %547, %459, %370, %103
  store i32 0, i32* %4, align 4
  br label %837

837:                                              ; preds = %836, %742, %716, %599, %575, %508, %483, %427, %400, %379, %225, %198, %128, %107, %48
  %838 = load i32, i32* %4, align 4
  ret i32 %838
}

declare dso_local i32 @uvc_trace(i32, i8*, i8 zeroext, ...) #1

declare dso_local i8* @get_unaligned_le16(i8*) #1

declare dso_local i32 @get_unaligned_le32(i8*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i8 zeroext) #1

declare dso_local i32 @uvc_parse_streaming(%struct.uvc_device*, %struct.usb_interface*) #1

declare dso_local %struct.uvc_entity* @uvc_alloc_entity(i8 zeroext, i8 zeroext, i32, i32) #1

declare dso_local i32 @UVC_ENTITY_TYPE(%struct.uvc_entity*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i8 zeroext, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8 zeroext) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
