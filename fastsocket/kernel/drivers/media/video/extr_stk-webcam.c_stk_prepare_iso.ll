; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_prepare_iso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_prepare_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { %struct.TYPE_4__*, i32, %struct.usb_device* }
%struct.TYPE_4__ = type { %struct.urb*, %struct.TYPE_4__* }
%struct.urb = type { i32, i32, i32, %struct.TYPE_3__*, i64, %struct.stk_camera*, i32, %struct.TYPE_4__*, i32, i32, %struct.usb_device* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_device = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"isobufs already allocated. Bad\0A\00", align 1
@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to allocate iso buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ISO_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to allocate iso buffer %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"isobuf data already allocated\0A\00", align 1
@ISO_FRAMES_PER_DESC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to allocate URB %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Killing URB\0A\00", align 1
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@stk_isoc_handler = common dso_local global i32 0, align 4
@ISO_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk_camera*)* @stk_prepare_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_prepare_iso(%struct.stk_camera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk_camera*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  %8 = alloca %struct.usb_device*, align 8
  store %struct.stk_camera* %0, %struct.stk_camera** %3, align 8
  %9 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %10 = icmp eq %struct.stk_camera* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %268

14:                                               ; preds = %1
  %15 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %16 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %15, i32 0, i32 2
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %8, align 8
  %18 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %19 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 (i8*, ...) @STK_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %34

24:                                               ; preds = %14
  %25 = load i32, i32* @MAX_ISO_BUFS, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 16
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 %28, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_4__*
  %32 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %33 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %32, i32 0, i32 0
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %33, align 8
  br label %34

34:                                               ; preds = %24, %22
  %35 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %36 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp eq %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @STK_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %268

43:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %193, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @MAX_ISO_BUFS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %196

48:                                               ; preds = %44
  %49 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %50 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp eq %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %48
  %59 = load i32, i32* @ISO_BUFFER_SIZE, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kzalloc(i32 %59, i32 %60)
  store i8* %61, i8** %4, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i8*, ...) @STK_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %199

67:                                               ; preds = %58
  %68 = load i8*, i8** %4, align 8
  %69 = bitcast i8* %68 to %struct.TYPE_4__*
  %70 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %71 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %76, align 8
  br label %79

77:                                               ; preds = %48
  %78 = call i32 (i8*, ...) @STK_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %67
  %80 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %81 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.urb*, %struct.urb** %86, align 8
  %88 = icmp eq %struct.urb* %87, null
  br i1 %88, label %89, label %107

89:                                               ; preds = %79
  %90 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.urb* @usb_alloc_urb(i32 %90, i32 %91)
  store %struct.urb* %92, %struct.urb** %7, align 8
  %93 = load %struct.urb*, %struct.urb** %7, align 8
  %94 = icmp eq %struct.urb* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* %5, align 4
  %97 = call i32 (i8*, ...) @STK_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %199

98:                                               ; preds = %89
  %99 = load %struct.urb*, %struct.urb** %7, align 8
  %100 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %101 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store %struct.urb* %99, %struct.urb** %106, align 8
  br label %126

107:                                              ; preds = %79
  %108 = call i32 (i8*, ...) @STK_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %109 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %110 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load %struct.urb*, %struct.urb** %115, align 8
  %117 = call i32 @usb_kill_urb(%struct.urb* %116)
  %118 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %119 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load %struct.urb*, %struct.urb** %124, align 8
  store %struct.urb* %125, %struct.urb** %7, align 8
  br label %126

