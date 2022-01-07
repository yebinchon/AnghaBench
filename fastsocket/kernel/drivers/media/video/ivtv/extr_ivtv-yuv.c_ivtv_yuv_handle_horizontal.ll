; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_handle_horizontal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_handle_horizontal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.yuv_playback_info }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Adjust to width %d src_w %d dst_w %d src_x %d dst_x %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Update reg 0x2834 %08x->%08x 0x2838 %08x->%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Update reg 0x283c %08x->%08x 0x2844 %08x->%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Update reg 0x2840 %08x->%08x 0x2848 %08x->%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Update reg 0x2854 %08x->%08x \0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Update reg 0x285c %08x->%08x 0x2864 %08x->%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Update reg 0x2874 %08x->%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Update reg 0x2870 %08x->%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Update reg 0x2890 %08x->%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*, %struct.yuv_frame_info*)* @ivtv_yuv_handle_horizontal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_yuv_handle_horizontal(%struct.ivtv* %0, %struct.yuv_frame_info* %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.yuv_frame_info*, align 8
  %5 = alloca %struct.yuv_playback_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %20 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store %struct.yuv_frame_info* %1, %struct.yuv_frame_info** %4, align 8
  %21 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %22 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %21, i32 0, i32 0
  store %struct.yuv_playback_info* %22, %struct.yuv_playback_info** %5, align 8
  %23 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %24 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %27 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %30 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %33 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %36 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %40 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %43 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  store i32 %45, i32* %18, align 4
  %46 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %47 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %51 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %53 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %54 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 720
  br i1 %56, label %57, label %145

57:                                               ; preds = %2
  %58 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %59 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %62 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %66, label %90

66:                                               ; preds = %57
  %67 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %68 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %71 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  %74 = icmp sle i32 %73, 40
  br i1 %74, label %75, label %90

75:                                               ; preds = %66
  %76 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %77 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %78, 680
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %82 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %85 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  %88 = sdiv i32 %87, 4
  %89 = sub nsw i32 10, %88
  store i32 %89, i32* %15, align 4
  br label %124

90:                                               ; preds = %75, %66, %57
  %91 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %92 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %95 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %90
  %100 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %101 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %104 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %102, %105
  %107 = icmp sge i32 %106, -20
  br i1 %107, label %108, label %123

108:                                              ; preds = %99
  %109 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %110 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp sge i32 %111, 660
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %115 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %118 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  %121 = sdiv i32 %120, 2
  %122 = add nsw i32 10, %121
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %113, %108, %99, %90
  br label %124

124:                                              ; preds = %123, %80
  %125 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %126 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %129 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp sge i32 %127, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load i32, i32* %15, align 4
  %134 = shl i32 %133, 16
  %135 = load i32, i32* %15, align 4
  %136 = or i32 %134, %135
  store i32 %136, i32* %15, align 4
  br label %144

137:                                              ; preds = %124
  %138 = load i32, i32* %15, align 4
  %139 = and i32 %138, -2
  %140 = shl i32 %139, 15
  %141 = load i32, i32* %15, align 4
  %142 = and i32 %141, -2
  %143 = or i32 %140, %142
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %137, %132
  br label %145

145:                                              ; preds = %144, %2
  %146 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %147 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %150 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load i32, i32* %15, align 4
  %155 = sub nsw i32 851982, %154
  store i32 %155, i32* %15, align 4
  br label %159

156:                                              ; preds = %145
  %157 = load i32, i32* %15, align 4
  %158 = sub nsw i32 1179662, %157
  store i32 %158, i32* %15, align 4
  br label %159

159:                                              ; preds = %156, %153
  %160 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %161 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %164 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 21
  %167 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %168 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sdiv i32 %166, %169
  %171 = mul nsw i32 %162, %170
  %172 = ashr i32 %171, 19
  store i32 %172, i32* %17, align 4
  %173 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %174 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %177 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp sge i32 %175, %178
  br i1 %179, label %180, label %258

180:                                              ; preds = %159
  %181 = load i32, i32* %18, align 4
  %182 = and i32 %181, -2
  store i32 %182, i32* %18, align 4
  %183 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %184 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %185, 2097152
  %187 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %188 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sdiv i32 %186, %189
  store i32 %190, i32* %20, align 4
  %191 = load i32, i32* %20, align 4
  %192 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %193 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %191, %194
  %196 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %197 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %198, 2097152
  %200 = icmp ne i32 %195, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %180
  %202 = load i32, i32* %20, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %20, align 4
  br label %204

204:                                              ; preds = %201, %180
  %205 = load i32, i32* %6, align 4
  %206 = shl i32 %205, 16
  %207 = load i32, i32* %18, align 4
  %208 = or i32 %206, %207
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %7, align 4
  %210 = shl i32 %209, 16
  %211 = load i32, i32* %18, align 4
  %212 = or i32 %210, %211
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* %20, align 4
  %214 = ashr i32 %213, 2
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %20, align 4
  %216 = ashr i32 %215, 2
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %20, align 4
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %20, align 4
  %219 = ashr i32 %218, 1
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %20, align 4
  %221 = ashr i32 %220, 1
  store i32 %221, i32* %12, align 4
  %222 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %223 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %226 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp sgt i32 %224, %227
  br i1 %228, label %229, label %243

229:                                              ; preds = %204
  %230 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %231 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %234 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 %232, %235
  %237 = shl i32 %236, 16
  %238 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %239 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = shl i32 %240, 14
  %242 = sdiv i32 %237, %241
  store i32 %242, i32* %16, align 4
  br label %244

243:                                              ; preds = %204
  store i32 0, i32* %16, align 4
  br label %244

244:                                              ; preds = %243, %229
  %245 = load i32, i32* %17, align 4
  %246 = shl i32 %245, 14
  %247 = and i32 %246, -65536
  %248 = load i32, i32* %17, align 4
  %249 = ashr i32 %248, 2
  %250 = or i32 %247, %249
  %251 = load i32, i32* %16, align 4
  %252 = shl i32 %251, 17
  %253 = load i32, i32* %16, align 4
  %254 = or i32 %252, %253
  %255 = add i32 %250, %254
  %256 = load i32, i32* %15, align 4
  %257 = add i32 %256, %255
  store i32 %257, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %393

258:                                              ; preds = %159
  %259 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %260 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %263 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = sdiv i32 %264, 2
  %266 = icmp slt i32 %261, %265
  br i1 %266, label %267, label %331

267:                                              ; preds = %258
  %268 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %269 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = mul nsw i32 %270, 524288
  %272 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %273 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = sdiv i32 %271, %274
  store i32 %275, i32* %20, align 4
  %276 = load i32, i32* %20, align 4
  %277 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %278 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = mul nsw i32 %276, %279
  %281 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %282 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = mul nsw i32 %283, 524288
  %285 = icmp ne i32 %280, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %267
  %287 = load i32, i32* %20, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %20, align 4
  br label %289

289:                                              ; preds = %286, %267
  %290 = load i32, i32* %6, align 4
  %291 = shl i32 %290, 16
  %292 = load i32, i32* %18, align 4
  %293 = or i32 %291, %292
  store i32 %293, i32* %6, align 4
  %294 = load i32, i32* %7, align 4
  %295 = shl i32 %294, 16
  %296 = load i32, i32* %18, align 4
  %297 = or i32 %295, %296
  store i32 %297, i32* %7, align 4
  %298 = load i32, i32* %20, align 4
  %299 = ashr i32 %298, 2
  store i32 %299, i32* %8, align 4
  %300 = load i32, i32* %20, align 4
  %301 = ashr i32 %300, 1
  store i32 %301, i32* %9, align 4
  %302 = load i32, i32* %20, align 4
  store i32 %302, i32* %10, align 4
  %303 = load i32, i32* %20, align 4
  %304 = ashr i32 %303, 1
  store i32 %304, i32* %11, align 4
  %305 = load i32, i32* %20, align 4
  %306 = ashr i32 %305, 1
  store i32 %306, i32* %12, align 4
  %307 = load i32, i32* %17, align 4
  %308 = shl i32 %307, 15
  %309 = and i32 %308, -65536
  %310 = load i32, i32* %17, align 4
  %311 = or i32 %309, %310
  %312 = load i32, i32* %15, align 4
  %313 = add i32 %312, %311
  store i32 %313, i32* %15, align 4
  %314 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %315 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %318 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = sdiv i32 %319, 2
  %321 = add nsw i32 %316, %320
  %322 = sub nsw i32 %321, 1
  %323 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %324 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = sdiv i32 %322, %325
  %327 = sub nsw i32 5, %326
  %328 = shl i32 %327, 16
  %329 = load i32, i32* %15, align 4
  %330 = add nsw i32 %329, %328
  store i32 %330, i32* %15, align 4
  store i32 18, i32* %13, align 4
  br label %392

331:                                              ; preds = %258
  %332 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %333 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = mul nsw i32 %334, 1048576
  %336 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %337 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = sdiv i32 %335, %338
  store i32 %339, i32* %20, align 4
  %340 = load i32, i32* %20, align 4
  %341 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %342 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = mul nsw i32 %340, %343
  %345 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %346 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = mul nsw i32 %347, 1048576
  %349 = icmp ne i32 %344, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %331
  %351 = load i32, i32* %20, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %20, align 4
  br label %353

353:                                              ; preds = %350, %331
  %354 = load i32, i32* %6, align 4
  %355 = shl i32 %354, 16
  %356 = load i32, i32* %18, align 4
  %357 = or i32 %355, %356
  store i32 %357, i32* %6, align 4
  %358 = load i32, i32* %7, align 4
  %359 = shl i32 %358, 16
  %360 = load i32, i32* %18, align 4
  %361 = or i32 %359, %360
  store i32 %361, i32* %7, align 4
  %362 = load i32, i32* %20, align 4
  %363 = ashr i32 %362, 2
  store i32 %363, i32* %8, align 4
  %364 = load i32, i32* %20, align 4
  %365 = ashr i32 %364, 1
  store i32 %365, i32* %9, align 4
  %366 = load i32, i32* %20, align 4
  store i32 %366, i32* %10, align 4
  %367 = load i32, i32* %20, align 4
  %368 = ashr i32 %367, 1
  store i32 %368, i32* %11, align 4
  %369 = load i32, i32* %20, align 4
  %370 = ashr i32 %369, 1
  store i32 %370, i32* %12, align 4
  %371 = load i32, i32* %17, align 4
  %372 = shl i32 %371, 14
  %373 = and i32 %372, -65536
  %374 = load i32, i32* %17, align 4
  %375 = ashr i32 %374, 1
  %376 = or i32 %373, %375
  %377 = load i32, i32* %15, align 4
  %378 = add i32 %377, %376
  store i32 %378, i32* %15, align 4
  %379 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %380 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = mul nsw i32 %381, 3
  %383 = sub nsw i32 %382, 1
  %384 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %385 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = sdiv i32 %383, %386
  %388 = sub nsw i32 5, %387
  %389 = shl i32 %388, 16
  %390 = load i32, i32* %15, align 4
  %391 = add nsw i32 %390, %389
  store i32 %391, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %392

392:                                              ; preds = %353, %289
  br label %393

393:                                              ; preds = %392, %244
  %394 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %395 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %398 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = icmp eq i32 %396, %399
  br i1 %400, label %401, label %402

401:                                              ; preds = %393
  store i32 0, i32* %19, align 4
  br label %423

402:                                              ; preds = %393
  %403 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %404 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = shl i32 %405, 16
  %407 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %408 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = sdiv i32 %406, %409
  %411 = ashr i32 %410, 15
  store i32 %411, i32* %19, align 4
  %412 = load i32, i32* %19, align 4
  %413 = ashr i32 %412, 1
  %414 = load i32, i32* %19, align 4
  %415 = and i32 %414, 1
  %416 = add nsw i32 %413, %415
  store i32 %416, i32* %19, align 4
  %417 = load i32, i32* %19, align 4
  %418 = icmp ne i32 %417, 0
  %419 = xor i1 %418, true
  %420 = zext i1 %419 to i32
  %421 = load i32, i32* %19, align 4
  %422 = add nsw i32 %421, %420
  store i32 %422, i32* %19, align 4
  br label %423

423:                                              ; preds = %402, %401
  %424 = load i32, i32* %6, align 4
  %425 = call i32 @write_reg(i32 %424, i32 10292)
  %426 = load i32, i32* %7, align 4
  %427 = call i32 @write_reg(i32 %426, i32 10296)
  %428 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %429 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %428, i32 0, i32 12
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* %6, align 4
  %432 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %433 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %432, i32 0, i32 11
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* %7, align 4
  %436 = call i32 (i8*, i32, i32, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %430, i32 %431, i32 %434, i32 %435)
  %437 = load i32, i32* %8, align 4
  %438 = call i32 @write_reg(i32 %437, i32 10300)
  %439 = load i32, i32* %9, align 4
  %440 = call i32 @write_reg(i32 %439, i32 10308)
  %441 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %442 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %441, i32 0, i32 10
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* %8, align 4
  %445 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %446 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %445, i32 0, i32 9
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* %9, align 4
  %449 = call i32 (i8*, i32, i32, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %443, i32 %444, i32 %447, i32 %448)
  %450 = call i32 @write_reg(i32 525588, i32 10304)
  %451 = call i32 @write_reg(i32 1049876, i32 10312)
  %452 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %453 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %452, i32 0, i32 8
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %456 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %455, i32 0, i32 7
  %457 = load i32, i32* %456, align 4
  %458 = call i32 (i8*, i32, i32, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %454, i32 525588, i32 %457, i32 1049876)
  %459 = load i32, i32* %10, align 4
  %460 = call i32 @write_reg(i32 %459, i32 10324)
  %461 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %462 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %461, i32 0, i32 6
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* %10, align 4
  %465 = call i32 (i8*, i32, i32, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %463, i32 %464)
  %466 = load i32, i32* %11, align 4
  %467 = call i32 @write_reg(i32 %466, i32 10332)
  %468 = load i32, i32* %12, align 4
  %469 = call i32 @write_reg(i32 %468, i32 10340)
  %470 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %471 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %470, i32 0, i32 5
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* %11, align 4
  %474 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %475 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %474, i32 0, i32 4
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* %12, align 4
  %478 = call i32 (i8*, i32, i32, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %472, i32 %473, i32 %476, i32 %477)
  %479 = load i32, i32* %13, align 4
  %480 = call i32 @write_reg(i32 %479, i32 10356)
  %481 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %482 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %481, i32 0, i32 3
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* %13, align 4
  %485 = call i32 (i8*, i32, i32, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %483, i32 %484)
  %486 = load i32, i32* %15, align 4
  %487 = call i32 @write_reg(i32 %486, i32 10352)
  %488 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %489 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %488, i32 0, i32 2
  %490 = load i32, i32* %489, align 4
  %491 = load i32, i32* %15, align 4
  %492 = call i32 (i8*, i32, i32, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %490, i32 %491)
  %493 = load i32, i32* %14, align 4
  %494 = call i32 @write_reg(i32 %493, i32 10384)
  %495 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %496 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* %14, align 4
  %499 = call i32 (i8*, i32, i32, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %497, i32 %498)
  %500 = load i32, i32* %19, align 4
  %501 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %502 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = icmp ne i32 %500, %503
  br i1 %504, label %505, label %512

505:                                              ; preds = %423
  %506 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %507 = load i32, i32* %19, align 4
  %508 = call i32 @ivtv_yuv_filter(%struct.ivtv* %506, i32 %507, i32 -1, i32 -1)
  %509 = load i32, i32* %19, align 4
  %510 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %511 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %510, i32 0, i32 0
  store i32 %509, i32* %511, align 4
  br label %512

512:                                              ; preds = %505, %423
  ret void
}

declare dso_local i32 @IVTV_DEBUG_WARN(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @IVTV_DEBUG_YUV(i8*, i32, i32, ...) #1

declare dso_local i32 @ivtv_yuv_filter(%struct.ivtv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
