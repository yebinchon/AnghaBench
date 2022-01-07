; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_move_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_move_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i32, i64, i32, i32, %struct.ov511_frame*, %struct.TYPE_2__*, i64 }
%struct.ov511_frame = type { i64, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32 }

@printph = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"ph: %2x %2x %2x %2x %2x %2x %2x %2x\0A\00", align 1
@STATE_LINES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Detected frame end/start\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Frame start, framenum = %d\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Frame end, curframe = %d, hw=%d, vw=%d, recvd=%d\00", align 1
@FRAME_DONE = common dso_local global i64 0, align 8
@OV511_NUMFRAMES = common dso_local global i32 0, align 4
@FRAME_READY = common dso_local global i64 0, align 8
@FRAME_GRABBING = common dso_local global i64 0, align 8
@STATE_SCANNING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"** Frame done **\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Frame not ready? state = %d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"SOF dropped (no active frame)\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Starting capture on frame %d\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"scanstate: no SOF yet\00", align 1
@dumppix = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"Raw data buffer overrun!! (%d)\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Raw data buffer overrun!!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ov511*, i8*, i32)* @ov518_move_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov518_move_data(%struct.usb_ov511* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ov511_frame*, align 8
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %16 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %19 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MAX_RAW_DATA_SIZE(i32 %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %23 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %22, i32 0, i32 5
  %24 = load %struct.ov511_frame*, %struct.ov511_frame** %23, align 8
  %25 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %26 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %24, i64 %27
  store %struct.ov511_frame* %28, %struct.ov511_frame** %8, align 8
  %29 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %30 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %3
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %40, %44
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %45, %49
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %50, %54
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 5
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %55, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %114, label %62

62:                                               ; preds = %36
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 6
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %114

68:                                               ; preds = %62
  %69 = load i64, i64* @printph, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %68
  %72 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %73 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %72, i32 0, i32 6
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 4
  %90 = load i8, i8* %89, align 1
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 5
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 6
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 7
  %99 = load i8, i8* %98, align 1
  %100 = call i32 @dev_info(i32* %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8 zeroext %78, i8 zeroext %81, i8 zeroext %84, i8 zeroext %87, i8 zeroext %90, i8 zeroext %93, i8 zeroext %96, i8 zeroext %99)
  br label %101

101:                                              ; preds = %71, %68
  %102 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %103 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @STATE_LINES, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %115

109:                                              ; preds = %101
  %110 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %111 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %112)
  br label %264

114:                                              ; preds = %62, %36
  br label %276

115:                                              ; preds = %107
  %116 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %117 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %116, i32 0, i32 12
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %120 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %123 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @MAX_FRAME_SIZE(i32 %121, i32 %124)
  %126 = add nsw i64 %118, %125
  %127 = inttoptr i64 %126 to %struct.timeval*
  store %struct.timeval* %127, %struct.timeval** %9, align 8
  %128 = load %struct.timeval*, %struct.timeval** %9, align 8
  %129 = call i32 @do_gettimeofday(%struct.timeval* %128)
  %130 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %131 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 9
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 10
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %142 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %132, i32 %136, i32 %140, i32 %143)
  %145 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %146 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %149 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %151 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %154 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 4
  %155 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %156 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %159 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %162 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @RESTRICT_TO_RANGE(i32 %157, i32 %160, i32 %163)
  %165 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %166 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %169 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %172 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @RESTRICT_TO_RANGE(i32 %167, i32 %170, i32 %173)
  %175 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %176 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @RESTRICT_TO_RANGE(i32 %177, i32 8, i32 %178)
  %180 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %181 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @STATE_LINES, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %263

185:                                              ; preds = %115
  %186 = load i64, i64* @FRAME_DONE, align 8
  %187 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %188 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %187, i32 0, i32 6
  store i64 %186, i64* %188, align 8
  %189 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %190 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %189, i32 0, i32 11
  %191 = call i32 @wake_up_interruptible(i32* %190)
  %192 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %193 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %194, 1
  %196 = load i32, i32* @OV511_NUMFRAMES, align 4
  %197 = sext i32 %196 to i64
  %198 = urem i64 %195, %197
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %10, align 4
  %200 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %201 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %200, i32 0, i32 5
  %202 = load %struct.ov511_frame*, %struct.ov511_frame** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %202, i64 %204
  %206 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @FRAME_READY, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %221, label %210

210:                                              ; preds = %185
  %211 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %212 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %211, i32 0, i32 5
  %213 = load %struct.ov511_frame*, %struct.ov511_frame** %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %213, i64 %215
  %217 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @FRAME_GRABBING, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %240

221:                                              ; preds = %210, %185
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %225 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %224, i32 0, i32 2
  store i64 %223, i64* %225, align 8
  %226 = load i64, i64* @STATE_SCANNING, align 8
  %227 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %228 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %227, i32 0, i32 5
  %229 = load %struct.ov511_frame*, %struct.ov511_frame** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %229, i64 %231
  %233 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %232, i32 0, i32 0
  store i64 %226, i64* %233, align 8
  %234 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %235 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %234, i32 0, i32 5
  %236 = load %struct.ov511_frame*, %struct.ov511_frame** %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %236, i64 %238
  store %struct.ov511_frame* %239, %struct.ov511_frame** %8, align 8
  br label %262

