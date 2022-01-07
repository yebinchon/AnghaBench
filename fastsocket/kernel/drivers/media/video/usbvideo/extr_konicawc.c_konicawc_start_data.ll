; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_start_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_start_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i64, %struct.usb_device* }
%struct.TYPE_8__ = type { %struct.urb*, i32 }
%struct.urb = type { i32, i32, i32, %struct.TYPE_7__*, i8*, i32, i8*, i8*, %struct.uvd*, %struct.usb_device* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.konicawc = type { i64, %struct.urb**, i32*, i32* }
%struct.usb_interface = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@spd_to_iface = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pktsz = %d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Camera is not operational\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"usb_set_interface error\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@USBVIDEO_NUMSBUF = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i8* null, align 8
@konicawc_isoc_irq = common dso_local global i8* null, align 8
@FRAMES_PER_DESC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"usb_submit_isoc(%d) ret %d\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"streaming=1 video_endp=$%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*)* @konicawc_start_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @konicawc_start_data(%struct.uvd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uvd*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.konicawc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca %struct.usb_host_interface*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.urb*, align 8
  store %struct.uvd* %0, %struct.uvd** %3, align 8
  %14 = load %struct.uvd*, %struct.uvd** %3, align 8
  %15 = getelementptr inbounds %struct.uvd, %struct.uvd* %14, i32 0, i32 8
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %4, align 8
  %17 = load %struct.uvd*, %struct.uvd** %3, align 8
  %18 = getelementptr inbounds %struct.uvd, %struct.uvd* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.konicawc*
  store %struct.konicawc* %20, %struct.konicawc** %7, align 8
  store %struct.usb_host_interface* null, %struct.usb_host_interface** %10, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %22 = load %struct.uvd*, %struct.uvd** %3, align 8
  %23 = getelementptr inbounds %struct.uvd, %struct.uvd* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %21, i32 %24)
  store %struct.usb_interface* %25, %struct.usb_interface** %9, align 8
  %26 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %27 = icmp ne %struct.usb_interface* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %30 = load i32*, i32** @spd_to_iface, align 8
  %31 = load %struct.konicawc*, %struct.konicawc** %7, align 8
  %32 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %29, i32 %35)
  store %struct.usb_host_interface* %36, %struct.usb_host_interface** %10, align 8
  br label %37

37:                                               ; preds = %28, %1
  %38 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %39 = icmp ne %struct.usb_host_interface* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %286

