; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_start_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zc0301_device = type { i64*, %struct.urb**, i32*, %struct.usb_device* }
%struct.urb = type { i32, i32, i32, %struct.TYPE_6__*, i64, i32, i32, i32, %struct.zc0301_device*, %struct.usb_device* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ZC0301_ALTERNATE_SETTING = common dso_local global i32 0, align 4
@ZC0301_URBS = common dso_local global i64 0, align 8
@ZC0301_ISO_PACKETS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"usb_alloc_urb() failed\00", align 1
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@zc0301_urb_complete = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"usb_set_interface() failed\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"usb_submit_urb() failed, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zc0301_device*)* @zc0301_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zc0301_start_transfer(%struct.zc0301_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zc0301_device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.zc0301_device* %0, %struct.zc0301_device** %3, align 8
  %11 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %12 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %11, i32 0, i32 3
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %4, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %15 = call i32 @usb_ifnum_to_if(%struct.usb_device* %14, i32 0)
  %16 = load i32, i32* @ZC0301_ALTERNATE_SETTING, align 4
  %17 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(i32 %15, i32 %16)
  store %struct.usb_host_interface* %17, %struct.usb_host_interface** %5, align 8
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %19 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %53, %1
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @ZC0301_URBS, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load i32, i32* @ZC0301_ISO_PACKETS, align 4
  %32 = load i32, i32* %6, align 4
  %33 = mul i32 %31, %32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i64 @kzalloc(i32 %33, i32 %34)
  %36 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %37 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %35, i64* %40, align 8
  %41 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %42 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %41, i32 0, i32 0
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
  br label %221

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
  %59 = load i64, i64* @ZC0301_URBS, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %143

61:                                               ; preds = %57
  %62 = load i32, i32* @ZC0301_ISO_PACKETS, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.urb* @usb_alloc_urb(i32 %62, i32 %63)
  store %struct.urb* %64, %struct.urb** %7, align 8
  %65 = load %struct.urb*, %struct.urb** %7, align 8
  %66 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %67 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %66, i32 0, i32 1
  %68 = load %struct.urb**, %struct.urb*** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.urb*, %struct.urb** %68, i64 %69
  store %struct.urb* %65, %struct.urb** %70, align 8
  %71 = load %struct.urb*, %struct.urb** %7, align 8
  %72 = icmp ne %struct.urb* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  %76 = call i32 (i32, i8*, ...) @DBG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %194

77:                                               ; preds = %61
  %78 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %79 = load %struct.urb*, %struct.urb** %7, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 9
  store %struct.usb_device* %78, %struct.usb_device** %80, align 8
  %81 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %82 = load %struct.urb*, %struct.urb** %7, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 8
  store %struct.zc0301_device* %81, %struct.zc0301_device** %83, align 8
  %84 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %85 = call i32 @usb_rcvisocpipe(%struct.usb_device* %84, i32 1)
  %86 = load %struct.urb*, %struct.urb** %7, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @URB_ISO_ASAP, align 4
  %89 = load %struct.urb*, %struct.urb** %7, align 8
  %90 = getelementptr inbounds %struct.urb, %struct.urb* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @ZC0301_ISO_PACKETS, align 4
  %92 = load %struct.urb*, %struct.urb** %7, align 8
  %93 = getelementptr inbounds %struct.urb, %struct.urb* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @zc0301_urb_complete, align 4
  %95 = load %struct.urb*, %struct.urb** %7, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %98 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.urb*, %struct.urb** %7, align 8
  %104 = getelementptr inbounds %struct.urb, %struct.urb* %103, i32 0, i32 4
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @ZC0301_ISO_PACKETS, align 4
  %107 = mul i32 %105, %106
  %108 = load %struct.urb*, %struct.urb** %7, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.urb*, %struct.urb** %7, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  store i64 0, i64* %9, align 8
  br label %112

112:                                              ; preds = %136, %77
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* @ZC0301_ISO_PACKETS, align 4
  %115 = zext i32 %114 to i64
  %116 = icmp ult i64 %113, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %9, align 8
  %121 = mul i64 %119, %120
  %122 = trunc i64 %121 to i32
  %123 = load %struct.urb*, %struct.urb** %7, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 3
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32 %122, i32* %128, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.urb*, %struct.urb** %7, align 8
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
  %144 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %145 = load i32, i32* @ZC0301_ALTERNATE_SETTING, align 4
  %146 = call i32 @usb_set_interface(%struct.usb_device* %144, i32 0, i32 %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = call i32 (i32, i8*, ...) @DBG(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %194

151:                                              ; preds = %143
  %152 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %153 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %152, i32 0, i32 2
  store i32* null, i32** %153, align 8
  store i64 0, i64* %8, align 8
  br label %154

154:                                              ; preds = %190, %151
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* @ZC0301_URBS, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %193

158:                                              ; preds = %154
  %159 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %160 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %159, i32 0, i32 1
  %161 = load %struct.urb**, %struct.urb*** %160, align 8
  %162 = load i64, i64* %8, align 8
  %163 = getelementptr inbounds %struct.urb*, %struct.urb** %161, i64 %162
  %164 = load %struct.urb*, %struct.urb** %163, align 8
  %165 = load i32, i32* @GFP_KERNEL, align 4
  %166 = call i32 @usb_submit_urb(%struct.urb* %164, i32 %165)
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %158
  %170 = load i64, i64* %8, align 8
  %171 = sub i64 %170, 1
  store i64 %171, i64* %9, align 8
  br label %172

172:                                              ; preds = %183, %169
  %173 = load i64, i64* %9, align 8
  %174 = icmp uge i64 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %172
  %176 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %177 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %176, i32 0, i32 1
  %178 = load %struct.urb**, %struct.urb*** %177, align 8
  %179 = load i64, i64* %9, align 8
  %180 = getelementptr inbounds %struct.urb*, %struct.urb** %178, i64 %179
  %181 = load %struct.urb*, %struct.urb** %180, align 8
  %182 = call i32 @usb_kill_urb(%struct.urb* %181)
  br label %183

183:                                              ; preds = %175
  %184 = load i64, i64* %9, align 8
  %185 = add i64 %184, -1
  store i64 %185, i64* %9, align 8
  br label %172

186:                                              ; preds = %172
  %187 = load i32, i32* %10, align 4
  %188 = call i32 (i32, i8*, ...) @DBG(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %187)
  br label %194

189:                                              ; preds = %158
  br label %190

190:                                              ; preds = %189
  %191 = load i64, i64* %8, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %8, align 8
  br label %154

193:                                              ; preds = %154
  store i32 0, i32* %2, align 4
  br label %249

194:                                              ; preds = %186, %149, %73
  store i64 0, i64* %8, align 8
  br label %195

195:                                              ; preds = %217, %194
  %196 = load i64, i64* %8, align 8
  %197 = load i64, i64* @ZC0301_URBS, align 8
  %198 = icmp ult i64 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %201 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %200, i32 0, i32 1
  %202 = load %struct.urb**, %struct.urb*** %201, align 8
  %203 = load i64, i64* %8, align 8
  %204 = getelementptr inbounds %struct.urb*, %struct.urb** %202, i64 %203
  %205 = load %struct.urb*, %struct.urb** %204, align 8
  %206 = icmp ne %struct.urb* %205, null
  br label %207

207:                                              ; preds = %199, %195
  %208 = phi i1 [ false, %195 ], [ %206, %199 ]
  br i1 %208, label %209, label %220

209:                                              ; preds = %207
  %210 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %211 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %210, i32 0, i32 1
  %212 = load %struct.urb**, %struct.urb*** %211, align 8
  %213 = load i64, i64* %8, align 8
  %214 = getelementptr inbounds %struct.urb*, %struct.urb** %212, i64 %213
  %215 = load %struct.urb*, %struct.urb** %214, align 8
  %216 = call i32 @usb_free_urb(%struct.urb* %215)
  br label %217

217:                                              ; preds = %209
  %218 = load i64, i64* %8, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %8, align 8
  br label %195

220:                                              ; preds = %207
  br label %221

221:                                              ; preds = %220, %48
  store i64 0, i64* %8, align 8
  br label %222

222:                                              ; preds = %244, %221
  %223 = load i64, i64* %8, align 8
  %224 = load i64, i64* @ZC0301_URBS, align 8
  %225 = icmp ult i64 %223, %224
  br i1 %225, label %226, label %234

226:                                              ; preds = %222
  %227 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %228 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %227, i32 0, i32 0
  %229 = load i64*, i64** %228, align 8
  %230 = load i64, i64* %8, align 8
  %231 = getelementptr inbounds i64, i64* %229, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br label %234

234:                                              ; preds = %226, %222
  %235 = phi i1 [ false, %222 ], [ %233, %226 ]
  br i1 %235, label %236, label %247

236:                                              ; preds = %234
  %237 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %238 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %237, i32 0, i32 0
  %239 = load i64*, i64** %238, align 8
  %240 = load i64, i64* %8, align 8
  %241 = getelementptr inbounds i64, i64* %239, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @kfree(i64 %242)
  br label %244

244:                                              ; preds = %236
  %245 = load i64, i64* %8, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %8, align 8
  br label %222

247:                                              ; preds = %234
  %248 = load i32, i32* %10, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %247, %193
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(i32, i32) #1

declare dso_local i32 @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

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
