; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_parse_lines_420.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_parse_lines_420.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i32, %struct.usbvision_frame* }
%struct.usbvision_frame = type { i8*, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@__const.usbvision_parse_lines_420.y_step = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 0, i32 2], align 16
@__const.usbvision_parse_lines_420.uv_step = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 0, i32 4], align 16
@MAX_FRAME_WIDTH = common dso_local global i32 0, align 4
@parse_state_out = common dso_local global i32 0, align 4
@parse_state_next_frame = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@parse_state_continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, i64*)* @usbvision_parse_lines_420 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_parse_lines_420(%struct.usb_usbvision* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_usbvision*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.usbvision_frame*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca [4 x i32], align 16
  %23 = alloca i32, align 4
  %24 = alloca [2 x i8], align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8, align 1
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 128, i32* %17, align 4
  store i32 64, i32* %18, align 4
  store i32 32, i32* %19, align 4
  %42 = bitcast [4 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %42, i8* align 16 bitcast ([4 x i32]* @__const.usbvision_parse_lines_420.y_step to i8*), i64 16, i1 false)
  store i32 4, i32* %21, align 4
  %43 = bitcast [4 x i32]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 16 bitcast ([4 x i32]* @__const.usbvision_parse_lines_420.uv_step to i8*), i64 16, i1 false)
  store i32 4, i32* %23, align 4
  %44 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %45 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %44, i32 0, i32 2
  %46 = load %struct.usbvision_frame*, %struct.usbvision_frame** %45, align 8
  store %struct.usbvision_frame* %46, %struct.usbvision_frame** %6, align 8
  %47 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %48 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %51 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %54 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %49, i64 %57
  store i8* %58, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %61 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %64 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %59, i64 %67
  store i8* %68, i8** %8, align 8
  %69 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %70 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %39, align 4
  %73 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %74 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %39, align 4
  %78 = mul nsw i32 %76, %77
  store i32 %78, i32* %41, align 4
  %79 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %80 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MAX_FRAME_WIDTH, align 4
  %83 = mul nsw i32 %81, %82
  store i32 %83, i32* %37, align 4
  %84 = load i32, i32* %37, align 4
  %85 = load i32, i32* @MAX_FRAME_WIDTH, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %38, align 4
  %87 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %88 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %40, align 4
  %90 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %91 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %9, align 4
  %94 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %95 = call i32 @scratch_len(%struct.usb_usbvision* %94)
  %96 = load i32, i32* %9, align 4
  %97 = mul nsw i32 %96, 3
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %2
  %100 = load i32, i32* @parse_state_out, align 4
  store i32 %100, i32* %3, align 4
  br label %781

101:                                              ; preds = %2
  %102 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %103 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  %106 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %107 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = icmp sge i32 %105, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* @parse_state_next_frame, align 4
  store i32 %111, i32* %3, align 4
  br label %781

112:                                              ; preds = %101
  %113 = load i32, i32* %9, align 4
  %114 = urem i32 %113, 128
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1, i32 0
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %9, align 4
  %119 = udiv i32 %118, 128
  %120 = mul i32 %119, 192
  %121 = load i32, i32* %12, align 4
  %122 = mul nsw i32 %121, 64
  %123 = add i32 %120, %122
  store i32 %123, i32* %16, align 4
  %124 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @scratch_set_extra_ptr(%struct.usb_usbvision* %124, i32* %13, i32 %125)
  %127 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %128 = call i32 @scratch_set_extra_ptr(%struct.usb_usbvision* %127, i32* %14, i32 128)
  %129 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %12, align 4
  %132 = sub nsw i32 4, %131
  %133 = mul nsw i32 %132, 32
  %134 = add nsw i32 %130, %133
  %135 = call i32 @scratch_set_extra_ptr(%struct.usb_usbvision* %129, i32* %15, i32 %134)
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %738, %112
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %9, align 4
  %139 = udiv i32 %138, 32
  %140 = icmp ult i32 %137, %139
  br i1 %140, label %141, label %741

141:                                              ; preds = %136
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %699, %141
  %143 = load i32, i32* %11, align 4
  %144 = icmp slt i32 %143, 32
  br i1 %144, label %145, label %702

