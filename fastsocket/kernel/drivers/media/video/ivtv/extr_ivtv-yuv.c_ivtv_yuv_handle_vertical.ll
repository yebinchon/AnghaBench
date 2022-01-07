; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_handle_vertical.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_handle_vertical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.yuv_playback_info }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [57 x i8] c"Adjust to height %d src_h %d dst_h %d src_y %d dst_y %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Scaling mode Y: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Interlaced\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Progressive\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Scaling mode UV: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Source video: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Update reg 0x2934 %08x->%08x 0x293c %08x->%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Update reg 0x2944 %08x->%08x 0x294c %08x->%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Update reg 0x2930 %08x->%08x 0x2938 %08x->%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Update reg 0x2928 %08x->%08x 0x292c %08x->%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Update reg 0x2920 %08x->%08x 0x2924 %08x->%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Update reg 0x2918 %08x->%08x 0x291C %08x->%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Update reg 0x296c %08x->%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Update reg 0x2940 %08x->%08x 0x2948 %08x->%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Update reg 0x2950 %08x->%08x 0x2954 %08x->%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"Update reg 0x2958 %08x->%08x 0x295C %08x->%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Update reg 0x2960 %08x->%08x \0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"Update reg 0x2964 %08x->%08x 0x2968 %08x->%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Update reg 0x289c %08x->%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*, %struct.yuv_frame_info*)* @ivtv_yuv_handle_vertical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_yuv_handle_vertical(%struct.ivtv* %0, %struct.yuv_frame_info* %1) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store %struct.yuv_frame_info* %1, %struct.yuv_frame_info** %4, align 8
  %34 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %35 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %34, i32 0, i32 0
  store %struct.yuv_playback_info* %35, %struct.yuv_playback_info** %5, align 8
  %36 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %37 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %42 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %45 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %48 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %51 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %43, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %55 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %60 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %62 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %67 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  %68 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %69 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %74 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  %75 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %76 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %77, 8
  br i1 %78, label %79, label %83

79:                                               ; preds = %2
  %80 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %81 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %29, align 4
  store i32 0, i32* %28, align 4
  br label %88

83:                                               ; preds = %2
  store i32 8, i32* %29, align 4
  %84 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %85 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 8
  store i32 %87, i32* %28, align 4
  br label %88

88:                                               ; preds = %83, %79
  %89 = load i32, i32* %29, align 4
  store i32 %89, i32* %27, align 4
  %90 = load i32, i32* %28, align 4
  store i32 %90, i32* %26, align 4
  %91 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %92 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* %27, align 4
  %97 = add nsw i32 %96, 16
  store i32 %97, i32* %27, align 4
  br label %98

98:                                               ; preds = %95, %88
  %99 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %100 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %105 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 16
  %108 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %109 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %27, align 4
  %112 = add nsw i32 %110, %111
  %113 = or i32 %107, %112
  store i32 %113, i32* %7, align 4
  br label %126

114:                                              ; preds = %98
  %115 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %116 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 16
  %119 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %120 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %27, align 4
  %123 = add nsw i32 %121, %122
  %124 = shl i32 %123, 1
  %125 = or i32 %118, %124
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %114, %103
  %127 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %128 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %133 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 16
  %136 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %137 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %29, align 4
  %140 = add nsw i32 %138, %139
  %141 = ashr i32 %140, 1
  %142 = or i32 %135, %141
  store i32 %142, i32* %8, align 4
  br label %154

143:                                              ; preds = %126
  %144 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %145 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 16
  %148 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %149 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %29, align 4
  %152 = add nsw i32 %150, %151
  %153 = or i32 %147, %152
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %143, %131
  %155 = load i32, i32* %27, align 4
  %156 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %157 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 16
  %160 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %161 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sdiv i32 %159, %162
  %164 = mul nsw i32 %155, %163
  %165 = ashr i32 %164, 14
  store i32 %165, i32* %30, align 4
  %166 = load i32, i32* %29, align 4
  %167 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %168 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 16
  %171 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %172 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sdiv i32 %170, %173
  %175 = mul nsw i32 %166, %174
  %176 = ashr i32 %175, 14
  store i32 %176, i32* %31, align 4
  %177 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %178 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sdiv i32 %179, 2
  %181 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %182 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp sge i32 %180, %183
  br i1 %184, label %185, label %229

