; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_window_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_window_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, %struct.yuv_frame_info }
%struct.yuv_frame_info = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@IVTV_YUV_UPDATE_INVALID = common dso_local global i32 0, align 4
@IVTV_YUV_UPDATE_HORIZONTAL = common dso_local global i32 0, align 4
@IVTV_YUV_UPDATE_VERTICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, %struct.yuv_frame_info*)* @ivtv_yuv_window_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_yuv_window_setup(%struct.ivtv* %0, %struct.yuv_frame_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca %struct.yuv_frame_info*, align 8
  %6 = alloca %struct.yuv_frame_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store %struct.yuv_frame_info* %1, %struct.yuv_frame_info** %5, align 8
  %10 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %11 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store %struct.yuv_frame_info* %12, %struct.yuv_frame_info** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %14 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %19 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %22 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %27 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %30 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %33 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 4, %34
  %36 = sub nsw i32 %31, %35
  store i32 %36, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = sdiv i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %43 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %47 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  %51 = and i32 %50, -4
  %52 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %53 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %55 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 4
  %58 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %59 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %61 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 1
  %64 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %65 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %38, %28
  %69 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %70 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %73 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %71, %74
  %76 = icmp sge i32 %75, 2
  br i1 %76, label %77, label %120

77:                                               ; preds = %68
  %78 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %79 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %78, i32 0, i32 6
  store i32 1, i32* %79, align 8
  %80 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %81 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %84 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 4, %85
  %87 = sub nsw i32 %82, %86
  store i32 %87, i32* %7, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %119

89:                                               ; preds = %77
  %90 = load i32, i32* %7, align 4
  %91 = sdiv i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %94 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %98 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 %99, %100
  %102 = and i32 %101, -4
  %103 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %104 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %106 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = sdiv i32 %107, 4
  %109 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %110 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %112 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 1
  %115 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %116 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %89, %77
  br label %120

120:                                              ; preds = %119, %68
  %121 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %122 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp sle i32 %123, 2
  br i1 %124, label %140, label %125

125:                                              ; preds = %120
  %126 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %127 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = icmp sle i32 %128, 2
  br i1 %129, label %140, label %130

130:                                              ; preds = %125
  %131 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %132 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp sle i32 %133, 2
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %137 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = icmp sle i32 %138, 2
  br i1 %139, label %140, label %142

140:                                              ; preds = %135, %130, %125, %120
  %141 = load i32, i32* @IVTV_YUV_UPDATE_INVALID, align 4
  store i32 %141, i32* %3, align 4
  br label %587

142:                                              ; preds = %135
  %143 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %144 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = shl i32 %145, 16
  %147 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %148 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = sdiv i32 %146, %149
  store i32 %150, i32* %8, align 4
  %151 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %152 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %155 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %153, %156
  store i32 %157, i32* %7, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %184

159:                                              ; preds = %142
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %7, align 4
  %162 = mul nsw i32 %160, %161
  %163 = ashr i32 %162, 16
  %164 = sext i32 %163 to i64
  %165 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %166 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, %164
  store i64 %168, i64* %166, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %7, align 4
  %171 = mul nsw i32 %169, %170
  %172 = ashr i32 %171, 16
  %173 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %174 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %179 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %183 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %182, i32 0, i32 8
  store i32 0, i32* %183, align 8
  br label %192

184:                                              ; preds = %142
  %185 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %186 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %189 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %184, %159
  %193 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %194 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %197 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %195, %198
  %200 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %201 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %200, i32 0, i32 9
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %199, %202
  store i32 %203, i32* %7, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %219

205:                                              ; preds = %192
  %206 = load i32, i32* %7, align 4
  %207 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %208 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %209, %206
  store i32 %210, i32* %208, align 4
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %7, align 4
  %213 = mul nsw i32 %211, %212
  %214 = ashr i32 %213, 16
  %215 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %216 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = sub nsw i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %205, %192
  %220 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %221 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = shl i32 %222, 16
  %224 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %225 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = sdiv i32 %223, %226
  store i32 %227, i32* %8, align 4
  %228 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %229 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %228, i32 0, i32 10
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %232 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %231, i32 0, i32 11
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %230, %233
  store i32 %234, i32* %7, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %261

236:                                              ; preds = %219
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %7, align 4
  %239 = mul nsw i32 %237, %238
  %240 = ashr i32 %239, 16
  %241 = sext i32 %240 to i64
  %242 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %243 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, %241
  store i64 %245, i64* %243, align 8
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* %7, align 4
  %248 = mul nsw i32 %246, %247
  %249 = ashr i32 %248, 16
  %250 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %251 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = sub nsw i32 %252, %249
  store i32 %253, i32* %251, align 8
  %254 = load i32, i32* %7, align 4
  %255 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %256 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = sub nsw i32 %257, %254
  store i32 %258, i32* %256, align 4
  %259 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %260 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %259, i32 0, i32 11
  store i32 0, i32* %260, align 4
  br label %269

261:                                              ; preds = %219
  %262 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %263 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %262, i32 0, i32 10
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %266 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %265, i32 0, i32 11
  %267 = load i32, i32* %266, align 4
  %268 = sub nsw i32 %267, %264
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %261, %236
  %270 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %271 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %274 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %273, i32 0, i32 11
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %272, %275
  %277 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %278 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %277, i32 0, i32 12
  %279 = load i32, i32* %278, align 8
  %280 = sub nsw i32 %276, %279
  store i32 %280, i32* %7, align 4
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %296

282:                                              ; preds = %269
  %283 = load i32, i32* %7, align 4
  %284 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %285 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %286, %283
  store i32 %287, i32* %285, align 4
  %288 = load i32, i32* %8, align 4
  %289 = load i32, i32* %7, align 4
  %290 = mul nsw i32 %288, %289
  %291 = ashr i32 %290, 16
  %292 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %293 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = sub nsw i32 %294, %291
  store i32 %295, i32* %293, align 8
  br label %296

296:                                              ; preds = %282, %269
  %297 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %298 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %319

302:                                              ; preds = %296
  %303 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %304 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %308 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %307, i32 0, i32 11
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, %306
  store i32 %310, i32* %308, align 4
  %311 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %312 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %316 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %315, i32 0, i32 8
  %317 = load i32, i32* %316, align 8
  %318 = add nsw i32 %317, %314
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %302, %296
  %320 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %321 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = and i32 %322, -2
  store i32 %323, i32* %321, align 4
  %324 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %325 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %324, i32 0, i32 11
  %326 = load i32, i32* %325, align 4
  %327 = and i32 %326, -2
  store i32 %327, i32* %325, align 4
  %328 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %329 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = and i64 %330, 1
  %332 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %333 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = sext i32 %334 to i64
  %336 = add nsw i64 %335, %331
  %337 = trunc i64 %336 to i32
  store i32 %337, i32* %333, align 8
  %338 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %339 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = and i64 %340, -2
  store i64 %341, i64* %339, align 8
  %342 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %343 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = and i32 %344, -2
  store i32 %345, i32* %343, align 8
  %346 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %347 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = and i32 %348, -2
  store i32 %349, i32* %347, align 4
  %350 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %351 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 4
  %353 = and i32 %352, -2
  store i32 %353, i32* %351, align 4
  %354 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %355 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %354, i32 0, i32 8
  %356 = load i32, i32* %355, align 8
  %357 = and i32 %356, -2
  store i32 %357, i32* %355, align 8
  %358 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %359 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = and i64 %360, 1
  %362 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %363 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = sext i32 %364 to i64
  %366 = add nsw i64 %365, %361
  %367 = trunc i64 %366 to i32
  store i32 %367, i32* %363, align 8
  %368 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %369 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = and i64 %370, -2
  store i64 %371, i64* %369, align 8
  %372 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %373 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 8
  %375 = and i32 %374, -2
  store i32 %375, i32* %373, align 8
  %376 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %377 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %376, i32 0, i32 5
  %378 = load i32, i32* %377, align 4
  %379 = and i32 %378, -2
  store i32 %379, i32* %377, align 4
  %380 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %381 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %384 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = sdiv i32 %385, 4
  %387 = icmp slt i32 %382, %386
  br i1 %387, label %388, label %407

388:                                              ; preds = %319
  %389 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %390 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = and i32 %391, -4
  store i32 %392, i32* %390, align 8
  %393 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %394 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = sdiv i32 %395, 4
  %397 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %398 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %397, i32 0, i32 3
  store i32 %396, i32* %398, align 4
  %399 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %400 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 4
  %402 = and i32 %401, 1
  %403 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %404 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 4
  %406 = add nsw i32 %405, %402
  store i32 %406, i32* %404, align 4
  br label %407

407:                                              ; preds = %388, %319
  %408 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %409 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %408, i32 0, i32 5
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %412 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %411, i32 0, i32 4
  %413 = load i32, i32* %412, align 8
  %414 = sdiv i32 %413, 4
  %415 = icmp slt i32 %410, %414
  br i1 %415, label %416, label %435

416:                                              ; preds = %407
  %417 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %418 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 8
  %420 = and i32 %419, -4
  store i32 %420, i32* %418, align 8
  %421 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %422 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 8
  %424 = sdiv i32 %423, 4
  %425 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %426 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %425, i32 0, i32 5
  store i32 %424, i32* %426, align 4
  %427 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %428 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %427, i32 0, i32 5
  %429 = load i32, i32* %428, align 4
  %430 = and i32 %429, 1
  %431 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %432 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %431, i32 0, i32 5
  %433 = load i32, i32* %432, align 4
  %434 = add nsw i32 %433, %430
  store i32 %434, i32* %432, align 4
  br label %435

435:                                              ; preds = %416, %407
  %436 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %437 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 4
  %439 = icmp sle i32 %438, 2
  br i1 %439, label %455, label %440

440:                                              ; preds = %435
  %441 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %442 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %441, i32 0, i32 5
  %443 = load i32, i32* %442, align 4
  %444 = icmp sle i32 %443, 2
  br i1 %444, label %455, label %445

445:                                              ; preds = %440
  %446 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %447 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = icmp sle i32 %448, 2
  br i1 %449, label %455, label %450

450:                                              ; preds = %445
  %451 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %452 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %451, i32 0, i32 4
  %453 = load i32, i32* %452, align 8
  %454 = icmp sle i32 %453, 2
  br i1 %454, label %455, label %457

455:                                              ; preds = %450, %445, %440, %435
  %456 = load i32, i32* @IVTV_YUV_UPDATE_INVALID, align 4
  store i32 %456, i32* %3, align 4
  br label %587

457:                                              ; preds = %450
  %458 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %459 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %462 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 4
  %464 = icmp ne i32 %460, %463
  br i1 %464, label %505, label %465

465:                                              ; preds = %457
  %466 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %467 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %466, i32 0, i32 2
  %468 = load i32, i32* %467, align 8
  %469 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %470 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = icmp ne i32 %468, %471
  br i1 %472, label %505, label %473

473:                                              ; preds = %465
  %474 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %475 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %474, i32 0, i32 11
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %478 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %477, i32 0, i32 11
  %479 = load i32, i32* %478, align 4
  %480 = icmp ne i32 %476, %479
  br i1 %480, label %505, label %481

481:                                              ; preds = %473
  %482 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %483 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %482, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %486 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %485, i32 0, i32 0
  %487 = load i64, i64* %486, align 8
  %488 = icmp ne i64 %484, %487
  br i1 %488, label %505, label %489

489:                                              ; preds = %481
  %490 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %491 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %490, i32 0, i32 10
  %492 = load i32, i32* %491, align 8
  %493 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %494 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %493, i32 0, i32 10
  %495 = load i32, i32* %494, align 8
  %496 = icmp ne i32 %492, %495
  br i1 %496, label %505, label %497

497:                                              ; preds = %489
  %498 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %499 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %498, i32 0, i32 12
  %500 = load i32, i32* %499, align 8
  %501 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %502 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %501, i32 0, i32 12
  %503 = load i32, i32* %502, align 8
  %504 = icmp ne i32 %500, %503
  br i1 %504, label %505, label %509

505:                                              ; preds = %497, %489, %481, %473, %465, %457
  %506 = load i32, i32* @IVTV_YUV_UPDATE_HORIZONTAL, align 4
  %507 = load i32, i32* %9, align 4
  %508 = or i32 %507, %506
  store i32 %508, i32* %9, align 4
  br label %509

509:                                              ; preds = %505, %497
  %510 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %511 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %510, i32 0, i32 4
  %512 = load i32, i32* %511, align 8
  %513 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %514 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %513, i32 0, i32 4
  %515 = load i32, i32* %514, align 8
  %516 = icmp ne i32 %512, %515
  br i1 %516, label %581, label %517

517:                                              ; preds = %509
  %518 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %519 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %518, i32 0, i32 5
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %522 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %521, i32 0, i32 5
  %523 = load i32, i32* %522, align 4
  %524 = icmp ne i32 %520, %523
  br i1 %524, label %581, label %525

525:                                              ; preds = %517
  %526 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %527 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %526, i32 0, i32 8
  %528 = load i32, i32* %527, align 8
  %529 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %530 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %529, i32 0, i32 8
  %531 = load i32, i32* %530, align 8
  %532 = icmp ne i32 %528, %531
  br i1 %532, label %581, label %533

533:                                              ; preds = %525
  %534 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %535 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %534, i32 0, i32 1
  %536 = load i64, i64* %535, align 8
  %537 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %538 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %537, i32 0, i32 1
  %539 = load i64, i64* %538, align 8
  %540 = icmp ne i64 %536, %539
  br i1 %540, label %581, label %541

541:                                              ; preds = %533
  %542 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %543 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %542, i32 0, i32 7
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %546 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %545, i32 0, i32 7
  %547 = load i32, i32* %546, align 4
  %548 = icmp ne i32 %544, %547
  br i1 %548, label %581, label %549

549:                                              ; preds = %541
  %550 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %551 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %550, i32 0, i32 9
  %552 = load i32, i32* %551, align 4
  %553 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %554 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %553, i32 0, i32 9
  %555 = load i32, i32* %554, align 4
  %556 = icmp ne i32 %552, %555
  br i1 %556, label %581, label %557

557:                                              ; preds = %549
  %558 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %559 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %558, i32 0, i32 13
  %560 = load i64, i64* %559, align 8
  %561 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %562 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %561, i32 0, i32 13
  %563 = load i64, i64* %562, align 8
  %564 = icmp ne i64 %560, %563
  br i1 %564, label %581, label %565

565:                                              ; preds = %557
  %566 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %567 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %566, i32 0, i32 6
  %568 = load i32, i32* %567, align 8
  %569 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %570 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %569, i32 0, i32 6
  %571 = load i32, i32* %570, align 8
  %572 = icmp ne i32 %568, %571
  br i1 %572, label %581, label %573

573:                                              ; preds = %565
  %574 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %6, align 8
  %575 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %574, i32 0, i32 14
  %576 = load i64, i64* %575, align 8
  %577 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %5, align 8
  %578 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %577, i32 0, i32 14
  %579 = load i64, i64* %578, align 8
  %580 = icmp ne i64 %576, %579
  br i1 %580, label %581, label %585

581:                                              ; preds = %573, %565, %557, %549, %541, %533, %525, %517, %509
  %582 = load i32, i32* @IVTV_YUV_UPDATE_VERTICAL, align 4
  %583 = load i32, i32* %9, align 4
  %584 = or i32 %583, %582
  store i32 %584, i32* %9, align 4
  br label %585

585:                                              ; preds = %581, %573
  %586 = load i32, i32* %9, align 4
  store i32 %586, i32* %3, align 4
  br label %587

587:                                              ; preds = %585, %455, %140
  %588 = load i32, i32* %3, align 4
  ret i32 %588
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
