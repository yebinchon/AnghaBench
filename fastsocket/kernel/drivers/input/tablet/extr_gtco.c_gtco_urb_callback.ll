; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_gtco.c_gtco_urb_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_gtco.c_gtco_urb_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.gtco* }
%struct.gtco = type { i32*, i32, %struct.input_dev* }
%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ECONNRESET = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@PID_1000 = common dso_local global i64 0, align 8
@PID_1001 = common dso_local global i64 0, align 8
@PID_1002 = common dso_local global i64 0, align 8
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@MASK_BUTTON = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@MASK_INRANGE = common dso_local global i8 0, align 1
@ABS_DISTANCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"======>>>>>>REPORT 1: val 0x%X(%d)\00", align 1
@MSC_SCAN = common dso_local global i32 0, align 4
@PID_400 = common dso_local global i64 0, align 8
@PID_401 = common dso_local global i64 0, align 8
@ABS_MISC = common dso_local global i32 0, align 4
@MSC_RAW = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"usb_submit_urb failed rc=0x%x\00", align 1
@BTN_DIGI = common dso_local global i64 0, align 8
@i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @gtco_urb_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtco_urb_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.gtco*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  %9 = alloca i8, align 1
  store %struct.urb* %0, %struct.urb** %2, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 1
  %12 = load %struct.gtco*, %struct.gtco** %11, align 8
  store %struct.gtco* %12, %struct.gtco** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.gtco*, %struct.gtco** %3, align 8
  %14 = getelementptr inbounds %struct.gtco, %struct.gtco* %13, i32 0, i32 2
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  store %struct.input_dev* %15, %struct.input_dev** %4, align 8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ECONNRESET, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %36, label %22

22:                                               ; preds = %1
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.urb*, %struct.urb** %2, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ESHUTDOWN, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %22, %1
  br label %435

37:                                               ; preds = %29
  %38 = load %struct.urb*, %struct.urb** %2, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %426

43:                                               ; preds = %37
  %44 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PID_1000, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %43
  %51 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PID_1001, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PID_1002, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %235

64:                                               ; preds = %57, %50, %43
  %65 = load %struct.gtco*, %struct.gtco** %3, align 8
  %66 = getelementptr inbounds %struct.gtco, %struct.gtco* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %234 [
    i32 5, label %70
    i32 4, label %103
    i32 2, label %152
    i32 3, label %152
    i32 1, label %165
    i32 7, label %224
  ]