185:                                              ; preds = %154
  %186 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %187 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %229, label %190

190:                                              ; preds = %185
  %191 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %192 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = mul nsw i32 %193, 4194304
  %195 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %196 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sdiv i32 %194, %197
  store i32 %198, i32* %6, align 4
  %199 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %200 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 %201, 4194304
  %203 = load i32, i32* %6, align 4
  %204 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %205 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %203, %206
  %208 = sub nsw i32 %202, %207
  %209 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %210 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sdiv i32 %211, 2
  %213 = icmp sge i32 %208, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %190
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %214, %190
  %218 = load i32, i32* %6, align 4
  %219 = ashr i32 %218, 2
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %6, align 4
  %221 = ashr i32 %220, 3
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %6, align 4
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %6, align 4
  %224 = ashr i32 %223, 1
  store i32 %224, i32* %14, align 4
  %225 = load i32, i32* %30, align 4
  %226 = ashr i32 %225, 3
  store i32 %226, i32* %30, align 4
  %227 = load i32, i32* %31, align 4
  %228 = ashr i32 %227, 3
  store i32 %228, i32* %31, align 4
  store i32 0, i32* %24, align 4
  br label %359

229:                                              ; preds = %185, %154
  %230 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %231 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %234 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp sge i32 %232, %235
  br i1 %236, label %237, label %281

237:                                              ; preds = %229
  %238 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %239 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = mul nsw i32 %240, 4194304
  %242 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %243 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = sdiv i32 %241, %244
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = ashr i32 %246, 1
  %248 = load i32, i32* %6, align 4
  %249 = and i32 %248, 1
  %250 = add nsw i32 %247, %249
  store i32 %250, i32* %6, align 4
  %251 = load i32, i32* %6, align 4
  %252 = ashr i32 %251, 2
  store i32 %252, i32* %9, align 4
  %253 = load i32, i32* %6, align 4
  %254 = ashr i32 %253, 2
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %6, align 4
  store i32 %255, i32* %11, align 4
  %256 = load i32, i32* %6, align 4
  %257 = ashr i32 %256, 1
  store i32 %257, i32* %14, align 4
  store i32 0, i32* %24, align 4
  %258 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %259 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %258, i32 0, i32 5
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %237
  %263 = load i32, i32* %30, align 4
  %264 = ashr i32 %263, 3
  store i32 %264, i32* %30, align 4
  br label %270

265:                                              ; preds = %237
  %266 = load i32, i32* %24, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %24, align 4
  %268 = load i32, i32* %30, align 4
  %269 = ashr i32 %268, 2
  store i32 %269, i32* %30, align 4
  br label %270

270:                                              ; preds = %265, %262
  %271 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %272 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %271, i32 0, i32 4
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %270
  %276 = load i32, i32* %10, align 4
  %277 = ashr i32 %276, 1
  store i32 %277, i32* %10, align 4
  br label %278

278:                                              ; preds = %275, %270
  %279 = load i32, i32* %31, align 4
  %280 = ashr i32 %279, 3
  store i32 %280, i32* %31, align 4
  br label %358

281:                                              ; preds = %229
  %282 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %283 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %286 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sdiv i32 %287, 2
  %289 = icmp sge i32 %284, %288
  br i1 %289, label %290, label %333

290:                                              ; preds = %281
  %291 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %292 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = mul nsw i32 %293, 2097152
  %295 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %296 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = sdiv i32 %294, %297
  store i32 %298, i32* %6, align 4
  %299 = load i32, i32* %6, align 4
  %300 = ashr i32 %299, 1
  %301 = load i32, i32* %6, align 4
  %302 = and i32 %301, 1
  %303 = add nsw i32 %300, %302
  store i32 %303, i32* %6, align 4
  %304 = load i32, i32* %6, align 4
  %305 = ashr i32 %304, 2
  store i32 %305, i32* %9, align 4
  %306 = load i32, i32* %6, align 4
  %307 = ashr i32 %306, 2
  store i32 %307, i32* %10, align 4
  %308 = load i32, i32* %6, align 4
  store i32 %308, i32* %11, align 4
  %309 = load i32, i32* %6, align 4
  store i32 %309, i32* %14, align 4
  store i32 257, i32* %24, align 4
  %310 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %311 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %310, i32 0, i32 5
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %290
  %315 = load i32, i32* %30, align 4
  %316 = ashr i32 %315, 2
  store i32 %316, i32* %30, align 4
  br label %322

