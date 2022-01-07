; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_move_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_move_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i32, i32, i64, i32, i32, %struct.ov511_frame*, %struct.TYPE_2__* }
%struct.ov511_frame = type { i32, i32, i32, i64, i64, i32, i8, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32 }

@printph = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"ph(%3d): %2x %2x %2x %2x %2x %2x %2x %2x %2x %2x %2x %2x\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Frame end, frame=%d, pnum=%d, w=%d, h=%d, recvd=%d\00", align 1
@STATE_LINES = common dso_local global i64 0, align 8
@FRAME_DONE = common dso_local global i64 0, align 8
@OV511_NUMFRAMES = common dso_local global i32 0, align 4
@FRAME_READY = common dso_local global i64 0, align 8
@FRAME_GRABBING = common dso_local global i64 0, align 8
@STATE_SCANNING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"** Frame done **\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Frame not ready? state = %d\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Frame done, but not scanning\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Frame start, framenum = %d\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"snapshot detected\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Not in a frame; packet skipped\00", align 1
@dumppix = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Raw data buffer overrun!! (%d)\00", align 1
@remove_zeros = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Raw data buffer overrun!!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ov511*, i8*, i32)* @ov511_move_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov511_move_data(%struct.usb_ov511* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ov511_frame*, align 8
  %12 = alloca %struct.timeval*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %20 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %18, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %28 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %31 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MAX_RAW_DATA_SIZE(i32 %29, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %35 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %34, i32 0, i32 6
  %36 = load %struct.ov511_frame*, %struct.ov511_frame** %35, align 8
  %37 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %38 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %36, i64 %39
  store %struct.ov511_frame* %40, %struct.ov511_frame** %11, align 8
  %41 = load i64, i64* @printph, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %3
  %44 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %45 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %44, i32 0, i32 7
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 3
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 4
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 5
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 6
  %69 = load i8, i8* %68, align 1
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 7
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 8
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 9
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 10
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 11
  %84 = load i8, i8* %83, align 1
  %85 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %48, i8 zeroext %51, i8 zeroext %54, i8 zeroext %57, i8 zeroext %60, i8 zeroext %63, i8 zeroext %66, i8 zeroext %69, i8 zeroext %72, i8 zeroext %75, i8 zeroext %78, i8 zeroext %81, i8 zeroext %84)
  br label %86

86:                                               ; preds = %43, %3
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %90, %94
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %95, %99
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = or i32 %100, %104
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %105, %109
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 5
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = or i32 %110, %114
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 6
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = or i32 %115, %119
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 7
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %120, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %86
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 8
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = xor i32 %131, -1
  %133 = and i32 %132, 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127, %86
  br label %322

136:                                              ; preds = %127
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 8
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = and i32 %140, 128
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %292

143:                                              ; preds = %136
  %144 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %145 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %144, i32 0, i32 9
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %148 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %151 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @MAX_FRAME_SIZE(i32 %149, i32 %152)
  %154 = add nsw i64 %146, %153
  %155 = inttoptr i64 %154 to %struct.timeval*
  store %struct.timeval* %155, %struct.timeval** %12, align 8
  %156 = load %struct.timeval*, %struct.timeval** %12, align 8
  %157 = call i32 @do_gettimeofday(%struct.timeval* %156)
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 9
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = add nsw i32 %161, 1
  %163 = mul nsw i32 %162, 8
  %164 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %165 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i8*, i8** %5, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 10
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = add nsw i32 %169, 1
  %171 = mul nsw i32 %170, 8
  %172 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %173 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %175 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %179 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %182 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %185 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %176, i32 %177, i32 %180, i32 %183, i32 %186)
  %188 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %189 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %192 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %195 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @RESTRICT_TO_RANGE(i32 %190, i32 %193, i32 %196)
  %198 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %199 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %202 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %205 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @RESTRICT_TO_RANGE(i32 %200, i32 %203, i32 %206)
  %208 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %209 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @RESTRICT_TO_RANGE(i32 %210, i32 8, i32 %211)
  %213 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %214 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @STATE_LINES, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %289

218:                                              ; preds = %143
  %219 = load i64, i64* @FRAME_DONE, align 8
  %220 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %221 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %220, i32 0, i32 4
  store i64 %219, i64* %221, align 8
  %222 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %223 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %222, i32 0, i32 8
  %224 = call i32 @wake_up_interruptible(i32* %223)
  %225 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %226 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = add i64 %227, 1
  %229 = load i32, i32* @OV511_NUMFRAMES, align 4
  %230 = sext i32 %229 to i64
  %231 = urem i64 %228, %230
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %13, align 4
  %233 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %234 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %233, i32 0, i32 6
  %235 = load %struct.ov511_frame*, %struct.ov511_frame** %234, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %235, i64 %237
  %239 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @FRAME_READY, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %254, label %243

243:                                              ; preds = %218
  %244 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %245 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %244, i32 0, i32 6
  %246 = load %struct.ov511_frame*, %struct.ov511_frame** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %246, i64 %248
  %250 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @FRAME_GRABBING, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %267