70:                                               ; preds = %64
  %71 = load %struct.gtco*, %struct.gtco** %3, align 8
  %72 = getelementptr inbounds %struct.gtco, %struct.gtco* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 8
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 1
  store i32 %76, i32* %6, align 4
  %77 = load %struct.gtco*, %struct.gtco** %3, align 8
  %78 = getelementptr inbounds %struct.gtco, %struct.gtco* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 7
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 7
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %86 = load i32, i32* @ABS_PRESSURE, align 4
  %87 = load %struct.gtco*, %struct.gtco** %3, align 8
  %88 = getelementptr inbounds %struct.gtco, %struct.gtco* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @input_report_abs(%struct.input_dev* %85, i32 %86, i32 %91)
  %93 = load %struct.gtco*, %struct.gtco** %3, align 8
  %94 = getelementptr inbounds %struct.gtco, %struct.gtco* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 7
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 127
  %99 = load %struct.gtco*, %struct.gtco** %3, align 8
  %100 = getelementptr inbounds %struct.gtco, %struct.gtco* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 7
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %64, %70
  %104 = load %struct.gtco*, %struct.gtco** %3, align 8
  %105 = getelementptr inbounds %struct.gtco, %struct.gtco* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 6
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 64
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %103
  %112 = load %struct.gtco*, %struct.gtco** %3, align 8
  %113 = getelementptr inbounds %struct.gtco, %struct.gtco* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 6
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, 128
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %111, %103
  %119 = load %struct.gtco*, %struct.gtco** %3, align 8
  %120 = getelementptr inbounds %struct.gtco, %struct.gtco* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 7
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 64
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %118
  %127 = load %struct.gtco*, %struct.gtco** %3, align 8
  %128 = getelementptr inbounds %struct.gtco, %struct.gtco* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 7
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, 128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %126, %118
  %134 = load %struct.gtco*, %struct.gtco** %3, align 8
  %135 = getelementptr inbounds %struct.gtco, %struct.gtco* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 6
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %7, align 4
  %139 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %140 = load i32, i32* @ABS_TILT_X, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @input_report_abs(%struct.input_dev* %139, i32 %140, i32 %141)
  %143 = load %struct.gtco*, %struct.gtco** %3, align 8
  %144 = getelementptr inbounds %struct.gtco, %struct.gtco* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 7
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %7, align 4
  %148 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %149 = load i32, i32* @ABS_TILT_Y, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @input_report_abs(%struct.input_dev* %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %64, %64, %133
  %153 = load %struct.gtco*, %struct.gtco** %3, align 8
  %154 = getelementptr inbounds %struct.gtco, %struct.gtco* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 5
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @MASK_BUTTON, align 4
  %159 = and i32 %157, %158
  store i32 %159, i32* %6, align 4
  %160 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %161 = load i32, i32* @EV_MSC, align 4
  %162 = load i32, i32* @MSC_SERIAL, align 4
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @input_event(%struct.input_dev* %160, i32 %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %64, %152
  %166 = load %struct.gtco*, %struct.gtco** %3, align 8
  %167 = getelementptr inbounds %struct.gtco, %struct.gtco* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = bitcast i32* %169 to i8*
  %171 = call i32 @get_unaligned_le16(i8* %170)
  store i32 %171, i32* %6, align 4
  %172 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %173 = load i32, i32* @ABS_X, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @input_report_abs(%struct.input_dev* %172, i32 %173, i32 %174)
  %176 = load %struct.gtco*, %struct.gtco** %3, align 8
  %177 = getelementptr inbounds %struct.gtco, %struct.gtco* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 3
  %180 = bitcast i32* %179 to i8*
  %181 = call i32 @get_unaligned_le16(i8* %180)
  store i32 %181, i32* %6, align 4
  %182 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %183 = load i32, i32* @ABS_Y, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @input_report_abs(%struct.input_dev* %182, i32 %183, i32 %184)
  %186 = load %struct.gtco*, %struct.gtco** %3, align 8
  %187 = getelementptr inbounds %struct.gtco, %struct.gtco* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 5
  %190 = load i32, i32* %189, align 4
  %191 = load i8, i8* @MASK_INRANGE, align 1
  %192 = sext i8 %191 to i32
  %193 = and i32 %190, %192
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 1, i32 0
  store i32 %196, i32* %6, align 4
  %197 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %198 = load i32, i32* @ABS_DISTANCE, align 4
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @input_report_abs(%struct.input_dev* %197, i32 %198, i32 %199)
  %201 = load %struct.gtco*, %struct.gtco** %3, align 8
  %202 = getelementptr inbounds %struct.gtco, %struct.gtco* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %223

207:                                              ; preds = %165
  %208 = load %struct.gtco*, %struct.gtco** %3, align 8
  %209 = getelementptr inbounds %struct.gtco, %struct.gtco* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 5
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @MASK_BUTTON, align 4
  %214 = and i32 %212, %213
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %215, i32 %216)
  %218 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %219 = load i32, i32* @EV_MSC, align 4
  %220 = load i32, i32* @MSC_SERIAL, align 4
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @input_event(%struct.input_dev* %218, i32 %219, i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %207, %165
  br label %234

224:                                              ; preds = %64
  %225 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %226 = load i32, i32* @EV_MSC, align 4
  %227 = load i32, i32* @MSC_SCAN, align 4
  %228 = load %struct.gtco*, %struct.gtco** %3, align 8
  %229 = getelementptr inbounds %struct.gtco, %struct.gtco* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @input_event(%struct.input_dev* %225, i32 %226, i32 %227, i32 %232)
  br label %234

234:                                              ; preds = %64, %224, %223
  br label %235

235:                                              ; preds = %234, %57
  %236 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %237 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @PID_400, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %249, label %242

242:                                              ; preds = %235
  %243 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %244 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @PID_401, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %414

249:                                              ; preds = %242, %235
  %250 = load %struct.gtco*, %struct.gtco** %3, align 8
  %251 = getelementptr inbounds %struct.gtco, %struct.gtco* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 2
  br i1 %255, label %256, label %266

256:                                              ; preds = %249
  %257 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %258 = load i32, i32* @EV_MSC, align 4
  %259 = load i32, i32* @MSC_SCAN, align 4
  %260 = load %struct.gtco*, %struct.gtco** %3, align 8
  %261 = getelementptr inbounds %struct.gtco, %struct.gtco* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @input_event(%struct.input_dev* %257, i32 %258, i32 %259, i32 %264)
  br label %266

266:                                              ; preds = %256, %249
  %267 = load %struct.gtco*, %struct.gtco** %3, align 8
  %268 = getelementptr inbounds %struct.gtco, %struct.gtco* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %413

273:                                              ; preds = %266
  %274 = load %struct.gtco*, %struct.gtco** %3, align 8
  %275 = getelementptr inbounds %struct.gtco, %struct.gtco* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = icmp sgt i32 %276, 65536
  br i1 %277, label %278, label %357

278:                                              ; preds = %273
  %279 = load %struct.gtco*, %struct.gtco** %3, align 8
  %280 = getelementptr inbounds %struct.gtco, %struct.gtco* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  %283 = load i32, i32* %282, align 4
  %284 = shl i32 %283, 8
  %285 = load %struct.gtco*, %struct.gtco** %3, align 8
  %286 = getelementptr inbounds %struct.gtco, %struct.gtco* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %284, %289
  store i32 %290, i32* %6, align 4
  %291 = load %struct.gtco*, %struct.gtco** %3, align 8
  %292 = getelementptr inbounds %struct.gtco, %struct.gtco* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 3
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, 1
  %297 = shl i32 %296, 16
  %298 = load i32, i32* %6, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %6, align 4
  %300 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %301 = load i32, i32* @ABS_X, align 4
  %302 = load i32, i32* %6, align 4
  %303 = call i32 @input_report_abs(%struct.input_dev* %300, i32 %301, i32 %302)
  %304 = load %struct.gtco*, %struct.gtco** %3, align 8
  %305 = getelementptr inbounds %struct.gtco, %struct.gtco* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 3
  %308 = load i32, i32* %307, align 4
  %309 = ashr i32 %308, 1
  %310 = trunc i32 %309 to i8
  %311 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %310, i8* %311, align 1
  %312 = load %struct.gtco*, %struct.gtco** %3, align 8
  %313 = getelementptr inbounds %struct.gtco, %struct.gtco* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 3
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %316, 1
  %318 = shl i32 %317, 7
  %319 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = or i32 %321, %318
  %323 = trunc i32 %322 to i8
  store i8 %323, i8* %319, align 1
  %324 = load %struct.gtco*, %struct.gtco** %3, align 8
  %325 = getelementptr inbounds %struct.gtco, %struct.gtco* %324, i32 0, i32 0
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 4
  %328 = load i32, i32* %327, align 4
  %329 = ashr i32 %328, 1
  %330 = trunc i32 %329 to i8
  %331 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %330, i8* %331, align 1
  %332 = load %struct.gtco*, %struct.gtco** %3, align 8
  %333 = getelementptr inbounds %struct.gtco, %struct.gtco* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 5
  %336 = load i32, i32* %335, align 4
  %337 = and i32 %336, 1
  %338 = shl i32 %337, 7
  %339 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = or i32 %341, %338
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %339, align 1
  %344 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %345 = call i32 @get_unaligned_le16(i8* %344)
  store i32 %345, i32* %6, align 4
  %346 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %347 = load i32, i32* @ABS_Y, align 4
  %348 = load i32, i32* %6, align 4
  %349 = call i32 @input_report_abs(%struct.input_dev* %346, i32 %347, i32 %348)
  %350 = load %struct.gtco*, %struct.gtco** %3, align 8
  %351 = getelementptr inbounds %struct.gtco, %struct.gtco* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 5
  %354 = load i32, i32* %353, align 4
  %355 = ashr i32 %354, 1
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %9, align 1
  br label %384

357:                                              ; preds = %273
  %358 = load %struct.gtco*, %struct.gtco** %3, align 8
  %359 = getelementptr inbounds %struct.gtco, %struct.gtco* %358, i32 0, i32 0
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 1
  %362 = bitcast i32* %361 to i8*
  %363 = call i32 @get_unaligned_le16(i8* %362)
  store i32 %363, i32* %6, align 4
  %364 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %365 = load i32, i32* @ABS_X, align 4
  %366 = load i32, i32* %6, align 4
  %367 = call i32 @input_report_abs(%struct.input_dev* %364, i32 %365, i32 %366)
  %368 = load %struct.gtco*, %struct.gtco** %3, align 8
  %369 = getelementptr inbounds %struct.gtco, %struct.gtco* %368, i32 0, i32 0
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 3
  %372 = bitcast i32* %371 to i8*
  %373 = call i32 @get_unaligned_le16(i8* %372)
  store i32 %373, i32* %6, align 4
  %374 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %375 = load i32, i32* @ABS_Y, align 4
  %376 = load i32, i32* %6, align 4
  %377 = call i32 @input_report_abs(%struct.input_dev* %374, i32 %375, i32 %376)
  %378 = load %struct.gtco*, %struct.gtco** %3, align 8
  %379 = getelementptr inbounds %struct.gtco, %struct.gtco* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 5
  %382 = load i32, i32* %381, align 4
  %383 = trunc i32 %382 to i8
  store i8 %383, i8* %9, align 1
  br label %384

384:                                              ; preds = %357, %278
  %385 = load i8, i8* %9, align 1
  %386 = sext i8 %385 to i32
  %387 = load i8, i8* @MASK_INRANGE, align 1
  %388 = sext i8 %387 to i32
  %389 = and i32 %386, %388
  %390 = icmp ne i32 %389, 0
  %391 = zext i1 %390 to i64
  %392 = select i1 %390, i32 1, i32 0
  store i32 %392, i32* %6, align 4
  %393 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %394 = load i32, i32* @ABS_DISTANCE, align 4
  %395 = load i32, i32* %6, align 4
  %396 = call i32 @input_report_abs(%struct.input_dev* %393, i32 %394, i32 %395)
  %397 = load i8, i8* %9, align 1
  %398 = sext i8 %397 to i32
  %399 = and i32 %398, 15
  store i32 %399, i32* %6, align 4
  %400 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %401 = load i32, i32* @EV_MSC, align 4
  %402 = load i32, i32* @MSC_SERIAL, align 4
  %403 = load i32, i32* %6, align 4
  %404 = call i32 @input_event(%struct.input_dev* %400, i32 %401, i32 %402, i32 %403)
  %405 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %406 = load i32, i32* @ABS_MISC, align 4
  %407 = load %struct.gtco*, %struct.gtco** %3, align 8
  %408 = getelementptr inbounds %struct.gtco, %struct.gtco* %407, i32 0, i32 0
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 6
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @input_report_abs(%struct.input_dev* %405, i32 %406, i32 %411)
  br label %413

413:                                              ; preds = %384, %266
  br label %414

414:                                              ; preds = %413, %242
  %415 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %416 = load i32, i32* @EV_MSC, align 4
  %417 = load i32, i32* @MSC_RAW, align 4
  %418 = load %struct.gtco*, %struct.gtco** %3, align 8
  %419 = getelementptr inbounds %struct.gtco, %struct.gtco* %418, i32 0, i32 0
  %420 = load i32*, i32** %419, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 0
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @input_event(%struct.input_dev* %415, i32 %416, i32 %417, i32 %422)
  %424 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %425 = call i32 @input_sync(%struct.input_dev* %424)
  br label %426

426:                                              ; preds = %414, %42
  %427 = load %struct.urb*, %struct.urb** %2, align 8
  %428 = load i32, i32* @GFP_ATOMIC, align 4
  %429 = call i32 @usb_submit_urb(%struct.urb* %427, i32 %428)
  store i32 %429, i32* %5, align 4
  %430 = load i32, i32* %5, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %435

432:                                              ; preds = %426
  %433 = load i32, i32* %5, align 4
  %434 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %433)
  br label %435

435:                                              ; preds = %36, %432, %426
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i8*) #1

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