317:                                              ; preds = %290
  %318 = load i32, i32* %24, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %24, align 4
  %320 = load i32, i32* %30, align 4
  %321 = ashr i32 %320, 1
  store i32 %321, i32* %30, align 4
  br label %322

322:                                              ; preds = %317, %314
  %323 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %324 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %323, i32 0, i32 4
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %322
  %328 = load i32, i32* %10, align 4
  %329 = ashr i32 %328, 1
  store i32 %329, i32* %10, align 4
  br label %330

330:                                              ; preds = %327, %322
  %331 = load i32, i32* %31, align 4
  %332 = ashr i32 %331, 2
  store i32 %332, i32* %31, align 4
  br label %357

333:                                              ; preds = %281
  %334 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %335 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = mul nsw i32 %336, 1048576
  %338 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %339 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = sdiv i32 %337, %340
  store i32 %341, i32* %6, align 4
  %342 = load i32, i32* %6, align 4
  %343 = ashr i32 %342, 1
  %344 = load i32, i32* %6, align 4
  %345 = and i32 %344, 1
  %346 = add nsw i32 %343, %345
  store i32 %346, i32* %6, align 4
  %347 = load i32, i32* %6, align 4
  %348 = ashr i32 %347, 2
  store i32 %348, i32* %9, align 4
  %349 = load i32, i32* %6, align 4
  %350 = ashr i32 %349, 2
  store i32 %350, i32* %10, align 4
  %351 = load i32, i32* %6, align 4
  store i32 %351, i32* %11, align 4
  %352 = load i32, i32* %6, align 4
  store i32 %352, i32* %14, align 4
  %353 = load i32, i32* %30, align 4
  %354 = ashr i32 %353, 1
  store i32 %354, i32* %30, align 4
  %355 = load i32, i32* %31, align 4
  %356 = ashr i32 %355, 2
  store i32 %356, i32* %31, align 4
  store i32 258, i32* %24, align 4
  br label %357

357:                                              ; preds = %333, %330
  br label %358

358:                                              ; preds = %357, %278
  br label %359

359:                                              ; preds = %358, %217
  %360 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %361 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %364 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = icmp eq i32 %362, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %359
  store i32 131072, i32* %12, align 4
  store i32 1048576, i32* %13, align 4
  store i32 262144, i32* %15, align 4
  store i32 720896, i32* %16, align 4
  br label %369

368:                                              ; preds = %359
  store i32 4080, i32* %12, align 4
  store i32 4080, i32* %13, align 4
  store i32 4080, i32* %15, align 4
  store i32 4080, i32* %16, align 4
  br label %369

369:                                              ; preds = %368, %367
  %370 = load i32, i32* %26, align 4
  %371 = add nsw i32 65536, %370
  store i32 %371, i32* %17, align 4
  %372 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %373 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %372, i32 0, i32 5
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %369
  %377 = load i32, i32* %17, align 4
  %378 = add nsw i32 %377, 65536
  store i32 %378, i32* %17, align 4
  br label %379

379:                                              ; preds = %376, %369
  %380 = load i32, i32* %17, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %18, align 4
  %382 = load i32, i32* %26, align 4
  %383 = ashr i32 %382, 1
  %384 = add nsw i32 65536, %383
  store i32 %384, i32* %19, align 4
  %385 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %386 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %385, i32 0, i32 4
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %379
  %390 = load i32, i32* %19, align 4
  %391 = add nsw i32 %390, 65536
  store i32 %391, i32* %19, align 4
  br label %392

392:                                              ; preds = %389, %379
  %393 = load i32, i32* %19, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %20, align 4
  %395 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %396 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = icmp eq i32 %397, 480
  br i1 %398, label %399, label %400

399:                                              ; preds = %392
  store i32 18743319, i32* %25, align 4
  br label %401

400:                                              ; preds = %392
  store i32 22020119, i32* %25, align 4
  br label %401

401:                                              ; preds = %400, %399
  %402 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %403 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = icmp slt i32 %404, 0
  br i1 %405, label %406, label %419

