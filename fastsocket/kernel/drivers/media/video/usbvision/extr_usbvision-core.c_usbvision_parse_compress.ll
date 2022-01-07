; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_parse_compress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_parse_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i8*, i32, i32, i32, i32, i32, i32, %struct.usbvision_frame* }
%struct.usbvision_frame = type { i32, i32, i8*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@usbvision_parse_compress.Y = internal global i8* null, align 8
@usbvision_parse_compress.U = internal global i8* null, align 8
@usbvision_parse_compress.V = internal global i8* null, align 8
@V4L2_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YVU420 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@parse_state_out = common dso_local global i32 0, align 4
@parse_state_next_frame = common dso_local global i32 0, align 4
@MAX_FRAME_WIDTH = common dso_local global i32 0, align 4
@parse_state_continue = common dso_local global i32 0, align 4
@USBVISION_STRIP_HEADER_LEN = common dso_local global i32 0, align 4
@USBVISION_STRIP_LEN_MAX = common dso_local global i32 0, align 4
@USBVISION_STRIP_MAGIC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, i64*)* @usbvision_parse_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_parse_compress(%struct.usb_usbvision* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_usbvision*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.usbvision_frame*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [400 x i8], align 16
  %11 = alloca [3 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %26 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %27 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %26, i32 0, i32 7
  %28 = load %struct.usbvision_frame*, %struct.usbvision_frame** %27, align 8
  store %struct.usbvision_frame* %28, %struct.usbvision_frame** %6, align 8
  %29 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %30 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %33 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  store i32 %35, i32* %22, align 4
  %36 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %37 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @V4L2_PIX_FMT_YUV422P, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %2
  %43 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %44 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @V4L2_PIX_FMT_YVU420, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %42, %2
  %50 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %51 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %54 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %57 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %52, i64 %60
  store i8* %61, i8** %7, align 8
  br label %75

62:                                               ; preds = %42
  %63 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %64 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %67 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %70 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %65, i64 %73
  store i8* %74, i8** %7, align 8
  br label %75

75:                                               ; preds = %62, %49
  %76 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %77 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %75
  %83 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %84 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %22, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %90 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = ashr i32 %91, 1
  %93 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %94 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %88, i64 %97
  store i8* %98, i8** %8, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* %22, align 4
  %101 = ashr i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8* %103, i8** %9, align 8
  br label %134

104:                                              ; preds = %75
  %105 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %106 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @V4L2_PIX_FMT_YVU420, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %104
  %112 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %113 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %22, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %119 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %122 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %120, %123
  %125 = ashr i32 %124, 2
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %117, i64 %126
  store i8* %127, i8** %9, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* %22, align 4
  %130 = ashr i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  store i8* %132, i8** %8, align 8
  br label %133

133:                                              ; preds = %111, %104
  br label %134

134:                                              ; preds = %133, %82
  %135 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %136 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %141 = call i32 @usbvision_adjust_compression(%struct.usb_usbvision* %140)
  br label %142

142:                                              ; preds = %139, %134
  %143 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %144 = call i32 @scratch_len(%struct.usb_usbvision* %143)
  %145 = icmp slt i32 %144, 3
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* @parse_state_out, align 4
  store i32 %147, i32* %3, align 4
  br label %621

148:                                              ; preds = %142
  %149 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %150 = call i32 @scratch_set_extra_ptr(%struct.usb_usbvision* %149, i32* %15, i32 0)
  %151 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %152 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %153 = call i32 @scratch_get_extra(%struct.usb_usbvision* %151, i8* %152, i32* %15, i32 3)
  %154 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp ne i32 %156, 90
  br i1 %157, label %158, label %164

158:                                              ; preds = %148
  %159 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %160 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* @parse_state_next_frame, align 4
  store i32 %163, i32* %3, align 4
  br label %621

164:                                              ; preds = %148
  %165 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %166 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp ne i32 %167, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %164
  %173 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %174 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %172, %164
  %178 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = mul i32 2, %180
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  %183 = icmp sgt i32 %182, 400
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %186 = call i32 @usbvision_request_intra(%struct.usb_usbvision* %185)
  br label %187

187:                                              ; preds = %184, %177
  %188 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %189 = call i32 @scratch_len(%struct.usb_usbvision* %188)
  %190 = load i32, i32* %14, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* @parse_state_out, align 4
  store i32 %193, i32* %3, align 4
  br label %621

194:                                              ; preds = %187
  %195 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %196 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %248

199:                                              ; preds = %194
  %200 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %201 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %204 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %207 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %205, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %202, i64 %210
  store i8* %211, i8** @usbvision_parse_compress.Y, align 8
  %212 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %213 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = load i32, i32* %22, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %219 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sdiv i32 %220, 2
  %222 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %223 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = sdiv i32 %224, 2
  %226 = mul nsw i32 %221, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %217, i64 %227
  store i8* %228, i8** @usbvision_parse_compress.U, align 8
  %229 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %230 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = load i32, i32* %22, align 4
  %233 = sdiv i32 %232, 4
  %234 = mul nsw i32 %233, 5
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %231, i64 %235
  %237 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %238 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sdiv i32 %239, 2
  %241 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %242 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = sdiv i32 %243, 2
  %245 = mul nsw i32 %240, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %236, i64 %246
  store i8* %247, i8** @usbvision_parse_compress.V, align 8
  br label %250

248:                                              ; preds = %194
  %249 = load i32, i32* @parse_state_next_frame, align 4
  store i32 %249, i32* %3, align 4
  br label %621

250:                                              ; preds = %199
  %251 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %252 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %251, i32 0, i32 6
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %20, align 4
  %255 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %256 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @MAX_FRAME_WIDTH, align 4
  %259 = mul nsw i32 %257, %258
  store i32 %259, i32* %19, align 4
  %260 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %261 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 0
  %262 = load i32, i32* %14, align 4
  %263 = call i32 @scratch_get(%struct.usb_usbvision* %260, i8* %261, i32 %262)
  %264 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %265 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  store i32 %266, i32* %13, align 4
  store i32 3, i32* %18, align 4
  %267 = load i32, i32* %18, align 4
  %268 = load i32, i32* %13, align 4
  %269 = sub nsw i32 %268, 1
  %270 = sdiv i32 %269, 96
  %271 = add nsw i32 %267, %270
  %272 = load i32, i32* %13, align 4
  %273 = sdiv i32 %272, 2
  %274 = sub nsw i32 %273, 1
  %275 = sdiv i32 %274, 96
  %276 = add nsw i32 %271, %275
  %277 = add nsw i32 %276, 2
  store i32 %277, i32* %16, align 4
  %278 = load i32, i32* %16, align 4
  store i32 %278, i32* %17, align 4
  %279 = load i32, i32* %17, align 4
  %280 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %281 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 8
  %282 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %283 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 0
  %284 = load i8*, i8** @usbvision_parse_compress.Y, align 8
  %285 = load i32, i32* %13, align 4
  %286 = call i32 @usbvision_decompress(%struct.usb_usbvision* %282, i8* %283, i8* %284, i32* %17, i32* %18, i32 %285)
  store i32 %286, i32* %21, align 4
  %287 = load i32, i32* %14, align 4
  %288 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %289 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = icmp sgt i32 %287, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %250
  %293 = load i32, i32* %14, align 4
  %294 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %295 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 4
  br label %296

296:                                              ; preds = %292, %250
  %297 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %298 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = srem i32 %299, 2
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %309

302:                                              ; preds = %296
  %303 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %304 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 0
  %305 = load i8*, i8** @usbvision_parse_compress.V, align 8
  %306 = load i32, i32* %13, align 4
  %307 = sdiv i32 %306, 2
  %308 = call i32 @usbvision_decompress(%struct.usb_usbvision* %303, i8* %304, i8* %305, i32* %17, i32* %18, i32 %307)
  store i32 %308, i32* %21, align 4
  br label %316

309:                                              ; preds = %296
  %310 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %311 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 0
  %312 = load i8*, i8** @usbvision_parse_compress.U, align 8
  %313 = load i32, i32* %13, align 4
  %314 = sdiv i32 %313, 2
  %315 = call i32 @usbvision_decompress(%struct.usb_usbvision* %310, i8* %311, i8* %312, i32* %17, i32* %18, i32 %314)
  store i32 %315, i32* %21, align 4
  br label %316

316:                                              ; preds = %309, %302
  %317 = load i32, i32* %17, align 4
  %318 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %319 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  %321 = icmp sgt i32 %317, %320
  br i1 %321, label %322, label %326

322:                                              ; preds = %316
  %323 = load i32, i32* %17, align 4
  %324 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %325 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %324, i32 0, i32 3
  store i32 %323, i32* %325, align 8
  br label %326

326:                                              ; preds = %322, %316
  %327 = load i32, i32* %17, align 4
  %328 = load i32, i32* %14, align 4
  %329 = icmp sgt i32 %327, %328
  br i1 %329, label %330, label %335

330:                                              ; preds = %326
  %331 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %332 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %330, %326
  store i32 0, i32* %12, align 4
  br label %336

336:                                              ; preds = %566, %335
  %337 = load i32, i32* %12, align 4
  %338 = load i32, i32* %13, align 4
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %569

340:                                              ; preds = %336
  %341 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %342 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %341, i32 0, i32 6
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %379

347:                                              ; preds = %340
  %348 = load i8*, i8** @usbvision_parse_compress.Y, align 8
  %349 = load i32, i32* %12, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* %348, i64 %350
  %352 = load i8, i8* %351, align 1
  %353 = load i8*, i8** %7, align 8
  %354 = getelementptr inbounds i8, i8* %353, i32 1
  store i8* %354, i8** %7, align 8
  store i8 %352, i8* %353, align 1
  %355 = load i32, i32* %12, align 4
  %356 = and i32 %355, 1
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %347
  %359 = load i8*, i8** @usbvision_parse_compress.U, align 8
  %360 = load i32, i32* %12, align 4
  %361 = sdiv i32 %360, 2
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %359, i64 %362
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  br label %374

366:                                              ; preds = %347
  %367 = load i8*, i8** @usbvision_parse_compress.V, align 8
  %368 = load i32, i32* %12, align 4
  %369 = sdiv i32 %368, 2
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %367, i64 %370
  %372 = load i8, i8* %371, align 1
  %373 = zext i8 %372 to i32
  br label %374

374:                                              ; preds = %366, %358
  %375 = phi i32 [ %365, %358 ], [ %373, %366 ]
  %376 = trunc i32 %375 to i8
  %377 = load i8*, i8** %7, align 8
  %378 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %378, i8** %7, align 8
  store i8 %376, i8* %377, align 1
  br label %563

379:                                              ; preds = %340
  %380 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %381 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %380, i32 0, i32 6
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @V4L2_PIX_FMT_YUV422P, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %416

386:                                              ; preds = %379
  %387 = load i8*, i8** @usbvision_parse_compress.Y, align 8
  %388 = load i32, i32* %12, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* %387, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = load i8*, i8** %7, align 8
  %393 = getelementptr inbounds i8, i8* %392, i32 1
  store i8* %393, i8** %7, align 8
  store i8 %391, i8* %392, align 1
  %394 = load i32, i32* %12, align 4
  %395 = and i32 %394, 1
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %406

397:                                              ; preds = %386
  %398 = load i8*, i8** @usbvision_parse_compress.U, align 8
  %399 = load i32, i32* %12, align 4
  %400 = ashr i32 %399, 1
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8, i8* %398, i64 %401
  %403 = load i8, i8* %402, align 1
  %404 = load i8*, i8** %8, align 8
  %405 = getelementptr inbounds i8, i8* %404, i32 1
  store i8* %405, i8** %8, align 8
  store i8 %403, i8* %404, align 1
  br label %415

406:                                              ; preds = %386
  %407 = load i8*, i8** @usbvision_parse_compress.V, align 8
  %408 = load i32, i32* %12, align 4
  %409 = ashr i32 %408, 1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8, i8* %407, i64 %410
  %412 = load i8, i8* %411, align 1
  %413 = load i8*, i8** %9, align 8
  %414 = getelementptr inbounds i8, i8* %413, i32 1
  store i8* %414, i8** %9, align 8
  store i8 %412, i8* %413, align 1
  br label %415

415:                                              ; preds = %406, %397
  br label %562

416:                                              ; preds = %379
  %417 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %418 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %417, i32 0, i32 6
  %419 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @V4L2_PIX_FMT_YVU420, align 4
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %423, label %457

423:                                              ; preds = %416
  %424 = load i8*, i8** @usbvision_parse_compress.Y, align 8
  %425 = load i32, i32* %12, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, i8* %424, i64 %426
  %428 = load i8, i8* %427, align 1
  %429 = load i8*, i8** %7, align 8
  %430 = getelementptr inbounds i8, i8* %429, i32 1
  store i8* %430, i8** %7, align 8
  store i8 %428, i8* %429, align 1
  %431 = load i32, i32* %12, align 4
  %432 = and i32 %431, 1
  %433 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %434 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %433, i32 0, i32 4
  %435 = load i32, i32* %434, align 4
  %436 = and i32 %435, 1
  %437 = or i32 %432, %436
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %456, label %439

439:                                              ; preds = %423
  %440 = load i8*, i8** @usbvision_parse_compress.U, align 8
  %441 = load i32, i32* %12, align 4
  %442 = ashr i32 %441, 1
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i8, i8* %440, i64 %443
  %445 = load i8, i8* %444, align 1
  %446 = load i8*, i8** %8, align 8
  %447 = getelementptr inbounds i8, i8* %446, i32 1
  store i8* %447, i8** %8, align 8
  store i8 %445, i8* %446, align 1
  %448 = load i8*, i8** @usbvision_parse_compress.V, align 8
  %449 = load i32, i32* %12, align 4
  %450 = ashr i32 %449, 1
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8, i8* %448, i64 %451
  %453 = load i8, i8* %452, align 1
  %454 = load i8*, i8** %9, align 8
  %455 = getelementptr inbounds i8, i8* %454, i32 1
  store i8* %455, i8** %9, align 8
  store i8 %453, i8* %454, align 1
  br label %456

456:                                              ; preds = %439, %423
  br label %561

457:                                              ; preds = %416
  %458 = load i8*, i8** @usbvision_parse_compress.Y, align 8
  %459 = load i32, i32* %12, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i8, i8* %458, i64 %460
  %462 = load i8, i8* %461, align 1
  %463 = load i8*, i8** @usbvision_parse_compress.U, align 8
  %464 = load i32, i32* %12, align 4
  %465 = sdiv i32 %464, 2
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i8, i8* %463, i64 %466
  %468 = load i8, i8* %467, align 1
  %469 = load i8*, i8** @usbvision_parse_compress.V, align 8
  %470 = load i32, i32* %12, align 4
  %471 = sdiv i32 %470, 2
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i8, i8* %469, i64 %472
  %474 = load i8, i8* %473, align 1
  %475 = load i8, i8* %23, align 1
  %476 = load i8, i8* %24, align 1
  %477 = load i8, i8* %25, align 1
  %478 = call i32 @YUV_TO_RGB_BY_THE_BOOK(i8 zeroext %462, i8 zeroext %468, i8 zeroext %474, i8 zeroext %475, i8 zeroext %476, i8 zeroext %477)
  %479 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %480 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %479, i32 0, i32 6
  %481 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  switch i32 %482, label %560 [
    i32 132, label %483
    i32 129, label %491
    i32 128, label %515
    i32 131, label %538
    i32 130, label %548
  ]

483:                                              ; preds = %457
  %484 = load i8*, i8** @usbvision_parse_compress.Y, align 8
  %485 = load i32, i32* %12, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i8, i8* %484, i64 %486
  %488 = load i8, i8* %487, align 1
  %489 = load i8*, i8** %7, align 8
  %490 = getelementptr inbounds i8, i8* %489, i32 1
  store i8* %490, i8** %7, align 8
  store i8 %488, i8* %489, align 1
  br label %560

491:                                              ; preds = %457
  %492 = load i8, i8* %23, align 1
  %493 = zext i8 %492 to i32
  %494 = and i32 31, %493
  %495 = load i8, i8* %24, align 1
  %496 = zext i8 %495 to i32
  %497 = shl i32 %496, 5
  %498 = and i32 224, %497
  %499 = or i32 %494, %498
  %500 = trunc i32 %499 to i8
  %501 = load i8*, i8** %7, align 8
  %502 = getelementptr inbounds i8, i8* %501, i32 1
  store i8* %502, i8** %7, align 8
  store i8 %500, i8* %501, align 1
  %503 = load i8, i8* %24, align 1
  %504 = zext i8 %503 to i32
  %505 = ashr i32 %504, 3
  %506 = and i32 3, %505
  %507 = load i8, i8* %25, align 1
  %508 = zext i8 %507 to i32
  %509 = shl i32 %508, 2
  %510 = and i32 124, %509
  %511 = or i32 %506, %510
  %512 = trunc i32 %511 to i8
  %513 = load i8*, i8** %7, align 8
  %514 = getelementptr inbounds i8, i8* %513, i32 1
  store i8* %514, i8** %7, align 8
  store i8 %512, i8* %513, align 1
  br label %560

515:                                              ; preds = %457
  %516 = load i8, i8* %23, align 1
  %517 = zext i8 %516 to i32
  %518 = and i32 31, %517
  %519 = load i8, i8* %24, align 1
  %520 = zext i8 %519 to i32
  %521 = shl i32 %520, 5
  %522 = and i32 224, %521
  %523 = or i32 %518, %522
  %524 = trunc i32 %523 to i8
  %525 = load i8*, i8** %7, align 8
  %526 = getelementptr inbounds i8, i8* %525, i32 1
  store i8* %526, i8** %7, align 8
  store i8 %524, i8* %525, align 1
  %527 = load i8, i8* %24, align 1
  %528 = zext i8 %527 to i32
  %529 = ashr i32 %528, 3
  %530 = and i32 7, %529
  %531 = load i8, i8* %25, align 1
  %532 = zext i8 %531 to i32
  %533 = and i32 248, %532
  %534 = or i32 %530, %533
  %535 = trunc i32 %534 to i8
  %536 = load i8*, i8** %7, align 8
  %537 = getelementptr inbounds i8, i8* %536, i32 1
  store i8* %537, i8** %7, align 8
  store i8 %535, i8* %536, align 1
  br label %560

538:                                              ; preds = %457
  %539 = load i8, i8* %23, align 1
  %540 = load i8*, i8** %7, align 8
  %541 = getelementptr inbounds i8, i8* %540, i32 1
  store i8* %541, i8** %7, align 8
  store i8 %539, i8* %540, align 1
  %542 = load i8, i8* %24, align 1
  %543 = load i8*, i8** %7, align 8
  %544 = getelementptr inbounds i8, i8* %543, i32 1
  store i8* %544, i8** %7, align 8
  store i8 %542, i8* %543, align 1
  %545 = load i8, i8* %25, align 1
  %546 = load i8*, i8** %7, align 8
  %547 = getelementptr inbounds i8, i8* %546, i32 1
  store i8* %547, i8** %7, align 8
  store i8 %545, i8* %546, align 1
  br label %560

548:                                              ; preds = %457
  %549 = load i8, i8* %23, align 1
  %550 = load i8*, i8** %7, align 8
  %551 = getelementptr inbounds i8, i8* %550, i32 1
  store i8* %551, i8** %7, align 8
  store i8 %549, i8* %550, align 1
  %552 = load i8, i8* %24, align 1
  %553 = load i8*, i8** %7, align 8
  %554 = getelementptr inbounds i8, i8* %553, i32 1
  store i8* %554, i8** %7, align 8
  store i8 %552, i8* %553, align 1
  %555 = load i8, i8* %25, align 1
  %556 = load i8*, i8** %7, align 8
  %557 = getelementptr inbounds i8, i8* %556, i32 1
  store i8* %557, i8** %7, align 8
  store i8 %555, i8* %556, align 1
  %558 = load i8*, i8** %7, align 8
  %559 = getelementptr inbounds i8, i8* %558, i32 1
  store i8* %559, i8** %7, align 8
  br label %560

560:                                              ; preds = %457, %548, %538, %515, %491, %483
  br label %561

561:                                              ; preds = %560, %456
  br label %562

562:                                              ; preds = %561, %415
  br label %563

563:                                              ; preds = %562, %374
  %564 = load i32, i32* %19, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %19, align 4
  br label %566

566:                                              ; preds = %563
  %567 = load i32, i32* %12, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %12, align 4
  br label %336

569:                                              ; preds = %336
  %570 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %571 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %570, i32 0, i32 6
  %572 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 4
  %574 = load i32, i32* @V4L2_PIX_FMT_YVU420, align 4
  %575 = icmp ne i32 %573, %574
  br i1 %575, label %576, label %584

576:                                              ; preds = %569
  %577 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %578 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %577, i32 0, i32 5
  %579 = load i32, i32* %578, align 8
  %580 = sext i32 %579 to i64
  %581 = load i64*, i64** %5, align 8
  %582 = load i64, i64* %581, align 8
  %583 = add nsw i64 %582, %580
  store i64 %583, i64* %581, align 8
  br label %605

584:                                              ; preds = %569
  %585 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %586 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %585, i32 0, i32 4
  %587 = load i32, i32* %586, align 4
  %588 = and i32 %587, 1
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %594

590:                                              ; preds = %584
  %591 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %592 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %591, i32 0, i32 5
  %593 = load i32, i32* %592, align 8
  br label %599

594:                                              ; preds = %584
  %595 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %596 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %595, i32 0, i32 5
  %597 = load i32, i32* %596, align 8
  %598 = shl i32 %597, 1
  br label %599

599:                                              ; preds = %594, %590
  %600 = phi i32 [ %593, %590 ], [ %598, %594 ]
  %601 = sext i32 %600 to i64
  %602 = load i64*, i64** %5, align 8
  %603 = load i64, i64* %602, align 8
  %604 = add nsw i64 %603, %601
  store i64 %604, i64* %602, align 8
  br label %605

605:                                              ; preds = %599, %576
  %606 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %607 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %606, i32 0, i32 4
  %608 = load i32, i32* %607, align 4
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* %607, align 4
  %610 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %611 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %610, i32 0, i32 4
  %612 = load i32, i32* %611, align 4
  %613 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %614 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  %616 = icmp sge i32 %612, %615
  br i1 %616, label %617, label %619

617:                                              ; preds = %605
  %618 = load i32, i32* @parse_state_next_frame, align 4
  store i32 %618, i32* %3, align 4
  br label %621

619:                                              ; preds = %605
  %620 = load i32, i32* @parse_state_continue, align 4
  store i32 %620, i32* %3, align 4
  br label %621

621:                                              ; preds = %619, %617, %248, %192, %158, %146
  %622 = load i32, i32* %3, align 4
  ret i32 %622
}

declare dso_local i32 @usbvision_adjust_compression(%struct.usb_usbvision*) #1

declare dso_local i32 @scratch_len(%struct.usb_usbvision*) #1

declare dso_local i32 @scratch_set_extra_ptr(%struct.usb_usbvision*, i32*, i32) #1

declare dso_local i32 @scratch_get_extra(%struct.usb_usbvision*, i8*, i32*, i32) #1

declare dso_local i32 @usbvision_request_intra(%struct.usb_usbvision*) #1

declare dso_local i32 @scratch_get(%struct.usb_usbvision*, i8*, i32) #1

declare dso_local i32 @usbvision_decompress(%struct.usb_usbvision*, i8*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @YUV_TO_RGB_BY_THE_BOOK(i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