43:                                               ; preds = %37
  %44 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %45 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.uvd*, %struct.uvd** %3, align 8
  %55 = call i32 @CAMERA_IS_OPERATIONAL(%struct.uvd* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %43
  %58 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EFAULT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %286

61:                                               ; preds = %43
  %62 = load %struct.uvd*, %struct.uvd** %3, align 8
  %63 = getelementptr inbounds %struct.uvd, %struct.uvd* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.uvd*, %struct.uvd** %3, align 8
  %65 = call i32 @konicawc_camera_on(%struct.uvd* %64)
  %66 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %67 = load %struct.uvd*, %struct.uvd** %3, align 8
  %68 = getelementptr inbounds %struct.uvd, %struct.uvd* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.uvd*, %struct.uvd** %3, align 8
  %71 = getelementptr inbounds %struct.uvd, %struct.uvd* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @usb_set_interface(%struct.usb_device* %66, i32 %69, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %61
  %77 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.uvd*, %struct.uvd** %3, align 8
  %80 = getelementptr inbounds %struct.uvd, %struct.uvd* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %286

83:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %232, %83
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @USBVIDEO_NUMSBUF, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %235

88:                                               ; preds = %84
  %89 = load %struct.uvd*, %struct.uvd** %3, align 8
  %90 = getelementptr inbounds %struct.uvd, %struct.uvd* %89, i32 0, i32 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.urb*, %struct.urb** %95, align 8
  store %struct.urb* %96, %struct.urb** %13, align 8
  %97 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %98 = load %struct.urb*, %struct.urb** %13, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 9
  store %struct.usb_device* %97, %struct.usb_device** %99, align 8
  %100 = load %struct.uvd*, %struct.uvd** %3, align 8
  %101 = load %struct.urb*, %struct.urb** %13, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 8
  store %struct.uvd* %100, %struct.uvd** %102, align 8
  %103 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %104 = load %struct.uvd*, %struct.uvd** %3, align 8
  %105 = getelementptr inbounds %struct.uvd, %struct.uvd* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @usb_rcvisocpipe(%struct.usb_device* %103, i32 %106)
  %108 = load %struct.urb*, %struct.urb** %13, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 7
  store i8* %107, i8** %109, align 8
  %110 = load %struct.urb*, %struct.urb** %13, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load i8*, i8** @URB_ISO_ASAP, align 8
  %113 = load %struct.urb*, %struct.urb** %13, align 8
  %114 = getelementptr inbounds %struct.urb, %struct.urb* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  %115 = load %struct.uvd*, %struct.uvd** %3, align 8
  %116 = getelementptr inbounds %struct.uvd, %struct.uvd* %115, i32 0, i32 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.urb*, %struct.urb** %13, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  %125 = load i8*, i8** @konicawc_isoc_irq, align 8
  %126 = load %struct.urb*, %struct.urb** %13, align 8
  %127 = getelementptr inbounds %struct.urb, %struct.urb* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* @FRAMES_PER_DESC, align 4
  %129 = load %struct.urb*, %struct.urb** %13, align 8
  %130 = getelementptr inbounds %struct.urb, %struct.urb* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @FRAMES_PER_DESC, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load %struct.urb*, %struct.urb** %13, align 8
  %135 = getelementptr inbounds %struct.urb, %struct.urb* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %157, %88
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @FRAMES_PER_DESC, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %163

140:                                              ; preds = %136
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.urb*, %struct.urb** %13, align 8
  %143 = getelementptr inbounds %struct.urb, %struct.urb* %142, i32 0, i32 3
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  store i32 %141, i32* %148, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.urb*, %struct.urb** %13, align 8
  %151 = getelementptr inbounds %struct.urb, %struct.urb* %150, i32 0, i32 3
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  store i32 %149, i32* %156, align 4
  br label %157

157:                                              ; preds = %140
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %12, align 4
  br label %136

163:                                              ; preds = %136
  %164 = load %struct.konicawc*, %struct.konicawc** %7, align 8
  %165 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %164, i32 0, i32 1
  %166 = load %struct.urb**, %struct.urb*** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.urb*, %struct.urb** %166, i64 %168
  %170 = load %struct.urb*, %struct.urb** %169, align 8
  store %struct.urb* %170, %struct.urb** %13, align 8
  %171 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %172 = load %struct.urb*, %struct.urb** %13, align 8
  %173 = getelementptr inbounds %struct.urb, %struct.urb* %172, i32 0, i32 9
  store %struct.usb_device* %171, %struct.usb_device** %173, align 8
  %174 = load %struct.uvd*, %struct.uvd** %3, align 8
  %175 = load %struct.urb*, %struct.urb** %13, align 8
  %176 = getelementptr inbounds %struct.urb, %struct.urb* %175, i32 0, i32 8
  store %struct.uvd* %174, %struct.uvd** %176, align 8
  %177 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %178 = load %struct.uvd*, %struct.uvd** %3, align 8
  %179 = getelementptr inbounds %struct.uvd, %struct.uvd* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = sub nsw i32 %180, 1
  %182 = call i8* @usb_rcvisocpipe(%struct.usb_device* %177, i32 %181)
  %183 = load %struct.urb*, %struct.urb** %13, align 8
  %184 = getelementptr inbounds %struct.urb, %struct.urb* %183, i32 0, i32 7
  store i8* %182, i8** %184, align 8
  %185 = load %struct.urb*, %struct.urb** %13, align 8
  %186 = getelementptr inbounds %struct.urb, %struct.urb* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  %187 = load i8*, i8** @URB_ISO_ASAP, align 8
  %188 = load %struct.urb*, %struct.urb** %13, align 8
  %189 = getelementptr inbounds %struct.urb, %struct.urb* %188, i32 0, i32 6
  store i8* %187, i8** %189, align 8
  %190 = load %struct.konicawc*, %struct.konicawc** %7, align 8
  %191 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.urb*, %struct.urb** %13, align 8
  %198 = getelementptr inbounds %struct.urb, %struct.urb* %197, i32 0, i32 5
  store i32 %196, i32* %198, align 8
  %199 = load i8*, i8** @konicawc_isoc_irq, align 8
  %200 = load %struct.urb*, %struct.urb** %13, align 8
  %201 = getelementptr inbounds %struct.urb, %struct.urb* %200, i32 0, i32 4
  store i8* %199, i8** %201, align 8
  %202 = load i32, i32* @FRAMES_PER_DESC, align 4
  %203 = load %struct.urb*, %struct.urb** %13, align 8
  %204 = getelementptr inbounds %struct.urb, %struct.urb* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* @FRAMES_PER_DESC, align 4
  %206 = load %struct.urb*, %struct.urb** %13, align 8
  %207 = getelementptr inbounds %struct.urb, %struct.urb* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  store i32 0, i32* %11, align 4
  br label %208

208:                                              ; preds = %228, %163
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* @FRAMES_PER_DESC, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %231

212:                                              ; preds = %208
  %213 = load i32, i32* %11, align 4
  %214 = load %struct.urb*, %struct.urb** %13, align 8
  %215 = getelementptr inbounds %struct.urb, %struct.urb* %214, i32 0, i32 3
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  store i32 %213, i32* %220, align 4
  %221 = load %struct.urb*, %struct.urb** %13, align 8
  %222 = getelementptr inbounds %struct.urb, %struct.urb* %221, i32 0, i32 3
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  store i32 1, i32* %227, align 4
  br label %228

228:                                              ; preds = %212
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %11, align 4
  br label %208

231:                                              ; preds = %208
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %5, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %5, align 4
  br label %84

235:                                              ; preds = %84
  %236 = load %struct.konicawc*, %struct.konicawc** %7, align 8
  %237 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %236, i32 0, i32 2
  store i32* null, i32** %237, align 8
  store i32 0, i32* %5, align 4
  br label %238

238:                                              ; preds = %276, %235
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* @USBVIDEO_NUMSBUF, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %279

242:                                              ; preds = %238
  %243 = load %struct.konicawc*, %struct.konicawc** %7, align 8
  %244 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %243, i32 0, i32 1
  %245 = load %struct.urb**, %struct.urb*** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.urb*, %struct.urb** %245, i64 %247
  %249 = load %struct.urb*, %struct.urb** %248, align 8
  %250 = load i32, i32* @GFP_KERNEL, align 4
  %251 = call i32 @usb_submit_urb(%struct.urb* %249, i32 %250)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %242
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* %6, align 4
  %257 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %254, %242
  %259 = load %struct.uvd*, %struct.uvd** %3, align 8
  %260 = getelementptr inbounds %struct.uvd, %struct.uvd* %259, i32 0, i32 4
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load %struct.urb*, %struct.urb** %265, align 8
  %267 = load i32, i32* @GFP_KERNEL, align 4
  %268 = call i32 @usb_submit_urb(%struct.urb* %266, i32 %267)
  store i32 %268, i32* %6, align 4
  %269 = load i32, i32* %6, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %258
  %272 = load i32, i32* %5, align 4
  %273 = load i32, i32* %6, align 4
  %274 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %271, %258
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %5, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %5, align 4
  br label %238

279:                                              ; preds = %238
  %280 = load %struct.uvd*, %struct.uvd** %3, align 8
  %281 = getelementptr inbounds %struct.uvd, %struct.uvd* %280, i32 0, i32 3
  store i32 1, i32* %281, align 4
  %282 = load %struct.uvd*, %struct.uvd** %3, align 8
  %283 = getelementptr inbounds %struct.uvd, %struct.uvd* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %284)
  store i32 0, i32* %2, align 4
  br label %286

286:                                              ; preds = %279, %76, %57, %40
  %287 = load i32, i32* %2, align 4
  ret i32 %287
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @DEBUG(i32, i8*, i32) #1

declare dso_local i32 @CAMERA_IS_OPERATIONAL(%struct.uvd*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @konicawc_camera_on(%struct.uvd*) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i8* @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