406:                                              ; preds = %401
  %407 = load i32, i32* %25, align 4
  %408 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %409 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 4
  %411 = and i32 %410, -2
  %412 = shl i32 %411, 15
  %413 = sub nsw i32 %407, %412
  %414 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %415 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 4
  %417 = ashr i32 %416, 1
  %418 = sub nsw i32 %413, %417
  store i32 %418, i32* %25, align 4
  br label %432

419:                                              ; preds = %401
  %420 = load i32, i32* %25, align 4
  %421 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %422 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 4
  %424 = and i32 %423, -2
  %425 = shl i32 %424, 15
  %426 = add nsw i32 %420, %425
  %427 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %428 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = ashr i32 %429, 1
  %431 = add nsw i32 %426, %430
  store i32 %431, i32* %25, align 4
  br label %432

432:                                              ; preds = %419, %406
  %433 = load i32, i32* %27, align 4
  %434 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %435 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = add nsw i32 %433, %436
  %438 = load i32, i32* %26, align 4
  %439 = add nsw i32 %437, %438
  %440 = sub nsw i32 %439, 1
  %441 = load i32, i32* %29, align 4
  %442 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %443 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = add nsw i32 %441, %444
  %446 = load i32, i32* %28, align 4
  %447 = add nsw i32 %445, %446
  %448 = sub nsw i32 %447, 1
  %449 = and i32 %448, -2
  %450 = shl i32 %449, 15
  %451 = or i32 %440, %450
  store i32 %451, i32* %21, align 4
  %452 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %453 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %456 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = icmp eq i32 %454, %457
  br i1 %458, label %459, label %460

459:                                              ; preds = %432
  store i32 1, i32* %22, align 4
  br label %475

460:                                              ; preds = %432
  %461 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %462 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = shl i32 %463, 1
  %465 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %466 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = sdiv i32 %464, %467
  %469 = add nsw i32 2, %468
  store i32 %469, i32* %22, align 4
  %470 = load i32, i32* %22, align 4
  %471 = ashr i32 %470, 1
  %472 = load i32, i32* %22, align 4
  %473 = and i32 %472, 1
  %474 = add nsw i32 %471, %473
  store i32 %474, i32* %22, align 4
  br label %475

475:                                              ; preds = %460, %459
  %476 = load i32, i32* %22, align 4
  %477 = shl i32 %476, 16
  %478 = load i32, i32* %22, align 4
  %479 = add nsw i32 %477, %478
  %480 = load i32, i32* %22, align 4
  %481 = ashr i32 %480, 1
  %482 = add nsw i32 %479, %481
  store i32 %482, i32* %23, align 4
  %483 = load i32, i32* %22, align 4
  %484 = shl i32 %483, 16
  %485 = load i32, i32* %22, align 4
  %486 = add nsw i32 %484, %485
  %487 = load i32, i32* %22, align 4
  %488 = mul nsw i32 %487, 46
  %489 = sdiv i32 %488, 94
  %490 = add nsw i32 %486, %489
  store i32 %490, i32* %22, align 4
  %491 = load i32, i32* %22, align 4
  %492 = and i32 %491, 65535
  %493 = load i32, i32* %22, align 4
  %494 = ashr i32 %493, 16
  %495 = sub nsw i32 %492, %494
  %496 = add nsw i32 65537, %495
  store i32 %496, i32* %22, align 4
  %497 = load i32, i32* %23, align 4
  %498 = and i32 %497, 65535
  %499 = load i32, i32* %23, align 4
  %500 = ashr i32 %499, 16
  %501 = sub nsw i32 %498, %500
  %502 = add nsw i32 65537, %501
  store i32 %502, i32* %23, align 4
  %503 = load i32, i32* %22, align 4
  %504 = icmp ne i32 %503, 65537
  br i1 %504, label %505, label %521

505:                                              ; preds = %475
  %506 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %507 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = sdiv i32 %508, 2
  %510 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %511 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 8
  %513 = icmp sle i32 %509, %512
  br i1 %513, label %514, label %521

514:                                              ; preds = %505
  %515 = load i32, i32* %22, align 4
  %516 = and i32 %515, -65536
  %517 = load i32, i32* %22, align 4
  %518 = and i32 %517, 65535
  %519 = sdiv i32 %518, 2
  %520 = add i32 %516, %519
  store i32 %520, i32* %22, align 4
  br label %521