145:                                              ; preds = %142
  %146 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %147 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  %148 = call i32 @scratch_get(%struct.usb_usbvision* %146, i8* %147, i32 2)
  %149 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %150 = call i32 @scratch_get_extra(%struct.usb_usbvision* %149, i8* %25, i32* %14, i32 1)
  %151 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %152 = call i32 @scratch_get_extra(%struct.usb_usbvision* %151, i8* %26, i32* %15, i32 1)
  %153 = load i8, i8* %26, align 1
  %154 = zext i8 %153 to i32
  %155 = sub nsw i32 %154, 128
  store i32 %155, i32* %29, align 4
  %156 = load i8, i8* %25, align 1
  %157 = zext i8 %156 to i32
  %158 = sub nsw i32 %157, 128
  store i32 %158, i32* %28, align 4
  %159 = load i32, i32* %29, align 4
  %160 = mul nsw i32 132252, %159
  store i32 %160, i32* %30, align 4
  %161 = load i32, i32* %28, align 4
  %162 = mul nsw i32 -53281, %161
  %163 = load i32, i32* %29, align 4
  %164 = mul nsw i32 25625, %163
  %165 = sub nsw i32 %162, %164
  store i32 %165, i32* %31, align 4
  %166 = load i32, i32* %28, align 4
  %167 = mul nsw i32 104595, %166
  store i32 %167, i32* %32, align 4
  %168 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %169 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %145
  %175 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = load i8*, i8** %7, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %7, align 8
  store i8 %176, i8* %177, align 1
  %179 = load i8, i8* %26, align 1
  %180 = load i8*, i8** %7, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %7, align 8
  store i8 %179, i8* %180, align 1
  br label %292

182:                                              ; preds = %145
  %183 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = sub nsw i32 %185, 16
  %187 = mul nsw i32 76284, %186
  store i32 %187, i32* %27, align 4
  %188 = load i32, i32* %27, align 4
  %189 = load i32, i32* %30, align 4
  %190 = add nsw i32 %188, %189
  %191 = ashr i32 %190, 16
  store i32 %191, i32* %35, align 4
  %192 = load i32, i32* %27, align 4
  %193 = load i32, i32* %31, align 4
  %194 = add nsw i32 %192, %193
  %195 = ashr i32 %194, 16
  store i32 %195, i32* %34, align 4
  %196 = load i32, i32* %27, align 4
  %197 = load i32, i32* %32, align 4
  %198 = add nsw i32 %196, %197
  %199 = ashr i32 %198, 16
  store i32 %199, i32* %33, align 4
  %200 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %201 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  switch i32 %203, label %291 [
    i32 128, label %204
    i32 131, label %230
    i32 130, label %246
    i32 129, label %264
  ]

204:                                              ; preds = %182
  %205 = load i32, i32* %34, align 4
  %206 = call i32 @LIMIT_RGB(i32 %205)
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %36, align 1
  %208 = load i32, i32* %33, align 4
  %209 = call i32 @LIMIT_RGB(i32 %208)
  %210 = and i32 31, %209
  %211 = load i8, i8* %36, align 1
  %212 = zext i8 %211 to i32
  %213 = shl i32 %212, 5
  %214 = and i32 224, %213
  %215 = or i32 %210, %214
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %7, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %7, align 8
  store i8 %216, i8* %217, align 1
  %219 = load i8, i8* %36, align 1
  %220 = zext i8 %219 to i32
  %221 = ashr i32 %220, 3
  %222 = and i32 7, %221
  %223 = load i32, i32* %35, align 4
  %224 = call i32 @LIMIT_RGB(i32 %223)
  %225 = and i32 248, %224
  %226 = or i32 %222, %225
  %227 = trunc i32 %226 to i8
  %228 = load i8*, i8** %7, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %7, align 8
  store i8 %227, i8* %228, align 1
  br label %291

230:                                              ; preds = %182
  %231 = load i32, i32* %33, align 4
  %232 = call i32 @LIMIT_RGB(i32 %231)
  %233 = trunc i32 %232 to i8
  %234 = load i8*, i8** %7, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %7, align 8
  store i8 %233, i8* %234, align 1
  %236 = load i32, i32* %34, align 4
  %237 = call i32 @LIMIT_RGB(i32 %236)
  %238 = trunc i32 %237 to i8
  %239 = load i8*, i8** %7, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %7, align 8
  store i8 %238, i8* %239, align 1
  %241 = load i32, i32* %35, align 4
  %242 = call i32 @LIMIT_RGB(i32 %241)
  %243 = trunc i32 %242 to i8
  %244 = load i8*, i8** %7, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %7, align 8
  store i8 %243, i8* %244, align 1
  br label %291