126:                                              ; preds = %107, %98
  %127 = load %struct.urb*, %struct.urb** %7, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %130 = load %struct.urb*, %struct.urb** %7, align 8
  %131 = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 10
  store %struct.usb_device* %129, %struct.usb_device** %131, align 8
  %132 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %133 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %134 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @usb_rcvisocpipe(%struct.usb_device* %132, i32 %135)
  %137 = load %struct.urb*, %struct.urb** %7, align 8
  %138 = getelementptr inbounds %struct.urb, %struct.urb* %137, i32 0, i32 9
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @URB_ISO_ASAP, align 4
  %140 = load %struct.urb*, %struct.urb** %7, align 8
  %141 = getelementptr inbounds %struct.urb, %struct.urb* %140, i32 0, i32 8
  store i32 %139, i32* %141, align 8
  %142 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %143 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load %struct.urb*, %struct.urb** %7, align 8
  %151 = getelementptr inbounds %struct.urb, %struct.urb* %150, i32 0, i32 7
  store %struct.TYPE_4__* %149, %struct.TYPE_4__** %151, align 8
  %152 = load i32, i32* @ISO_BUFFER_SIZE, align 4
  %153 = load %struct.urb*, %struct.urb** %7, align 8
  %154 = getelementptr inbounds %struct.urb, %struct.urb* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @stk_isoc_handler, align 4
  %156 = load %struct.urb*, %struct.urb** %7, align 8
  %157 = getelementptr inbounds %struct.urb, %struct.urb* %156, i32 0, i32 6
  store i32 %155, i32* %157, align 8
  %158 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %159 = load %struct.urb*, %struct.urb** %7, align 8
  %160 = getelementptr inbounds %struct.urb, %struct.urb* %159, i32 0, i32 5
  store %struct.stk_camera* %158, %struct.stk_camera** %160, align 8
  %161 = load %struct.urb*, %struct.urb** %7, align 8
  %162 = getelementptr inbounds %struct.urb, %struct.urb* %161, i32 0, i32 4
  store i64 0, i64* %162, align 8
  %163 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %164 = load %struct.urb*, %struct.urb** %7, align 8
  %165 = getelementptr inbounds %struct.urb, %struct.urb* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %189, %126
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %192

170:                                              ; preds = %166
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @ISO_MAX_FRAME_SIZE, align 4
  %173 = mul nsw i32 %171, %172
  %174 = load %struct.urb*, %struct.urb** %7, align 8
  %175 = getelementptr inbounds %struct.urb, %struct.urb* %174, i32 0, i32 3
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i32 %173, i32* %180, align 4
  %181 = load i32, i32* @ISO_MAX_FRAME_SIZE, align 4
  %182 = load %struct.urb*, %struct.urb** %7, align 8
  %183 = getelementptr inbounds %struct.urb, %struct.urb* %182, i32 0, i32 3
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  store i32 %181, i32* %188, align 4
  br label %189

189:                                              ; preds = %170
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  br label %166

192:                                              ; preds = %166
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %5, align 4
  br label %44

196:                                              ; preds = %44
  %197 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %198 = call i32 @set_memallocd(%struct.stk_camera* %197)
  store i32 0, i32* %2, align 4
  br label %268

199:                                              ; preds = %95, %64
  store i32 0, i32* %5, align 4
  br label %200

200:                                              ; preds = %226, %199
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @MAX_ISO_BUFS, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %200
  %205 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %206 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %205, i32 0, i32 0
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = icmp ne %struct.TYPE_4__* %212, null
  br label %214

214:                                              ; preds = %204, %200
  %215 = phi i1 [ false, %200 ], [ %213, %204 ]
  br i1 %215, label %216, label %229

216:                                              ; preds = %214
  %217 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %218 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %217, i32 0, i32 0
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = call i32 @kfree(%struct.TYPE_4__* %224)
  br label %226

226:                                              ; preds = %216
  %227 = load i32, i32* %5, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %5, align 4
  br label %200

229:                                              ; preds = %214
  store i32 0, i32* %5, align 4
  br label %230

230:                                              ; preds = %256, %229
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* @MAX_ISO_BUFS, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %244

234:                                              ; preds = %230
  %235 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %236 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %235, i32 0, i32 0
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %236, align 8
  %238 = load i32, i32* %5, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load %struct.urb*, %struct.urb** %241, align 8
  %243 = icmp ne %struct.urb* %242, null
  br label %244

244:                                              ; preds = %234, %230
  %245 = phi i1 [ false, %230 ], [ %243, %234 ]
  br i1 %245, label %246, label %259

246:                                              ; preds = %244
  %247 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %248 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %247, i32 0, i32 0
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %248, align 8
  %250 = load i32, i32* %5, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load %struct.urb*, %struct.urb** %253, align 8
  %255 = call i32 @usb_free_urb(%struct.urb* %254)
  br label %256

256:                                              ; preds = %246
  %257 = load i32, i32* %5, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %5, align 4
  br label %230

259:                                              ; preds = %244
  %260 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %261 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %260, i32 0, i32 0
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = call i32 @kfree(%struct.TYPE_4__* %262)
  %264 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %265 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %264, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %265, align 8
  %266 = load i32, i32* @ENOMEM, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %2, align 4
  br label %268

268:                                              ; preds = %259, %196, %39, %11
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local i32 @STK_ERROR(i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @set_memallocd(%struct.stk_camera*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