521:                                              ; preds = %514, %505, %475
  %522 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %523 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %522, i32 0, i32 5
  %524 = load i64, i64* %523, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %529, label %526

526:                                              ; preds = %521
  %527 = load i32, i32* %22, align 4
  %528 = sub nsw i32 %527, 65537
  store i32 %528, i32* %22, align 4
  br label %529

529:                                              ; preds = %526, %521
  %530 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %531 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %530, i32 0, i32 4
  %532 = load i64, i64* %531, align 8
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %537, label %534

534:                                              ; preds = %529
  %535 = load i32, i32* %23, align 4
  %536 = sub nsw i32 %535, 65537
  store i32 %536, i32* %23, align 4
  br label %537

537:                                              ; preds = %534, %529
  %538 = load i32, i32* %30, align 4
  %539 = shl i32 %538, 16
  %540 = load i32, i32* %30, align 4
  %541 = or i32 %539, %540
  %542 = load i32, i32* %22, align 4
  %543 = add nsw i32 %542, %541
  store i32 %543, i32* %22, align 4
  %544 = load i32, i32* %31, align 4
  %545 = shl i32 %544, 16
  %546 = load i32, i32* %31, align 4
  %547 = or i32 %545, %546
  %548 = load i32, i32* %23, align 4
  %549 = add nsw i32 %548, %547
  store i32 %549, i32* %23, align 4
  %550 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %551 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 8
  %553 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %554 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %553, i32 0, i32 1
  %555 = load i32, i32* %554, align 4
  %556 = icmp eq i32 %552, %555
  br i1 %556, label %557, label %558

557:                                              ; preds = %537
  store i32 0, i32* %32, align 4
  store i32 1, i32* %33, align 4
  br label %580

558:                                              ; preds = %537
  %559 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %560 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = shl i32 %561, 16
  %563 = load %struct.yuv_frame_info*, %struct.yuv_frame_info** %4, align 8
  %564 = getelementptr inbounds %struct.yuv_frame_info, %struct.yuv_frame_info* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = sdiv i32 %562, %565
  %567 = ashr i32 %566, 15
  store i32 %567, i32* %32, align 4
  %568 = load i32, i32* %32, align 4
  %569 = ashr i32 %568, 1
  %570 = load i32, i32* %32, align 4
  %571 = and i32 %570, 1
  %572 = add nsw i32 %569, %571
  store i32 %572, i32* %32, align 4
  %573 = load i32, i32* %32, align 4
  %574 = icmp ne i32 %573, 0
  %575 = xor i1 %574, true
  %576 = zext i1 %575 to i32
  %577 = load i32, i32* %32, align 4
  %578 = add nsw i32 %577, %576
  store i32 %578, i32* %32, align 4
  %579 = load i32, i32* %32, align 4
  store i32 %579, i32* %33, align 4
  br label %580