254:                                              ; preds = %243, %218
  %255 = load i32, i32* %13, align 4
  %256 = sext i32 %255 to i64
  %257 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %258 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %257, i32 0, i32 3
  store i64 %256, i64* %258, align 8
  %259 = load i64, i64* @STATE_SCANNING, align 8
  %260 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %261 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %260, i32 0, i32 6
  %262 = load %struct.ov511_frame*, %struct.ov511_frame** %261, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %262, i64 %264
  %266 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %265, i32 0, i32 3
  store i64 %259, i64* %266, align 8
  br label %288

267:                                              ; preds = %243
  %268 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %269 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @FRAME_DONE, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %285

275:                                              ; preds = %267
  %276 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %277 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %276, i32 0, i32 6
  %278 = load %struct.ov511_frame*, %struct.ov511_frame** %277, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %278, i64 %280
  %282 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %283)
  br label %285

285:                                              ; preds = %275, %273
  %286 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %287 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %286, i32 0, i32 3
  store i64 -1, i64* %287, align 8
  br label %288

288:                                              ; preds = %285, %254
  br label %291

289:                                              ; preds = %143
  %290 = call i32 (i32, i8*, ...) @PDEBUG(i32 5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %291

291:                                              ; preds = %289, %288
  br label %321

292:                                              ; preds = %136
  %293 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %294 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %295)
  %297 = load i8*, i8** %5, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 8
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i32
  %301 = and i32 %300, 2
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %292
  %304 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %305 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %304, i32 0, i32 5
  store i32 1, i32* %305, align 8
  %306 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %307

307:                                              ; preds = %303, %292
  %308 = load i64, i64* @STATE_LINES, align 8
  %309 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %310 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %309, i32 0, i32 3
  store i64 %308, i64* %310, align 8
  %311 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %312 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %311, i32 0, i32 2
  store i32 0, i32* %312, align 8
  %313 = load i8*, i8** %5, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 8
  %315 = load i8, i8* %314, align 1
  %316 = zext i8 %315 to i32
  %317 = and i32 %316, 64
  %318 = trunc i32 %317 to i8
  %319 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %320 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %319, i32 0, i32 6
  store i8 %318, i8* %320, align 4
  br label %321

321:                                              ; preds = %307, %291
  br label %322

322:                                              ; preds = %321, %135
  %323 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %324 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @STATE_LINES, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %322
  %329 = call i32 (i32, i8*, ...) @PDEBUG(i32 5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %517

330:                                              ; preds = %322
  %331 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %332 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  store i32 9, i32* %8, align 4
  br label %337

336:                                              ; preds = %330
  store i32 0, i32* %8, align 4
  br label %337

337:                                              ; preds = %336, %335
  %338 = load i32, i32* %6, align 4
  %339 = load i32, i32* %8, align 4
  %340 = sub nsw i32 %338, %339
  %341 = sub nsw i32 %340, 1
  store i32 %341, i32* %7, align 4
  %342 = load i32, i32* @dumppix, align 4
  %343 = icmp eq i32 %342, 2
  br i1 %343, label %344, label %381

344:                                              ; preds = %337
  %345 = load i32, i32* %6, align 4
  %346 = sub nsw i32 %345, 1
  %347 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %348 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = add nsw i32 %349, %346
  store i32 %350, i32* %348, align 8
  %351 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %352 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* %10, align 4
  %355 = icmp sle i32 %353, %354
  br i1 %355, label %356, label %373

356:                                              ; preds = %344
  %357 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %358 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %357, i32 0, i32 7
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %361 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %359, %363
  %365 = load i32, i32* %6, align 4
  %366 = sub nsw i32 %365, 1
  %367 = sext i32 %366 to i64
  %368 = sub nsw i64 %364, %367
  %369 = load i8*, i8** %5, align 8
  %370 = load i32, i32* %6, align 4
  %371 = sub nsw i32 %370, 1
  %372 = call i32 @memcpy(i64 %368, i8* %369, i32 %371)
  br label %380

373:                                              ; preds = %344
  %374 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %375 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* %10, align 4
  %378 = sub nsw i32 %376, %377
  %379 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %378)
  br label %380

380:                                              ; preds = %373, %356
  br label %517

381:                                              ; preds = %337
  %382 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %383 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %382, i32 0, i32 6
  %384 = load i8, i8* %383, align 4
  %385 = icmp ne i8 %384, 0
  br i1 %385, label %426, label %386

386:                                              ; preds = %381
  %387 = load i32, i32* @remove_zeros, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %426, label %389

389:                                              ; preds = %386
  %390 = load i32, i32* %7, align 4
  %391 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %392 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = add nsw i32 %393, %390
  store i32 %394, i32* %392, align 8
  %395 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %396 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* %10, align 4
  %399 = icmp sle i32 %397, %398
  br i1 %399, label %400, label %418

