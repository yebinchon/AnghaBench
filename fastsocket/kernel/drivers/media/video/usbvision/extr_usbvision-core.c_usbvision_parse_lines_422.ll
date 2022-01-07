; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_parse_lines_422.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_parse_lines_422.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i32, %struct.usbvision_frame* }
%struct.usbvision_frame = type { i8*, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@__const.usbvision_parse_lines_422.yuyv = private unnamed_addr constant [4 x i8] c"\B4\80\0A\80", align 1
@DBG_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"out of data in line %d, need %u.\0A\00", align 1
@parse_state_out = common dso_local global i32 0, align 4
@parse_state_next_frame = common dso_local global i32 0, align 4
@MAX_FRAME_WIDTH = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@parse_state_continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, i64*)* @usbvision_parse_lines_422 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_parse_lines_422(%struct.usb_usbvision* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_usbvision*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.usbvision_frame*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %4, align 8
  store i64* %1, i64** %5, align 8
  %18 = bitcast [4 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.usbvision_parse_lines_422.yuyv, i32 0, i32 0), i64 4, i1 false)
  %19 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %20 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %19, i32 0, i32 2
  %21 = load %struct.usbvision_frame*, %struct.usbvision_frame** %20, align 8
  store %struct.usbvision_frame* %21, %struct.usbvision_frame** %6, align 8
  %22 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %23 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %22, i32 0, i32 0
  %24 = load volatile i8*, i8** %23, align 8
  %25 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %26 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %25, i32 0, i32 1
  %27 = load volatile i32, i32* %26, align 8
  %28 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %29 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %28, i32 0, i32 2
  %30 = load volatile i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %24, i64 %32
  store i8* %33, i8** %7, align 8
  %34 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %35 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load volatile i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 %38, 5
  store i32 %39, i32* %8, align 4
  %40 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %41 = call i32 @scratch_len(%struct.usb_usbvision* %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %2
  %45 = load i32, i32* @DBG_PARSE, align 4
  %46 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %47 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %46, i32 0, i32 2
  %48 = load volatile i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @PDEBUG(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* @parse_state_out, align 4
  store i32 %51, i32* %3, align 4
  br label %345

52:                                               ; preds = %2
  %53 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %54 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %53, i32 0, i32 2
  %55 = load volatile i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  %57 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %58 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %57, i32 0, i32 3
  %59 = load volatile i32, i32* %58, align 8
  %60 = icmp sge i32 %56, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @parse_state_next_frame, align 4
  store i32 %62, i32* %3, align 4
  br label %345

63:                                               ; preds = %52
  %64 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %65 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load volatile i32, i32* %66, align 8
  store i32 %67, i32* %15, align 4
  %68 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %69 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* %15, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %16, align 4
  %74 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %75 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %74, i32 0, i32 2
  %76 = load volatile i32, i32* %75, align 4
  %77 = load i32, i32* @MAX_FRAME_WIDTH, align 4
  %78 = mul nsw i32 %76, %77
  store i32 %78, i32* %14, align 4
  %79 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %80 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %17, align 4
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %308, %63
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %85 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %84, i32 0, i32 4
  %86 = load volatile i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %315

88:                                               ; preds = %82
  %89 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %90 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %91 = call i32 @scratch_get(%struct.usb_usbvision* %89, i8* %90, i32 4)
  %92 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %93 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load volatile i32, i32* %94, align 4
  %96 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %88
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %7, align 8
  store i8 %100, i8* %101, align 1
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  store i8 %104, i8* %105, align 1
  br label %192

107:                                              ; preds = %88
  %108 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  %113 = load i8, i8* %112, align 1
  %114 = load i8, i8* %11, align 1
  %115 = load i8, i8* %12, align 1
  %116 = load i8, i8* %13, align 1
  %117 = call i32 @YUV_TO_RGB_BY_THE_BOOK(i8 zeroext %109, i8 zeroext %111, i8 zeroext %113, i8 zeroext %114, i8 zeroext %115, i8 zeroext %116)
  %118 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %119 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load volatile i32, i32* %120, align 4
  switch i32 %121, label %191 [
    i32 128, label %122
    i32 131, label %145
    i32 130, label %155
    i32 129, label %167
  ]

122:                                              ; preds = %107
  %123 = load i8, i8* %11, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 31, %124
  %126 = load i8, i8* %12, align 1
  %127 = zext i8 %126 to i32
  %128 = shl i32 %127, 5
  %129 = and i32 224, %128
  %130 = or i32 %125, %129
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %7, align 8
  store i8 %131, i8* %132, align 1
  %134 = load i8, i8* %12, align 1
  %135 = zext i8 %134 to i32
  %136 = ashr i32 %135, 3
  %137 = and i32 7, %136
  %138 = load i8, i8* %13, align 1
  %139 = zext i8 %138 to i32
  %140 = and i32 248, %139
  %141 = or i32 %137, %140
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %7, align 8
  store i8 %142, i8* %143, align 1
  br label %191

145:                                              ; preds = %107
  %146 = load i8, i8* %11, align 1
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %7, align 8
  store i8 %146, i8* %147, align 1
  %149 = load i8, i8* %12, align 1
  %150 = load i8*, i8** %7, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %7, align 8
  store i8 %149, i8* %150, align 1
  %152 = load i8, i8* %13, align 1
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %7, align 8
  store i8 %152, i8* %153, align 1
  br label %191

155:                                              ; preds = %107
  %156 = load i8, i8* %11, align 1
  %157 = load i8*, i8** %7, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %7, align 8
  store i8 %156, i8* %157, align 1
  %159 = load i8, i8* %12, align 1
  %160 = load i8*, i8** %7, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %7, align 8
  store i8 %159, i8* %160, align 1
  %162 = load i8, i8* %13, align 1
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %7, align 8
  store i8 %162, i8* %163, align 1
  %165 = load i8*, i8** %7, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %7, align 8
  br label %191

167:                                              ; preds = %107
  %168 = load i8, i8* %11, align 1
  %169 = zext i8 %168 to i32
  %170 = and i32 31, %169
  %171 = load i8, i8* %12, align 1
  %172 = zext i8 %171 to i32
  %173 = shl i32 %172, 5
  %174 = and i32 224, %173
  %175 = or i32 %170, %174
  %176 = trunc i32 %175 to i8
  %177 = load i8*, i8** %7, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %7, align 8
  store i8 %176, i8* %177, align 1
  %179 = load i8, i8* %12, align 1
  %180 = zext i8 %179 to i32
  %181 = ashr i32 %180, 3
  %182 = and i32 3, %181
  %183 = load i8, i8* %13, align 1
  %184 = zext i8 %183 to i32
  %185 = shl i32 %184, 2
  %186 = and i32 124, %185
  %187 = or i32 %182, %186
  %188 = trunc i32 %187 to i8
  %189 = load i8*, i8** %7, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %7, align 8
  store i8 %188, i8* %189, align 1
  br label %191

191:                                              ; preds = %107, %167, %155, %145, %122
  br label %192

192:                                              ; preds = %191, %98
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %16, align 4
  %197 = load i8*, i8** %7, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %7, align 8
  %200 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %201 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load volatile i32, i32* %202, align 4
  %204 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %192
  %207 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  %208 = load i8, i8* %207, align 1
  %209 = load i8*, i8** %7, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %7, align 8
  store i8 %208, i8* %209, align 1
  %211 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %212 = load i8, i8* %211, align 1
  %213 = load i8*, i8** %7, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %7, align 8
  store i8 %212, i8* %213, align 1
  br label %300

215:                                              ; preds = %192
  %216 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  %217 = load i8, i8* %216, align 1
  %218 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %219 = load i8, i8* %218, align 1
  %220 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  %221 = load i8, i8* %220, align 1
  %222 = load i8, i8* %11, align 1
  %223 = load i8, i8* %12, align 1
  %224 = load i8, i8* %13, align 1
  %225 = call i32 @YUV_TO_RGB_BY_THE_BOOK(i8 zeroext %217, i8 zeroext %219, i8 zeroext %221, i8 zeroext %222, i8 zeroext %223, i8 zeroext %224)
  %226 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %227 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load volatile i32, i32* %228, align 4
  switch i32 %229, label %299 [
    i32 128, label %230
    i32 131, label %253
    i32 130, label %263
    i32 129, label %275
  ]

230:                                              ; preds = %215
  %231 = load i8, i8* %11, align 1
  %232 = zext i8 %231 to i32
  %233 = and i32 31, %232
  %234 = load i8, i8* %12, align 1
  %235 = zext i8 %234 to i32
  %236 = shl i32 %235, 5
  %237 = and i32 224, %236
  %238 = or i32 %233, %237
  %239 = trunc i32 %238 to i8
  %240 = load i8*, i8** %7, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %7, align 8
  store i8 %239, i8* %240, align 1
  %242 = load i8, i8* %12, align 1
  %243 = zext i8 %242 to i32
  %244 = ashr i32 %243, 3
  %245 = and i32 7, %244
  %246 = load i8, i8* %13, align 1
  %247 = zext i8 %246 to i32
  %248 = and i32 248, %247
  %249 = or i32 %245, %248
  %250 = trunc i32 %249 to i8
  %251 = load i8*, i8** %7, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %7, align 8
  store i8 %250, i8* %251, align 1
  br label %299

253:                                              ; preds = %215
  %254 = load i8, i8* %11, align 1
  %255 = load i8*, i8** %7, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %7, align 8
  store i8 %254, i8* %255, align 1
  %257 = load i8, i8* %12, align 1
  %258 = load i8*, i8** %7, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %7, align 8
  store i8 %257, i8* %258, align 1
  %260 = load i8, i8* %13, align 1
  %261 = load i8*, i8** %7, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %7, align 8
  store i8 %260, i8* %261, align 1
  br label %299

263:                                              ; preds = %215
  %264 = load i8, i8* %11, align 1
  %265 = load i8*, i8** %7, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %7, align 8
  store i8 %264, i8* %265, align 1
  %267 = load i8, i8* %12, align 1
  %268 = load i8*, i8** %7, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %7, align 8
  store i8 %267, i8* %268, align 1
  %270 = load i8, i8* %13, align 1
  %271 = load i8*, i8** %7, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %7, align 8
  store i8 %270, i8* %271, align 1
  %273 = load i8*, i8** %7, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %7, align 8
  br label %299

275:                                              ; preds = %215
  %276 = load i8, i8* %11, align 1
  %277 = zext i8 %276 to i32
  %278 = and i32 31, %277
  %279 = load i8, i8* %12, align 1
  %280 = zext i8 %279 to i32
  %281 = shl i32 %280, 5
  %282 = and i32 224, %281
  %283 = or i32 %278, %282
  %284 = trunc i32 %283 to i8
  %285 = load i8*, i8** %7, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %7, align 8
  store i8 %284, i8* %285, align 1
  %287 = load i8, i8* %12, align 1
  %288 = zext i8 %287 to i32
  %289 = ashr i32 %288, 3
  %290 = and i32 3, %289
  %291 = load i8, i8* %13, align 1
  %292 = zext i8 %291 to i32
  %293 = shl i32 %292, 2
  %294 = and i32 124, %293
  %295 = or i32 %290, %294
  %296 = trunc i32 %295 to i8
  %297 = load i8*, i8** %7, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %7, align 8
  store i8 %296, i8* %297, align 1
  br label %299

299:                                              ; preds = %215, %275, %263, %253, %230
  br label %300

300:                                              ; preds = %299, %206
  %301 = load i32, i32* %17, align 4
  %302 = load i32, i32* %14, align 4
  %303 = add nsw i32 %302, %301
  store i32 %303, i32* %14, align 4
  %304 = load i32, i32* %16, align 4
  %305 = load i8*, i8** %7, align 8
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i8, i8* %305, i64 %306
  store i8* %307, i8** %7, align 8
  br label %308

308:                                              ; preds = %300
  %309 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %310 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = mul nsw i32 2, %311
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %313, %312
  store i32 %314, i32* %9, align 4
  br label %82

315:                                              ; preds = %82
  %316 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %317 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %320 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %319, i32 0, i32 2
  %321 = load volatile i32, i32* %320, align 4
  %322 = add nsw i32 %321, %318
  store volatile i32 %322, i32* %320, align 4
  %323 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %324 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %323, i32 0, i32 1
  %325 = load volatile i32, i32* %324, align 8
  %326 = load %struct.usb_usbvision*, %struct.usb_usbvision** %4, align 8
  %327 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = mul nsw i32 %325, %328
  %330 = sext i32 %329 to i64
  %331 = load i64*, i64** %5, align 8
  %332 = load i64, i64* %331, align 8
  %333 = add nsw i64 %332, %330
  store i64 %333, i64* %331, align 8
  %334 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %335 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %334, i32 0, i32 2
  %336 = load volatile i32, i32* %335, align 4
  %337 = load %struct.usbvision_frame*, %struct.usbvision_frame** %6, align 8
  %338 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %337, i32 0, i32 3
  %339 = load volatile i32, i32* %338, align 8
  %340 = icmp sge i32 %336, %339
  br i1 %340, label %341, label %343

341:                                              ; preds = %315
  %342 = load i32, i32* @parse_state_next_frame, align 4
  store i32 %342, i32* %3, align 4
  br label %345

343:                                              ; preds = %315
  %344 = load i32, i32* @parse_state_continue, align 4
  store i32 %344, i32* %3, align 4
  br label %345

345:                                              ; preds = %343, %341, %61, %44
  %346 = load i32, i32* %3, align 4
  ret i32 %346
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @scratch_len(%struct.usb_usbvision*) #2

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #2

declare dso_local i32 @scratch_get(%struct.usb_usbvision*, i8*, i32) #2

declare dso_local i32 @YUV_TO_RGB_BY_THE_BOOK(i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