580:                                              ; preds = %558, %557
  %581 = load i32, i32* %12, align 4
  %582 = call i32 @write_reg(i32 %581, i32 10548)
  %583 = load i32, i32* %13, align 4
  %584 = call i32 @write_reg(i32 %583, i32 10556)
  %585 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %586 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %585, i32 0, i32 25
  %587 = load i32, i32* %586, align 4
  %588 = sext i32 %587 to i64
  %589 = inttoptr i64 %588 to i8*
  %590 = load i32, i32* %12, align 4
  %591 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %592 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %591, i32 0, i32 24
  %593 = load i32, i32* %592, align 4
  %594 = load i32, i32* %13, align 4
  %595 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %589, i32 %590, i32 %593, i32 %594)
  %596 = load i32, i32* %15, align 4
  %597 = call i32 @write_reg(i32 %596, i32 10564)
  %598 = load i32, i32* %16, align 4
  %599 = call i32 @write_reg(i32 %598, i32 10572)
  %600 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %601 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %600, i32 0, i32 23
  %602 = load i32, i32* %601, align 4
  %603 = sext i32 %602 to i64
  %604 = inttoptr i64 %603 to i8*
  %605 = load i32, i32* %15, align 4
  %606 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %607 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %606, i32 0, i32 22
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* %16, align 4
  %610 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %604, i32 %605, i32 %608, i32 %609)
  %611 = load i32, i32* %11, align 4
  %612 = call i32 @write_reg(i32 %611, i32 10552)
  %613 = load i32, i32* %11, align 4
  %614 = call i32 @write_reg(i32 %613, i32 10544)
  %615 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %616 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %615, i32 0, i32 21
  %617 = load i32, i32* %616, align 4
  %618 = sext i32 %617 to i64
  %619 = inttoptr i64 %618 to i8*
  %620 = load i32, i32* %11, align 4
  %621 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %622 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %621, i32 0, i32 20
  %623 = load i32, i32* %622, align 4
  %624 = load i32, i32* %11, align 4
  %625 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %619, i32 %620, i32 %623, i32 %624)
  %626 = load i32, i32* %10, align 4
  %627 = call i32 @write_reg(i32 %626, i32 10536)
  %628 = load i32, i32* %10, align 4
  %629 = add nsw i32 %628, 1300
  %630 = call i32 @write_reg(i32 %629, i32 10540)
  %631 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %632 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %631, i32 0, i32 19
  %633 = load i32, i32* %632, align 4
  %634 = sext i32 %633 to i64
  %635 = inttoptr i64 %634 to i8*
  %636 = load i32, i32* %10, align 4
  %637 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %638 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %637, i32 0, i32 18
  %639 = load i32, i32* %638, align 4
  %640 = load i32, i32* %10, align 4
  %641 = add nsw i32 %640, 1300
  %642 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i8* %635, i32 %636, i32 %639, i32 %641)
  %643 = load i32, i32* %9, align 4
  %644 = call i32 @write_reg(i32 %643, i32 10528)
  %645 = load i32, i32* %9, align 4
  %646 = add nsw i32 %645, 1300
  %647 = call i32 @write_reg(i32 %646, i32 10532)
  %648 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %649 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %648, i32 0, i32 17
  %650 = load i32, i32* %649, align 4
  %651 = sext i32 %650 to i64
  %652 = inttoptr i64 %651 to i8*
  %653 = load i32, i32* %9, align 4
  %654 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %655 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %654, i32 0, i32 16
  %656 = load i32, i32* %655, align 4
  %657 = load i32, i32* %9, align 4
  %658 = add nsw i32 %657, 1300
  %659 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i8* %652, i32 %653, i32 %656, i32 %658)
  %660 = load i32, i32* %7, align 4
  %661 = call i32 @write_reg(i32 %660, i32 10520)
  %662 = load i32, i32* %8, align 4
  %663 = call i32 @write_reg(i32 %662, i32 10524)
  %664 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %665 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %664, i32 0, i32 15
  %666 = load i32, i32* %665, align 4
  %667 = sext i32 %666 to i64
  %668 = inttoptr i64 %667 to i8*
  %669 = load i32, i32* %7, align 4
  %670 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %671 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %670, i32 0, i32 14
  %672 = load i32, i32* %671, align 4
  %673 = load i32, i32* %8, align 4
  %674 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i8* %668, i32 %669, i32 %672, i32 %673)
  %675 = load i32, i32* %24, align 4
  %676 = call i32 @write_reg(i32 %675, i32 10604)
  %677 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %678 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %677, i32 0, i32 13
  %679 = load i32, i32* %678, align 4
  %680 = sext i32 %679 to i64
  %681 = inttoptr i64 %680 to i8*
  %682 = load i32, i32* %24, align 4
  %683 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %681, i32 %682)
  %684 = load i32, i32* %14, align 4
  %685 = call i32 @write_reg(i32 %684, i32 10568)
  %686 = load i32, i32* %14, align 4
  %687 = call i32 @write_reg(i32 %686, i32 10560)
  %688 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %689 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %688, i32 0, i32 12
  %690 = load i32, i32* %689, align 4
  %691 = sext i32 %690 to i64
  %692 = inttoptr i64 %691 to i8*
  %693 = load i32, i32* %14, align 4
  %694 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %695 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %694, i32 0, i32 11
  %696 = load i32, i32* %695, align 4
  %697 = load i32, i32* %14, align 4
  %698 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i8* %692, i32 %693, i32 %696, i32 %697)
  %699 = load i32, i32* %17, align 4
  %700 = call i32 @write_reg(i32 %699, i32 10576)
  %701 = load i32, i32* %18, align 4
  %702 = call i32 @write_reg(i32 %701, i32 10580)
  %703 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %704 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %703, i32 0, i32 10
  %705 = load i32, i32* %704, align 4
  %706 = sext i32 %705 to i64
  %707 = inttoptr i64 %706 to i8*
  %708 = load i32, i32* %17, align 4
  %709 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %710 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %709, i32 0, i32 9
  %711 = load i32, i32* %710, align 4
  %712 = load i32, i32* %18, align 4
  %713 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i8* %707, i32 %708, i32 %711, i32 %712)
  %714 = load i32, i32* %19, align 4
  %715 = call i32 @write_reg(i32 %714, i32 10584)
  %716 = load i32, i32* %20, align 4
  %717 = call i32 @write_reg(i32 %716, i32 10588)
  %718 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %719 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %718, i32 0, i32 8
  %720 = load i32, i32* %719, align 4
  %721 = sext i32 %720 to i64
  %722 = inttoptr i64 %721 to i8*
  %723 = load i32, i32* %19, align 4
  %724 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %725 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %724, i32 0, i32 7
  %726 = load i32, i32* %725, align 4
  %727 = load i32, i32* %20, align 4
  %728 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i8* %722, i32 %723, i32 %726, i32 %727)
  %729 = load i32, i32* %21, align 4
  %730 = call i32 @write_reg(i32 %729, i32 10592)
  %731 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %732 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %731, i32 0, i32 6
  %733 = load i32, i32* %732, align 4
  %734 = sext i32 %733 to i64
  %735 = inttoptr i64 %734 to i8*
  %736 = load i32, i32* %21, align 4
  %737 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i8* %735, i32 %736)
  %738 = load i32, i32* %22, align 4
  %739 = call i32 @write_reg(i32 %738, i32 10596)
  %740 = load i32, i32* %23, align 4
  %741 = call i32 @write_reg(i32 %740, i32 10600)
  %742 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %743 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %742, i32 0, i32 5
  %744 = load i32, i32* %743, align 4
  %745 = sext i32 %744 to i64
  %746 = inttoptr i64 %745 to i8*
  %747 = load i32, i32* %22, align 4
  %748 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %749 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %748, i32 0, i32 4
  %750 = load i32, i32* %749, align 4
  %751 = load i32, i32* %23, align 4
  %752 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0), i8* %746, i32 %747, i32 %750, i32 %751)
  %753 = load i32, i32* %25, align 4
  %754 = call i32 @write_reg(i32 %753, i32 10396)
  %755 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %756 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %755, i32 0, i32 3
  %757 = load i32, i32* %756, align 4
  %758 = sext i32 %757 to i64
  %759 = inttoptr i64 %758 to i8*
  %760 = load i32, i32* %25, align 4
  %761 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i8* %759, i32 %760)
  %762 = load i32, i32* %32, align 4
  %763 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %764 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %763, i32 0, i32 1
  %765 = load i32, i32* %764, align 4
  %766 = icmp ne i32 %762, %765
  br i1 %766, label %767, label %774