400:                                              ; preds = %389
  %401 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %402 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %401, i32 0, i32 7
  %403 = load i64, i64* %402, align 8
  %404 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %405 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = sext i32 %406 to i64
  %408 = add nsw i64 %403, %407
  %409 = load i32, i32* %7, align 4
  %410 = sext i32 %409 to i64
  %411 = sub nsw i64 %408, %410
  %412 = load i8*, i8** %5, align 8
  %413 = load i32, i32* %8, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %412, i64 %414
  %416 = load i32, i32* %7, align 4
  %417 = call i32 @memcpy(i64 %411, i8* %415, i32 %416)
  br label %425

418:                                              ; preds = %389
  %419 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %420 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* %10, align 4
  %423 = sub nsw i32 %421, %422
  %424 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %423)
  br label %425

425:                                              ; preds = %418, %400
  br label %516

426:                                              ; preds = %386, %381
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %427 = load i32, i32* %8, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %448

429:                                              ; preds = %426
  %430 = load i32, i32* %8, align 4
  %431 = sub nsw i32 32, %430
  %432 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %433 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 8
  %435 = add nsw i32 %434, %431
  store i32 %435, i32* %433, align 8
  %436 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %437 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %436, i32 0, i32 7
  %438 = load i64, i64* %437, align 8
  %439 = load i8*, i8** %5, align 8
  %440 = load i32, i32* %8, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i8, i8* %439, i64 %441
  %443 = load i32, i32* %8, align 4
  %444 = sub nsw i32 32, %443
  %445 = call i32 @memcpy(i64 %438, i8* %442, i32 %444)
  %446 = load i32, i32* %15, align 4
  %447 = add nsw i32 %446, 32
  store i32 %447, i32* %15, align 4
  br label %448

448:                                              ; preds = %429, %426
  br label %449

449:                                              ; preds = %507, %448
  %450 = load i32, i32* %15, align 4
  %451 = load i32, i32* %6, align 4
  %452 = sub nsw i32 %451, 1
  %453 = icmp slt i32 %450, %452
  br i1 %453, label %454, label %510

454:                                              ; preds = %449
  store i32 1, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %455

455:                                              ; preds = %469, %454
  %456 = load i32, i32* %14, align 4
  %457 = icmp slt i32 %456, 32
  br i1 %457, label %458, label %472

458:                                              ; preds = %455
  %459 = load i8*, i8** %5, align 8
  %460 = load i32, i32* %15, align 4
  %461 = load i32, i32* %14, align 4
  %462 = add nsw i32 %460, %461
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8, i8* %459, i64 %463
  %465 = load i8, i8* %464, align 1
  %466 = icmp ne i8 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %458
  store i32 0, i32* %16, align 4
  br label %472

468:                                              ; preds = %458
  br label %469

469:                                              ; preds = %468
  %470 = load i32, i32* %14, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %14, align 4
  br label %455

472:                                              ; preds = %467, %455
  %473 = load i32, i32* %16, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %472
  br label %507

476:                                              ; preds = %472
  %477 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %478 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 8
  %480 = load i32, i32* %17, align 4
  %481 = add nsw i32 %479, %480
  %482 = add nsw i32 %481, 32
  %483 = load i32, i32* %10, align 4
  %484 = icmp sle i32 %482, %483
  br i1 %484, label %485, label %504

485:                                              ; preds = %476
  %486 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %487 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %486, i32 0, i32 7
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %490 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 8
  %492 = sext i32 %491 to i64
  %493 = add nsw i64 %488, %492
  %494 = load i32, i32* %17, align 4
  %495 = sext i32 %494 to i64
  %496 = add nsw i64 %493, %495
  %497 = load i8*, i8** %5, align 8
  %498 = load i32, i32* %15, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i8, i8* %497, i64 %499
  %501 = call i32 @memcpy(i64 %496, i8* %500, i32 32)
  %502 = load i32, i32* %17, align 4
  %503 = add nsw i32 %502, 32
  store i32 %503, i32* %17, align 4
  br label %506

504:                                              ; preds = %476
  %505 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %506

506:                                              ; preds = %504, %485
  br label %507

507:                                              ; preds = %506, %475
  %508 = load i32, i32* %15, align 4
  %509 = add nsw i32 %508, 32
  store i32 %509, i32* %15, align 4
  br label %449

510:                                              ; preds = %449
  %511 = load i32, i32* %17, align 4
  %512 = load %struct.ov511_frame*, %struct.ov511_frame** %11, align 8
  %513 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %512, i32 0, i32 2
  %514 = load i32, i32* %513, align 8
  %515 = add nsw i32 %514, %511
  store i32 %515, i32* %513, align 8
  br label %516

516:                                              ; preds = %510, %425
  br label %517

517:                                              ; preds = %328, %516, %380
  ret void
}

declare dso_local i32 @MAX_RAW_DATA_SIZE(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i64 @MAX_FRAME_SIZE(i32, i32) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @RESTRICT_TO_RANGE(i32, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