240:                                              ; preds = %210
  %241 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %242 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %241, i32 0, i32 6
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @FRAME_DONE, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %258

248:                                              ; preds = %240
  %249 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %250 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %249, i32 0, i32 5
  %251 = load %struct.ov511_frame*, %struct.ov511_frame** %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %251, i64 %253
  %255 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %254, i32 0, i32 6
  %256 = load i64, i64* %255, align 8
  %257 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %256)
  br label %258

258:                                              ; preds = %248, %246
  %259 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %260 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %259, i32 0, i32 2
  store i64 -1, i64* %260, align 8
  %261 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %388

262:                                              ; preds = %221
  br label %263

263:                                              ; preds = %262, %115
  br label %264

264:                                              ; preds = %263, %109
  %265 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %266 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %265, i32 0, i32 10
  %267 = load i32, i32* %266, align 8
  %268 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %267)
  %269 = load i64, i64* @STATE_LINES, align 8
  %270 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %271 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %270, i32 0, i32 0
  store i64 %269, i64* %271, align 8
  %272 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %273 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %272, i32 0, i32 1
  store i32 0, i32* %273, align 8
  %274 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %275 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %274, i32 0, i32 8
  store i32 1, i32* %275, align 4
  br label %276

276:                                              ; preds = %264, %114
  %277 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %278 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @STATE_LINES, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %388

284:                                              ; preds = %276
  %285 = load i32, i32* @dumppix, align 4
  %286 = icmp eq i32 %285, 2
  br i1 %286, label %287, label %321

287:                                              ; preds = %284
  %288 = load i32, i32* %6, align 4
  %289 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %290 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = add nsw i32 %291, %288
  store i32 %292, i32* %290, align 8
  %293 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %294 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %7, align 4
  %297 = icmp sle i32 %295, %296
  br i1 %297, label %298, label %313

298:                                              ; preds = %287
  %299 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %300 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %299, i32 0, i32 9
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %303 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %301, %305
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = sub nsw i64 %306, %308
  %310 = load i8*, i8** %5, align 8
  %311 = load i32, i32* %6, align 4
  %312 = call i32 @memcpy(i64 %309, i8* %310, i32 %311)
  br label %320

313:                                              ; preds = %287
  %314 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %315 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sub nsw i32 %316, %317
  %319 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %318)
  br label %320

320:                                              ; preds = %313, %298
  br label %388

321:                                              ; preds = %284
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %322

322:                                              ; preds = %379, %321
  %323 = load i32, i32* %12, align 4
  %324 = load i32, i32* %6, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %382

326:                                              ; preds = %322
  store i32 1, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %327

327:                                              ; preds = %341, %326
  %328 = load i32, i32* %11, align 4
  %329 = icmp slt i32 %328, 8
  br i1 %329, label %330, label %344

330:                                              ; preds = %327
  %331 = load i8*, i8** %5, align 8
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* %11, align 4
  %334 = add nsw i32 %332, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %331, i64 %335
  %337 = load i8, i8* %336, align 1
  %338 = icmp ne i8 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %330
  store i32 0, i32* %13, align 4
  br label %344

340:                                              ; preds = %330
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %11, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %11, align 4
  br label %327

344:                                              ; preds = %339, %327
  %345 = load i32, i32* %13, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %344
  br label %379

348:                                              ; preds = %344
  %349 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %350 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* %14, align 4
  %353 = add nsw i32 %351, %352
  %354 = add nsw i32 %353, 8
  %355 = load i32, i32* %7, align 4
  %356 = icmp sle i32 %354, %355
  br i1 %356, label %357, label %376

357:                                              ; preds = %348
  %358 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %359 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %358, i32 0, i32 9
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %362 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = sext i32 %363 to i64
  %365 = add nsw i64 %360, %364
  %366 = load i32, i32* %14, align 4
  %367 = sext i32 %366 to i64
  %368 = add nsw i64 %365, %367
  %369 = load i8*, i8** %5, align 8
  %370 = load i32, i32* %12, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %369, i64 %371
  %373 = call i32 @memcpy(i64 %368, i8* %372, i32 8)
  %374 = load i32, i32* %14, align 4
  %375 = add nsw i32 %374, 8
  store i32 %375, i32* %14, align 4
  br label %378

376:                                              ; preds = %348
  %377 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %378

378:                                              ; preds = %376, %357
  br label %379

379:                                              ; preds = %378, %347
  %380 = load i32, i32* %12, align 4
  %381 = add nsw i32 %380, 8
  store i32 %381, i32* %12, align 4
  br label %322

382:                                              ; preds = %322
  %383 = load i32, i32* %14, align 4
  %384 = load %struct.ov511_frame*, %struct.ov511_frame** %8, align 8
  %385 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = add nsw i32 %386, %383
  store i32 %387, i32* %385, align 8
  br label %388

388:                                              ; preds = %258, %282, %382, %320
  ret void
}

declare dso_local i32 @MAX_RAW_DATA_SIZE(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i64 @MAX_FRAME_SIZE(i32, i32) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @RESTRICT_TO_RANGE(i32, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