767:                                              ; preds = %580
  %768 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %769 = load i32, i32* %32, align 4
  %770 = call i32 @ivtv_yuv_filter(%struct.ivtv* %768, i32 -1, i32 %769, i32 -1)
  %771 = load i32, i32* %32, align 4
  %772 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %773 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %772, i32 0, i32 1
  store i32 %771, i32* %773, align 4
  br label %774

774:                                              ; preds = %767, %580
  %775 = load i32, i32* %33, align 4
  %776 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %777 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %776, i32 0, i32 2
  %778 = load i32, i32* %777, align 4
  %779 = icmp ne i32 %775, %778
  br i1 %779, label %780, label %787

780:                                              ; preds = %774
  %781 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %782 = load i32, i32* %33, align 4
  %783 = call i32 @ivtv_yuv_filter(%struct.ivtv* %781, i32 -1, i32 -1, i32 %782)
  %784 = load i32, i32* %33, align 4
  %785 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %786 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %785, i32 0, i32 2
  store i32 %784, i32* %786, align 4
  br label %787

787:                                              ; preds = %780, %774
  ret void
}

declare dso_local i32 @IVTV_DEBUG_WARN(i8*, i8*, ...) #1

declare dso_local i32 @IVTV_DEBUG_YUV(i8*, i8*, ...) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @ivtv_yuv_filter(%struct.ivtv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