246:                                              ; preds = %182
  %247 = load i32, i32* %33, align 4
  %248 = call i32 @LIMIT_RGB(i32 %247)
  %249 = trunc i32 %248 to i8
  %250 = load i8*, i8** %7, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %7, align 8
  store i8 %249, i8* %250, align 1
  %252 = load i32, i32* %34, align 4
  %253 = call i32 @LIMIT_RGB(i32 %252)
  %254 = trunc i32 %253 to i8
  %255 = load i8*, i8** %7, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %7, align 8
  store i8 %254, i8* %255, align 1
  %257 = load i32, i32* %35, align 4
  %258 = call i32 @LIMIT_RGB(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = load i8*, i8** %7, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %7, align 8
  store i8 %259, i8* %260, align 1
  %262 = load i8*, i8** %7, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %7, align 8
  br label %291

264:                                              ; preds = %182
  %265 = load i32, i32* %34, align 4
  %266 = call i32 @LIMIT_RGB(i32 %265)
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %36, align 1
  %268 = load i32, i32* %33, align 4
  %269 = call i32 @LIMIT_RGB(i32 %268)
  %270 = and i32 31, %269
  %271 = load i8, i8* %36, align 1
  %272 = zext i8 %271 to i32
  %273 = shl i32 %272, 5
  %274 = and i32 224, %273
  %275 = or i32 %270, %274
  %276 = trunc i32 %275 to i8
  %277 = load i8*, i8** %7, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %7, align 8
  store i8 %276, i8* %277, align 1
  %279 = load i8, i8* %36, align 1
  %280 = zext i8 %279 to i32
  %281 = ashr i32 %280, 3
  %282 = and i32 3, %281
  %283 = load i32, i32* %35, align 4
  %284 = call i32 @LIMIT_RGB(i32 %283)
  %285 = shl i32 %284, 2
  %286 = and i32 124, %285
  %287 = or i32 %282, %286
  %288 = trunc i32 %287 to i8
  %289 = load i8*, i8** %7, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %7, align 8
  store i8 %288, i8* %289, align 1
  br label %291

291:                                              ; preds = %182, %264, %246, %230, %204
  br label %292

292:                                              ; preds = %291, %174
  %293 = load i32, i32* %40, align 4
  %294 = load i32, i32* %37, align 4
  %295 = add nsw i32 %294, %293
  store i32 %295, i32* %37, align 4
  %296 = load i32, i32* %41, align 4
  %297 = load i8*, i8** %7, align 8
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i8, i8* %297, i64 %298
  store i8* %299, i8** %7, align 8
  %300 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %301 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %300, i32 0, i32 4
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %314

306:                                              ; preds = %292
  %307 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 1
  %308 = load i8, i8* %307, align 1
  %309 = load i8*, i8** %7, align 8
  %310 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %310, i8** %7, align 8
  store i8 %308, i8* %309, align 1
  %311 = load i8, i8* %25, align 1
  %312 = load i8*, i8** %7, align 8
  %313 = getelementptr inbounds i8, i8* %312, i32 1
  store i8* %313, i8** %7, align 8
  store i8 %311, i8* %312, align 1
  br label %424

314:                                              ; preds = %292
  %315 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 1
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = sub nsw i32 %317, 16
  %319 = mul nsw i32 76284, %318
  store i32 %319, i32* %27, align 4
  %320 = load i32, i32* %27, align 4
  %321 = load i32, i32* %30, align 4
  %322 = add nsw i32 %320, %321
  %323 = ashr i32 %322, 16
  store i32 %323, i32* %35, align 4
  %324 = load i32, i32* %27, align 4
  %325 = load i32, i32* %31, align 4
  %326 = add nsw i32 %324, %325
  %327 = ashr i32 %326, 16
  store i32 %327, i32* %34, align 4
  %328 = load i32, i32* %27, align 4
  %329 = load i32, i32* %32, align 4
  %330 = add nsw i32 %328, %329
  %331 = ashr i32 %330, 16
  store i32 %331, i32* %33, align 4
  %332 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %333 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  switch i32 %335, label %423 [
    i32 128, label %336
    i32 131, label %362
    i32 130, label %378
    i32 129, label %396
  ]

336:                                              ; preds = %314
  %337 = load i32, i32* %34, align 4
  %338 = call i32 @LIMIT_RGB(i32 %337)
  %339 = trunc i32 %338 to i8
  store i8 %339, i8* %36, align 1
  %340 = load i32, i32* %33, align 4
  %341 = call i32 @LIMIT_RGB(i32 %340)
  %342 = and i32 31, %341
  %343 = load i8, i8* %36, align 1
  %344 = zext i8 %343 to i32
  %345 = shl i32 %344, 5
  %346 = and i32 224, %345
  %347 = or i32 %342, %346
  %348 = trunc i32 %347 to i8
  %349 = load i8*, i8** %7, align 8
  %350 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %350, i8** %7, align 8
  store i8 %348, i8* %349, align 1
  %351 = load i8, i8* %36, align 1
  %352 = zext i8 %351 to i32
  %353 = ashr i32 %352, 3
  %354 = and i32 7, %353
  %355 = load i32, i32* %35, align 4
  %356 = call i32 @LIMIT_RGB(i32 %355)
  %357 = and i32 248, %356
  %358 = or i32 %354, %357
  %359 = trunc i32 %358 to i8
  %360 = load i8*, i8** %7, align 8
  %361 = getelementptr inbounds i8, i8* %360, i32 1
  store i8* %361, i8** %7, align 8
  store i8 %359, i8* %360, align 1
  br label %423

362:                                              ; preds = %314
  %363 = load i32, i32* %33, align 4
  %364 = call i32 @LIMIT_RGB(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = load i8*, i8** %7, align 8
  %367 = getelementptr inbounds i8, i8* %366, i32 1
  store i8* %367, i8** %7, align 8
  store i8 %365, i8* %366, align 1
  %368 = load i32, i32* %34, align 4
  %369 = call i32 @LIMIT_RGB(i32 %368)
  %370 = trunc i32 %369 to i8
  %371 = load i8*, i8** %7, align 8
  %372 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %372, i8** %7, align 8
  store i8 %370, i8* %371, align 1
  %373 = load i32, i32* %35, align 4
  %374 = call i32 @LIMIT_RGB(i32 %373)
  %375 = trunc i32 %374 to i8
  %376 = load i8*, i8** %7, align 8
  %377 = getelementptr inbounds i8, i8* %376, i32 1
  store i8* %377, i8** %7, align 8
  store i8 %375, i8* %376, align 1
  br label %423

378:                                              ; preds = %314
  %379 = load i32, i32* %33, align 4
  %380 = call i32 @LIMIT_RGB(i32 %379)
  %381 = trunc i32 %380 to i8
  %382 = load i8*, i8** %7, align 8
  %383 = getelementptr inbounds i8, i8* %382, i32 1
  store i8* %383, i8** %7, align 8
  store i8 %381, i8* %382, align 1
  %384 = load i32, i32* %34, align 4
  %385 = call i32 @LIMIT_RGB(i32 %384)
  %386 = trunc i32 %385 to i8
  %387 = load i8*, i8** %7, align 8
  %388 = getelementptr inbounds i8, i8* %387, i32 1
  store i8* %388, i8** %7, align 8
  store i8 %386, i8* %387, align 1
  %389 = load i32, i32* %35, align 4
  %390 = call i32 @LIMIT_RGB(i32 %389)
  %391 = trunc i32 %390 to i8
  %392 = load i8*, i8** %7, align 8
  %393 = getelementptr inbounds i8, i8* %392, i32 1
  store i8* %393, i8** %7, align 8
  store i8 %391, i8* %392, align 1
  %394 = load i8*, i8** %7, align 8
  %395 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %395, i8** %7, align 8
  br label %423

396:                                              ; preds = %314
  %397 = load i32, i32* %34, align 4
  %398 = call i32 @LIMIT_RGB(i32 %397)
  %399 = trunc i32 %398 to i8
  store i8 %399, i8* %36, align 1
  %400 = load i32, i32* %33, align 4
  %401 = call i32 @LIMIT_RGB(i32 %400)
  %402 = and i32 31, %401
  %403 = load i8, i8* %36, align 1
  %404 = zext i8 %403 to i32
  %405 = shl i32 %404, 5
  %406 = and i32 224, %405
  %407 = or i32 %402, %406
  %408 = trunc i32 %407 to i8
  %409 = load i8*, i8** %7, align 8
  %410 = getelementptr inbounds i8, i8* %409, i32 1
  store i8* %410, i8** %7, align 8
  store i8 %408, i8* %409, align 1
  %411 = load i8, i8* %36, align 1
  %412 = zext i8 %411 to i32
  %413 = ashr i32 %412, 3
  %414 = and i32 3, %413
  %415 = load i32, i32* %35, align 4
  %416 = call i32 @LIMIT_RGB(i32 %415)
  %417 = shl i32 %416, 2
  %418 = and i32 124, %417
  %419 = or i32 %414, %418
  %420 = trunc i32 %419 to i8
  %421 = load i8*, i8** %7, align 8
  %422 = getelementptr inbounds i8, i8* %421, i32 1
  store i8* %422, i8** %7, align 8
  store i8 %420, i8* %421, align 1
  br label %423

423:                                              ; preds = %314, %396, %378, %362, %336
  br label %424

424:                                              ; preds = %423, %306
  %425 = load i32, i32* %40, align 4
  %426 = load i32, i32* %37, align 4
  %427 = add nsw i32 %426, %425
  store i32 %427, i32* %37, align 4
  %428 = load i32, i32* %41, align 4
  %429 = load i8*, i8** %7, align 8
  %430 = sext i32 %428 to i64
  %431 = getelementptr inbounds i8, i8* %429, i64 %430
  store i8* %431, i8** %7, align 8
  %432 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %433 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  %434 = call i32 @scratch_get_extra(%struct.usb_usbvision* %432, i8* %433, i32* %13, i32 2)
  %435 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %436 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %435, i32 0, i32 4
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %441, label %449

441:                                              ; preds = %424
  %442 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  %443 = load i8, i8* %442, align 1
  %444 = load i8*, i8** %8, align 8
  %445 = getelementptr inbounds i8, i8* %444, i32 1
  store i8* %445, i8** %8, align 8
  store i8 %443, i8* %444, align 1
  %446 = load i8, i8* %26, align 1
  %447 = load i8*, i8** %8, align 8
  %448 = getelementptr inbounds i8, i8* %447, i32 1
  store i8* %448, i8** %8, align 8
  store i8 %446, i8* %447, align 1
  br label %559

449:                                              ; preds = %424
  %450 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  %451 = load i8, i8* %450, align 1
  %452 = zext i8 %451 to i32
  %453 = sub nsw i32 %452, 16
  %454 = mul nsw i32 76284, %453
  store i32 %454, i32* %27, align 4
  %455 = load i32, i32* %27, align 4
  %456 = load i32, i32* %30, align 4
  %457 = add nsw i32 %455, %456
  %458 = ashr i32 %457, 16
  store i32 %458, i32* %35, align 4
  %459 = load i32, i32* %27, align 4
  %460 = load i32, i32* %31, align 4
  %461 = add nsw i32 %459, %460
  %462 = ashr i32 %461, 16
  store i32 %462, i32* %34, align 4
  %463 = load i32, i32* %27, align 4
  %464 = load i32, i32* %32, align 4
  %465 = add nsw i32 %463, %464
  %466 = ashr i32 %465, 16
  store i32 %466, i32* %33, align 4
  %467 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %468 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %467, i32 0, i32 4
  %469 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  switch i32 %470, label %558 [
    i32 128, label %471
    i32 131, label %497
    i32 130, label %513
    i32 129, label %531
  ]

471:                                              ; preds = %449
  %472 = load i32, i32* %34, align 4
  %473 = call i32 @LIMIT_RGB(i32 %472)
  %474 = trunc i32 %473 to i8
  store i8 %474, i8* %36, align 1
  %475 = load i32, i32* %33, align 4
  %476 = call i32 @LIMIT_RGB(i32 %475)
  %477 = and i32 31, %476
  %478 = load i8, i8* %36, align 1
  %479 = zext i8 %478 to i32
  %480 = shl i32 %479, 5
  %481 = and i32 224, %480
  %482 = or i32 %477, %481
  %483 = trunc i32 %482 to i8
  %484 = load i8*, i8** %8, align 8
  %485 = getelementptr inbounds i8, i8* %484, i32 1
  store i8* %485, i8** %8, align 8
  store i8 %483, i8* %484, align 1
  %486 = load i8, i8* %36, align 1
  %487 = zext i8 %486 to i32
  %488 = ashr i32 %487, 3
  %489 = and i32 7, %488
  %490 = load i32, i32* %35, align 4
  %491 = call i32 @LIMIT_RGB(i32 %490)
  %492 = and i32 248, %491
  %493 = or i32 %489, %492
  %494 = trunc i32 %493 to i8
  %495 = load i8*, i8** %8, align 8
  %496 = getelementptr inbounds i8, i8* %495, i32 1
  store i8* %496, i8** %8, align 8
  store i8 %494, i8* %495, align 1
  br label %558

497:                                              ; preds = %449
  %498 = load i32, i32* %33, align 4
  %499 = call i32 @LIMIT_RGB(i32 %498)
  %500 = trunc i32 %499 to i8
  %501 = load i8*, i8** %8, align 8
  %502 = getelementptr inbounds i8, i8* %501, i32 1
  store i8* %502, i8** %8, align 8
  store i8 %500, i8* %501, align 1
  %503 = load i32, i32* %34, align 4
  %504 = call i32 @LIMIT_RGB(i32 %503)
  %505 = trunc i32 %504 to i8
  %506 = load i8*, i8** %8, align 8
  %507 = getelementptr inbounds i8, i8* %506, i32 1
  store i8* %507, i8** %8, align 8
  store i8 %505, i8* %506, align 1
  %508 = load i32, i32* %35, align 4
  %509 = call i32 @LIMIT_RGB(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = load i8*, i8** %8, align 8
  %512 = getelementptr inbounds i8, i8* %511, i32 1
  store i8* %512, i8** %8, align 8
  store i8 %510, i8* %511, align 1
  br label %558

513:                                              ; preds = %449
  %514 = load i32, i32* %33, align 4
  %515 = call i32 @LIMIT_RGB(i32 %514)
  %516 = trunc i32 %515 to i8
  %517 = load i8*, i8** %8, align 8
  %518 = getelementptr inbounds i8, i8* %517, i32 1
  store i8* %518, i8** %8, align 8
  store i8 %516, i8* %517, align 1
  %519 = load i32, i32* %34, align 4
  %520 = call i32 @LIMIT_RGB(i32 %519)
  %521 = trunc i32 %520 to i8
  %522 = load i8*, i8** %8, align 8
  %523 = getelementptr inbounds i8, i8* %522, i32 1
  store i8* %523, i8** %8, align 8
  store i8 %521, i8* %522, align 1
  %524 = load i32, i32* %35, align 4
  %525 = call i32 @LIMIT_RGB(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = load i8*, i8** %8, align 8
  %528 = getelementptr inbounds i8, i8* %527, i32 1
  store i8* %528, i8** %8, align 8
  store i8 %526, i8* %527, align 1
  %529 = load i8*, i8** %8, align 8
  %530 = getelementptr inbounds i8, i8* %529, i32 1
  store i8* %530, i8** %8, align 8
  br label %558

531:                                              ; preds = %449
  %532 = load i32, i32* %34, align 4
  %533 = call i32 @LIMIT_RGB(i32 %532)
  %534 = trunc i32 %533 to i8
  store i8 %534, i8* %36, align 1
  %535 = load i32, i32* %33, align 4
  %536 = call i32 @LIMIT_RGB(i32 %535)
  %537 = and i32 31, %536
  %538 = load i8, i8* %36, align 1
  %539 = zext i8 %538 to i32
  %540 = shl i32 %539, 5
  %541 = and i32 224, %540
  %542 = or i32 %537, %541
  %543 = trunc i32 %542 to i8
  %544 = load i8*, i8** %8, align 8
  %545 = getelementptr inbounds i8, i8* %544, i32 1
  store i8* %545, i8** %8, align 8
  store i8 %543, i8* %544, align 1
  %546 = load i8, i8* %36, align 1
  %547 = zext i8 %546 to i32
  %548 = ashr i32 %547, 3
  %549 = and i32 3, %548
  %550 = load i32, i32* %35, align 4
  %551 = call i32 @LIMIT_RGB(i32 %550)
  %552 = shl i32 %551, 2
  %553 = and i32 124, %552
  %554 = or i32 %549, %553
  %555 = trunc i32 %554 to i8
  %556 = load i8*, i8** %8, align 8
  %557 = getelementptr inbounds i8, i8* %556, i32 1
  store i8* %557, i8** %8, align 8
  store i8 %555, i8* %556, align 1
  br label %558

558:                                              ; preds = %449, %531, %513, %497, %471
  br label %559

559:                                              ; preds = %558, %441
  %560 = load i32, i32* %40, align 4
  %561 = load i32, i32* %38, align 4
  %562 = add nsw i32 %561, %560
  store i32 %562, i32* %38, align 4
  %563 = load i32, i32* %41, align 4
  %564 = load i8*, i8** %8, align 8
  %565 = sext i32 %563 to i64
  %566 = getelementptr inbounds i8, i8* %564, i64 %565
  store i8* %566, i8** %8, align 8
  %567 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %568 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %567, i32 0, i32 4
  %569 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %572 = icmp eq i32 %570, %571
  br i1 %572, label %573, label %581

573:                                              ; preds = %559
  %574 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 1
  %575 = load i8, i8* %574, align 1
  %576 = load i8*, i8** %8, align 8
  %577 = getelementptr inbounds i8, i8* %576, i32 1
  store i8* %577, i8** %8, align 8
  store i8 %575, i8* %576, align 1
  %578 = load i8, i8* %25, align 1
  %579 = load i8*, i8** %8, align 8
  %580 = getelementptr inbounds i8, i8* %579, i32 1
  store i8* %580, i8** %8, align 8
  store i8 %578, i8* %579, align 1
  br label %691

581:                                              ; preds = %559
  %582 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 1
  %583 = load i8, i8* %582, align 1
  %584 = zext i8 %583 to i32
  %585 = sub nsw i32 %584, 16
  %586 = mul nsw i32 76284, %585
  store i32 %586, i32* %27, align 4
  %587 = load i32, i32* %27, align 4
  %588 = load i32, i32* %30, align 4
  %589 = add nsw i32 %587, %588
  %590 = ashr i32 %589, 16
  store i32 %590, i32* %35, align 4
  %591 = load i32, i32* %27, align 4
  %592 = load i32, i32* %31, align 4
  %593 = add nsw i32 %591, %592
  %594 = ashr i32 %593, 16
  store i32 %594, i32* %34, align 4
  %595 = load i32, i32* %27, align 4
  %596 = load i32, i32* %32, align 4
  %597 = add nsw i32 %595, %596
  %598 = ashr i32 %597, 16
  store i32 %598, i32* %33, align 4
  %599 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %600 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %599, i32 0, i32 4
  %601 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %600, i32 0, i32 1
  %602 = load i32, i32* %601, align 4
  switch i32 %602, label %690 [
    i32 128, label %603
    i32 131, label %629
    i32 130, label %645
    i32 129, label %663
  ]

603:                                              ; preds = %581
  %604 = load i32, i32* %34, align 4
  %605 = call i32 @LIMIT_RGB(i32 %604)
  %606 = trunc i32 %605 to i8
  store i8 %606, i8* %36, align 1
  %607 = load i32, i32* %33, align 4
  %608 = call i32 @LIMIT_RGB(i32 %607)
  %609 = and i32 31, %608
  %610 = load i8, i8* %36, align 1
  %611 = zext i8 %610 to i32
  %612 = shl i32 %611, 5
  %613 = and i32 224, %612
  %614 = or i32 %609, %613
  %615 = trunc i32 %614 to i8
  %616 = load i8*, i8** %8, align 8
  %617 = getelementptr inbounds i8, i8* %616, i32 1
  store i8* %617, i8** %8, align 8
  store i8 %615, i8* %616, align 1
  %618 = load i8, i8* %36, align 1
  %619 = zext i8 %618 to i32
  %620 = ashr i32 %619, 3
  %621 = and i32 7, %620
  %622 = load i32, i32* %35, align 4
  %623 = call i32 @LIMIT_RGB(i32 %622)
  %624 = and i32 248, %623
  %625 = or i32 %621, %624
  %626 = trunc i32 %625 to i8
  %627 = load i8*, i8** %8, align 8
  %628 = getelementptr inbounds i8, i8* %627, i32 1
  store i8* %628, i8** %8, align 8
  store i8 %626, i8* %627, align 1
  br label %690

629:                                              ; preds = %581
  %630 = load i32, i32* %33, align 4
  %631 = call i32 @LIMIT_RGB(i32 %630)
  %632 = trunc i32 %631 to i8
  %633 = load i8*, i8** %8, align 8
  %634 = getelementptr inbounds i8, i8* %633, i32 1
  store i8* %634, i8** %8, align 8
  store i8 %632, i8* %633, align 1
  %635 = load i32, i32* %34, align 4
  %636 = call i32 @LIMIT_RGB(i32 %635)
  %637 = trunc i32 %636 to i8
  %638 = load i8*, i8** %8, align 8
  %639 = getelementptr inbounds i8, i8* %638, i32 1
  store i8* %639, i8** %8, align 8
  store i8 %637, i8* %638, align 1
  %640 = load i32, i32* %35, align 4
  %641 = call i32 @LIMIT_RGB(i32 %640)
  %642 = trunc i32 %641 to i8
  %643 = load i8*, i8** %8, align 8
  %644 = getelementptr inbounds i8, i8* %643, i32 1
  store i8* %644, i8** %8, align 8
  store i8 %642, i8* %643, align 1
  br label %690

645:                                              ; preds = %581
  %646 = load i32, i32* %33, align 4
  %647 = call i32 @LIMIT_RGB(i32 %646)
  %648 = trunc i32 %647 to i8
  %649 = load i8*, i8** %8, align 8
  %650 = getelementptr inbounds i8, i8* %649, i32 1
  store i8* %650, i8** %8, align 8
  store i8 %648, i8* %649, align 1
  %651 = load i32, i32* %34, align 4
  %652 = call i32 @LIMIT_RGB(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = load i8*, i8** %8, align 8
  %655 = getelementptr inbounds i8, i8* %654, i32 1
  store i8* %655, i8** %8, align 8
  store i8 %653, i8* %654, align 1
  %656 = load i32, i32* %35, align 4
  %657 = call i32 @LIMIT_RGB(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = load i8*, i8** %8, align 8
  %660 = getelementptr inbounds i8, i8* %659, i32 1
  store i8* %660, i8** %8, align 8
  store i8 %658, i8* %659, align 1
  %661 = load i8*, i8** %8, align 8
  %662 = getelementptr inbounds i8, i8* %661, i32 1
  store i8* %662, i8** %8, align 8
  br label %690

663:                                              ; preds = %581
  %664 = load i32, i32* %34, align 4
  %665 = call i32 @LIMIT_RGB(i32 %664)
  %666 = trunc i32 %665 to i8
  store i8 %666, i8* %36, align 1
  %667 = load i32, i32* %33, align 4
  %668 = call i32 @LIMIT_RGB(i32 %667)
  %669 = and i32 31, %668
  %670 = load i8, i8* %36, align 1
  %671 = zext i8 %670 to i32
  %672 = shl i32 %671, 5
  %673 = and i32 224, %672
  %674 = or i32 %669, %673
  %675 = trunc i32 %674 to i8
  %676 = load i8*, i8** %8, align 8
  %677 = getelementptr inbounds i8, i8* %676, i32 1
  store i8* %677, i8** %8, align 8
  store i8 %675, i8* %676, align 1
  %678 = load i8, i8* %36, align 1
  %679 = zext i8 %678 to i32
  %680 = ashr i32 %679, 3
  %681 = and i32 3, %680
  %682 = load i32, i32* %35, align 4
  %683 = call i32 @LIMIT_RGB(i32 %682)
  %684 = shl i32 %683, 2
  %685 = and i32 124, %684
  %686 = or i32 %681, %685
  %687 = trunc i32 %686 to i8
  %688 = load i8*, i8** %8, align 8
  %689 = getelementptr inbounds i8, i8* %688, i32 1
  store i8* %689, i8** %8, align 8
  store i8 %687, i8* %688, align 1
  br label %690

690:                                              ; preds = %581, %663, %645, %629, %603
  br label %691

691:                                              ; preds = %690, %573
  %692 = load i32, i32* %40, align 4
  %693 = load i32, i32* %38, align 4
  %694 = add nsw i32 %693, %692
  store i32 %694, i32* %38, align 4
  %695 = load i32, i32* %41, align 4
  %696 = load i8*, i8** %8, align 8
  %697 = sext i32 %695 to i64
  %698 = getelementptr inbounds i8, i8* %696, i64 %697
  store i8* %698, i8** %8, align 8
  br label %699

699:                                              ; preds = %691
  %700 = load i32, i32* %11, align 4
  %701 = add nsw i32 %700, 2
  store i32 %701, i32* %11, align 4
  br label %142

702:                                              ; preds = %142
  %703 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %704 = load i32, i32* %10, align 4
  %705 = urem i32 %704, 4
  %706 = zext i32 %705 to i64
  %707 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %706
  %708 = load i32, i32* %707, align 4
  %709 = mul nsw i32 %708, 32
  %710 = call i32 @scratch_rm_old(%struct.usb_usbvision* %703, i32 %709)
  %711 = load i32, i32* %10, align 4
  %712 = load i32, i32* %12, align 4
  %713 = mul nsw i32 2, %712
  %714 = add i32 %711, %713
  %715 = urem i32 %714, 4
  %716 = zext i32 %715 to i64
  %717 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %716
  %718 = load i32, i32* %717, align 4
  %719 = mul nsw i32 %718, 32
  %720 = call i32 @scratch_inc_extra_ptr(i32* %13, i32 %719)
  %721 = load i32, i32* %10, align 4
  %722 = urem i32 %721, 4
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %723
  %725 = load i32, i32* %724, align 4
  %726 = mul nsw i32 %725, 32
  %727 = call i32 @scratch_inc_extra_ptr(i32* %14, i32 %726)
  %728 = load i32, i32* %10, align 4
  %729 = load i32, i32* %12, align 4
  %730 = mul nsw i32 2, %729
  %731 = add i32 %728, %730
  %732 = urem i32 %731, 4
  %733 = zext i32 %732 to i64
  %734 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %733
  %735 = load i32, i32* %734, align 4
  %736 = mul nsw i32 %735, 32
  %737 = call i32 @scratch_inc_extra_ptr(i32* %15, i32 %736)
  br label %738

738:                                              ; preds = %702
  %739 = load i32, i32* %10, align 4
  %740 = add i32 %739, 1
  store i32 %740, i32* %10, align 4
  br label %136

741:                                              ; preds = %136
  %742 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %743 = load i32, i32* %9, align 4
  %744 = mul i32 %743, 3
  %745 = udiv i32 %744, 2
  %746 = load i32, i32* %12, align 4
  %747 = mul nsw i32 %746, 32
  %748 = add i32 %745, %747
  %749 = call i32 @scratch_rm_old(%struct.usb_usbvision* %742, i32 %748)
  %750 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %751 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %750, i32 0, i32 0
  %752 = load i32, i32* %751, align 8
  %753 = mul nsw i32 2, %752
  %754 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %755 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %754, i32 0, i32 2
  %756 = load i32, i32* %755, align 4
  %757 = add nsw i32 %756, %753
  store i32 %757, i32* %755, align 4
  %758 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %759 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %758, i32 0, i32 1
  %760 = load i32, i32* %759, align 8
  %761 = mul nsw i32 %760, 2
  %762 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %763 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %762, i32 0, i32 0
  %764 = load i32, i32* %763, align 8
  %765 = mul nsw i32 %761, %764
  %766 = sext i32 %765 to i64
  %767 = load i64*, i64** %5, align 8
  %768 = load i64, i64* %767, align 8
  %769 = add nsw i64 %768, %766
  store i64 %769, i64* %767, align 8
  %770 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %771 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %770, i32 0, i32 2
  %772 = load i32, i32* %771, align 4
  %773 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %774 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %773, i32 0, i32 3
  %775 = load i32, i32* %774, align 8
  %776 = icmp sge i32 %772, %775
  br i1 %776, label %777, label %779

777:                                              ; preds = %741
  %778 = load i32, i32* @parse_state_next_frame, align 4
  store i32 %778, i32* %3, align 4
  br label %781

779:                                              ; preds = %741
  %780 = load i32, i32* @parse_state_continue, align 4
  store i32 %780, i32* %3, align 4
  br label %781

781:                                              ; preds = %779, %777, %110, %99
  %782 = load i32, i32* %3, align 4
  ret i32 %782
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @scratch_len(%struct.usb_usbvision*) #2

declare dso_local i32 @scratch_set_extra_ptr(%struct.usb_usbvision*, i32*, i32) #2

declare dso_local i32 @scratch_get(%struct.usb_usbvision*, i8*, i32) #2

declare dso_local i32 @scratch_get_extra(%struct.usb_usbvision*, i8*, i32*, i32) #2

declare dso_local i32 @LIMIT_RGB(i32) #2

declare dso_local i32 @scratch_rm_old(%struct.usb_usbvision*, i32) #2

declare dso_local i32 @scratch_inc_extra_ptr(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
