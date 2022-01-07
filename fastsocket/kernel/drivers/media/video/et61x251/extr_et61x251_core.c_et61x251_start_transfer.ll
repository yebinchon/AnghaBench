; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_start_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et61x251_device = type { i64*, %struct.urb**, i32*, %struct.usb_device* }
%struct.urb = type { i32, i32, i32, %struct.TYPE_6__*, i64, i32, i32, i32, %struct.et61x251_device*, %struct.usb_device* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ET61X251_ALTERNATE_SETTING = common dso_local global i32 0, align 4
@ET61X251_URBS = common dso_local global i64 0, align 8
@ET61X251_ISO_PACKETS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"usb_alloc_urb() failed\00", align 1
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@et61x251_urb_complete = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"I/O hardware error\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"usb_set_interface() failed\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"usb_submit_urb() failed, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et61x251_device*)* @et61x251_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et61x251_start_transfer(%struct.et61x251_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et61x251_device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.et61x251_device* %0, %struct.et61x251_device** %3, align 8
  %11 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %12 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %11, i32 0, i32 3
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %4, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %15 = call i32 @usb_ifnum_to_if(%struct.usb_device* %14, i32 0)
  %16 = load i32, i32* @ET61X251_ALTERNATE_SETTING, align 4
  %17 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(i32 %15, i32 %16)
  store %struct.usb_host_interface* %17, %struct.usb_host_interface** %6, align 8
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %19 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %53, %1
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @ET61X251_URBS, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load i32, i32* @ET61X251_ISO_PACKETS, align 4
  %32 = load i32, i32* %7, align 4
  %33 = mul i32 %31, %32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i64 @kzalloc(i32 %33, i32 %34)
  %36 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %37 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %35, i64* %40, align 8
  %41 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %42 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %30
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  %51 = call i32 (i32, i8*, ...) @DBG(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %234

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %26

56:                                               ; preds = %26
  store i64 0, i64* %8, align 8
  br label %57

57:                                               ; preds = %140, %56
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @ET61X251_URBS, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %143

61:                                               ; preds = %57
  %62 = load i32, i32* @ET61X251_ISO_PACKETS, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.urb* @usb_alloc_urb(i32 %62, i32 %63)
  store %struct.urb* %64, %struct.urb** %5, align 8
  %65 = load %struct.urb*, %struct.urb** %5, align 8
  %66 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %67 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %66, i32 0, i32 1
  %68 = load %struct.urb**, %struct.urb*** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.urb*, %struct.urb** %68, i64 %69
  store %struct.urb* %65, %struct.urb** %70, align 8
  %71 = load %struct.urb*, %struct.urb** %5, align 8
  %72 = icmp ne %struct.urb* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  %76 = call i32 (i32, i8*, ...) @DBG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %207

77:                                               ; preds = %61
  %78 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %79 = load %struct.urb*, %struct.urb** %5, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 9
  store %struct.usb_device* %78, %struct.usb_device** %80, align 8
  %81 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %82 = load %struct.urb*, %struct.urb** %5, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 8
  store %struct.et61x251_device* %81, %struct.et61x251_device** %83, align 8
  %84 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %85 = call i32 @usb_rcvisocpipe(%struct.usb_device* %84, i32 1)
  %86 = load %struct.urb*, %struct.urb** %5, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @URB_ISO_ASAP, align 4
  %89 = load %struct.urb*, %struct.urb** %5, align 8
  %90 = getelementptr inbounds %struct.urb, %struct.urb* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @ET61X251_ISO_PACKETS, align 4
  %92 = load %struct.urb*, %struct.urb** %5, align 8
  %93 = getelementptr inbounds %struct.urb, %struct.urb* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @et61x251_urb_complete, align 4
  %95 = load %struct.urb*, %struct.urb** %5, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %98 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.urb*, %struct.urb** %5, align 8
  %104 = getelementptr inbounds %struct.urb, %struct.urb* %103, i32 0, i32 4
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @ET61X251_ISO_PACKETS, align 4
  %107 = mul i32 %105, %106
  %108 = load %struct.urb*, %struct.urb** %5, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.urb*, %struct.urb** %5, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  store i64 0, i64* %9, align 8
  br label %112

112:                                              ; preds = %136, %77
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* @ET61X251_ISO_PACKETS, align 4
  %115 = zext i32 %114 to i64
  %116 = icmp ult i64 %113, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %112
  %118 = load i32, i32* %7, align 4
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %9, align 8
  %121 = mul i64 %119, %120
  %122 = trunc i64 %121 to i32
  %123 = load %struct.urb*, %struct.urb** %5, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 3
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32 %122, i32* %128, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.urb*, %struct.urb** %5, align 8
  %131 = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 3
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  store i32 %129, i32* %135, align 4
  br label %136

136:                                              ; preds = %117
  %137 = load i64, i64* %9, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %9, align 8
  br label %112

139:                                              ; preds = %112
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %8, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %8, align 8
  br label %57

143:                                              ; preds = %57
  %144 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %145 = call i32 @et61x251_write_reg(%struct.et61x251_device* %144, i32 1, i32 3)
  store i32 %145, i32* %10, align 4
  %146 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %147 = call i32 @et61x251_write_reg(%struct.et61x251_device* %146, i32 0, i32 3)
  store i32 %147, i32* %10, align 4
  %148 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %149 = call i32 @et61x251_write_reg(%struct.et61x251_device* %148, i32 8, i32 3)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = load i32, i32* @EIO, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %10, align 4
  %155 = call i32 (i32, i8*, ...) @DBG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %207

156:                                              ; preds = %143
  %157 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %158 = load i32, i32* @ET61X251_ALTERNATE_SETTING, align 4
  %159 = call i32 @usb_set_interface(%struct.usb_device* %157, i32 0, i32 %158)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = call i32 (i32, i8*, ...) @DBG(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %207

164:                                              ; preds = %156
  %165 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %166 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %165, i32 0, i32 2
  store i32* null, i32** %166, align 8
  store i64 0, i64* %8, align 8
  br label %167

167:                                              ; preds = %203, %164
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* @ET61X251_URBS, align 8
  %170 = icmp ult i64 %168, %169
  br i1 %170, label %171, label %206

171:                                              ; preds = %167
  %172 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %173 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %172, i32 0, i32 1
  %174 = load %struct.urb**, %struct.urb*** %173, align 8
  %175 = load i64, i64* %8, align 8
  %176 = getelementptr inbounds %struct.urb*, %struct.urb** %174, i64 %175
  %177 = load %struct.urb*, %struct.urb** %176, align 8
  %178 = load i32, i32* @GFP_KERNEL, align 4
  %179 = call i32 @usb_submit_urb(%struct.urb* %177, i32 %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %202

182:                                              ; preds = %171
  %183 = load i64, i64* %8, align 8
  %184 = sub i64 %183, 1
  store i64 %184, i64* %9, align 8
  br label %185

185:                                              ; preds = %196, %182
  %186 = load i64, i64* %9, align 8
  %187 = icmp uge i64 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %185
  %189 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %190 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %189, i32 0, i32 1
  %191 = load %struct.urb**, %struct.urb*** %190, align 8
  %192 = load i64, i64* %9, align 8
  %193 = getelementptr inbounds %struct.urb*, %struct.urb** %191, i64 %192
  %194 = load %struct.urb*, %struct.urb** %193, align 8
  %195 = call i32 @usb_kill_urb(%struct.urb* %194)
  br label %196

196:                                              ; preds = %188
  %197 = load i64, i64* %9, align 8
  %198 = add i64 %197, -1
  store i64 %198, i64* %9, align 8
  br label %185

199:                                              ; preds = %185
  %200 = load i32, i32* %10, align 4
  %201 = call i32 (i32, i8*, ...) @DBG(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %200)
  br label %207

202:                                              ; preds = %171
  br label %203

203:                                              ; preds = %202
  %204 = load i64, i64* %8, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %8, align 8
  br label %167

206:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  br label %262

207:                                              ; preds = %199, %162, %152, %73
  store i64 0, i64* %8, align 8
  br label %208

208:                                              ; preds = %230, %207
  %209 = load i64, i64* %8, align 8
  %210 = load i64, i64* @ET61X251_URBS, align 8
  %211 = icmp ult i64 %209, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %208
  %213 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %214 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %213, i32 0, i32 1
  %215 = load %struct.urb**, %struct.urb*** %214, align 8
  %216 = load i64, i64* %8, align 8
  %217 = getelementptr inbounds %struct.urb*, %struct.urb** %215, i64 %216
  %218 = load %struct.urb*, %struct.urb** %217, align 8
  %219 = icmp ne %struct.urb* %218, null
  br label %220

220:                                              ; preds = %212, %208
  %221 = phi i1 [ false, %208 ], [ %219, %212 ]
  br i1 %221, label %222, label %233

222:                                              ; preds = %220
  %223 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %224 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %223, i32 0, i32 1
  %225 = load %struct.urb**, %struct.urb*** %224, align 8
  %226 = load i64, i64* %8, align 8
  %227 = getelementptr inbounds %struct.urb*, %struct.urb** %225, i64 %226
  %228 = load %struct.urb*, %struct.urb** %227, align 8
  %229 = call i32 @usb_free_urb(%struct.urb* %228)
  br label %230

230:                                              ; preds = %222
  %231 = load i64, i64* %8, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %8, align 8
  br label %208

233:                                              ; preds = %220
  br label %234

234:                                              ; preds = %233, %48
  store i64 0, i64* %8, align 8
  br label %235

235:                                              ; preds = %257, %234
  %236 = load i64, i64* %8, align 8
  %237 = load i64, i64* @ET61X251_URBS, align 8
  %238 = icmp ult i64 %236, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %235
  %240 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %241 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %240, i32 0, i32 0
  %242 = load i64*, i64** %241, align 8
  %243 = load i64, i64* %8, align 8
  %244 = getelementptr inbounds i64, i64* %242, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br label %247

247:                                              ; preds = %239, %235
  %248 = phi i1 [ false, %235 ], [ %246, %239 ]
  br i1 %248, label %249, label %260

249:                                              ; preds = %247
  %250 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %251 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %250, i32 0, i32 0
  %252 = load i64*, i64** %251, align 8
  %253 = load i64, i64* %8, align 8
  %254 = getelementptr inbounds i64, i64* %252, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @kfree(i64 %255)
  br label %257

257:                                              ; preds = %249
  %258 = load i64, i64* %8, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %8, align 8
  br label %235

260:                                              ; preds = %247
  %261 = load i32, i32* %10, align 4
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %260, %206
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(i32, i32) #1

declare dso_local i32 @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @et61x251_write_reg(%struct.et61x251_device*, i32, i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
