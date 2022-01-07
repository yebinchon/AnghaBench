; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c___usbhid_submit_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c___usbhid_submit_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32, %struct.usbhid_device* }
%struct.usbhid_device = type { i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8, %struct.hid_report*, i8* }
%struct.TYPE_3__ = type { %struct.hid_report*, i8* }
%struct.hid_report = type { i32, i64, i64 }

@HID_QUIRK_NOGET = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i8 0, align 1
@USB_DIR_OUT = common dso_local global i8 0, align 1
@HID_OUTPUT_REPORT = common dso_local global i64 0, align 8
@HID_OUTPUT_FIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"output queue full\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"output queueing failed\0A\00", align 1
@HID_OUT_RUNNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@HID_CONTROL_FIFO_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"control queue full\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"control queueing failed\0A\00", align 1
@HID_CTRL_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*, i8)* @__usbhid_submit_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__usbhid_submit_report(%struct.hid_device* %0, %struct.hid_report* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbhid_device*, align 8
  %9 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_report* %1, %struct.hid_report** %5, align 8
  store i8 %2, i8* %6, align 1
  %10 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %11 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %10, i32 0, i32 2
  %12 = load %struct.usbhid_device*, %struct.usbhid_device** %11, align 8
  store %struct.usbhid_device* %12, %struct.usbhid_device** %8, align 8
  %13 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %14 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = ashr i32 %16, 3
  %18 = add nsw i32 %17, 1
  %19 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %20 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = add nsw i32 %18, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %26 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @HID_QUIRK_NOGET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @USB_DIR_IN, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %277

38:                                               ; preds = %31, %3
  %39 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %40 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %158

43:                                               ; preds = %38
  %44 = load i8, i8* %6, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @USB_DIR_OUT, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %158

49:                                               ; preds = %43
  %50 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %51 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HID_OUTPUT_REPORT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %158

55:                                               ; preds = %49
  %56 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %57 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* @HID_OUTPUT_FIFO_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = and i32 %59, %61
  store i32 %62, i32* %7, align 4
  %63 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %64 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %69 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %68, i32 0, i32 1
  %70 = call i32 @dev_warn(i32* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %277

71:                                               ; preds = %55
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i8* @kmalloc(i32 %72, i32 %73)
  %75 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %76 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %75, i32 0, i32 10
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %79 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i8* %74, i8** %83, align 8
  %84 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %85 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %84, i32 0, i32 10
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %88 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %71
  %96 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %97 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %96, i32 0, i32 1
  %98 = call i32 @dev_warn(i32* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %277

99:                                               ; preds = %71
  %100 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %101 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %102 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %101, i32 0, i32 10
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %105 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @hid_output_report(%struct.hid_report* %100, i8* %110)
  %112 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %113 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %114 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %113, i32 0, i32 10
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %117 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store %struct.hid_report* %112, %struct.hid_report** %121, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %124 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @HID_OUT_RUNNING, align 4
  %126 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %127 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %126, i32 0, i32 6
  %128 = call i32 @test_and_set_bit(i32 %125, i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %99
  %131 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %132 = call i64 @hid_submit_out(%struct.hid_device* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i32, i32* @HID_OUT_RUNNING, align 4
  %136 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %137 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %136, i32 0, i32 6
  %138 = call i32 @clear_bit(i32 %135, i32* %137)
  br label %139

139:                                              ; preds = %134, %130
  br label %157

140:                                              ; preds = %99
  %141 = load i32, i32* @jiffies, align 4
  %142 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %143 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %142, i32 0, i32 9
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* @HZ, align 4
  %146 = mul nsw i32 %145, 5
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %144, %147
  %149 = call i64 @time_after(i32 %141, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %140
  %152 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %153 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %152, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @usb_unlink_urb(i64 %154)
  br label %156

156:                                              ; preds = %151, %140
  br label %157

157:                                              ; preds = %156, %139
  br label %277

158:                                              ; preds = %49, %43, %38
  %159 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %160 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  %163 = load i32, i32* @HID_CONTROL_FIFO_SIZE, align 4
  %164 = sub nsw i32 %163, 1
  %165 = and i32 %162, %164
  store i32 %165, i32* %7, align 4
  %166 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %167 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %165, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %158
  %171 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %172 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %171, i32 0, i32 1
  %173 = call i32 @dev_warn(i32* %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %277

174:                                              ; preds = %158
  %175 = load i8, i8* %6, align 1
  %176 = zext i8 %175 to i32
  %177 = load i8, i8* @USB_DIR_OUT, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %221

180:                                              ; preds = %174
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @GFP_ATOMIC, align 4
  %183 = call i8* @kmalloc(i32 %181, i32 %182)
  %184 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %185 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %184, i32 0, i32 7
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %188 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  store i8* %183, i8** %192, align 8
  %193 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %194 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %193, i32 0, i32 7
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %197 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %208, label %204

204:                                              ; preds = %180
  %205 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %206 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %205, i32 0, i32 1
  %207 = call i32 @dev_warn(i32* %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %277

208:                                              ; preds = %180
  %209 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %210 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %211 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %210, i32 0, i32 7
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %214 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @hid_output_report(%struct.hid_report* %209, i8* %219)
  br label %221

221:                                              ; preds = %208, %174
  %222 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %223 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %224 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %223, i32 0, i32 7
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %227 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  store %struct.hid_report* %222, %struct.hid_report** %231, align 8
  %232 = load i8, i8* %6, align 1
  %233 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %234 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %233, i32 0, i32 7
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %237 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  store i8 %232, i8* %241, align 8
  %242 = load i32, i32* %7, align 4
  %243 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %244 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 8
  %245 = load i32, i32* @HID_CTRL_RUNNING, align 4
  %246 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %247 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %246, i32 0, i32 6
  %248 = call i32 @test_and_set_bit(i32 %245, i32* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %260, label %250

250:                                              ; preds = %221
  %251 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %252 = call i64 @hid_submit_ctrl(%struct.hid_device* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = load i32, i32* @HID_CTRL_RUNNING, align 4
  %256 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %257 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %256, i32 0, i32 6
  %258 = call i32 @clear_bit(i32 %255, i32* %257)
  br label %259

259:                                              ; preds = %254, %250
  br label %277

260:                                              ; preds = %221
  %261 = load i32, i32* @jiffies, align 4
  %262 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %263 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %262, i32 0, i32 5
  %264 = load i64, i64* %263, align 8
  %265 = load i32, i32* @HZ, align 4
  %266 = mul nsw i32 %265, 5
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %264, %267
  %269 = call i64 @time_after(i32 %261, i64 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %260
  %272 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %273 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %272, i32 0, i32 4
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @usb_unlink_urb(i64 %274)
  br label %276

276:                                              ; preds = %271, %260
  br label %277

277:                                              ; preds = %37, %67, %95, %157, %170, %204, %276, %259
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @hid_output_report(%struct.hid_report*, i8*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @hid_submit_out(%struct.hid_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @usb_unlink_urb(i64) #1

declare dso_local i64 @hid_submit_ctrl(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
