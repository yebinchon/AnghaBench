; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_calculate_offsets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_calculate_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.channel_obj = type { i64, %struct.vpif_params, %struct.common_obj*, %struct.video_obj }
%struct.vpif_params = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.common_obj = type { i64, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.video_obj = type { i64 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"vpif_calculate_offsets\0A\00", align 1
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@V4L2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@config_params = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@V4L2_FIELD_SEQ_TB = common dso_local global i64 0, align 8
@V4L2_FIELD_SEQ_BT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel_obj*)* @vpif_calculate_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpif_calculate_offsets(%struct.channel_obj* %0) #0 {
  %2 = alloca %struct.channel_obj*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_obj*, align 8
  %7 = alloca %struct.vpif_params*, align 8
  %8 = alloca %struct.common_obj*, align 8
  %9 = alloca i32, align 4
  store %struct.channel_obj* %0, %struct.channel_obj** %2, align 8
  %10 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %11 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %10, i32 0, i32 3
  store %struct.video_obj* %11, %struct.video_obj** %6, align 8
  %12 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %13 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %12, i32 0, i32 1
  store %struct.vpif_params* %13, %struct.vpif_params** %7, align 8
  %14 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %15 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %14, i32 0, i32 2
  %16 = load %struct.common_obj*, %struct.common_obj** %15, align 8
  %17 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %18 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %16, i64 %17
  store %struct.common_obj* %18, %struct.common_obj** %8, align 8
  %19 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %20 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @debug, align 4
  %26 = call i32 @vpif_dbg(i32 2, i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %1
  %31 = load %struct.vpif_params*, %struct.vpif_params** %7, align 8
  %32 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %38 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %39 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %44

40:                                               ; preds = %30
  %41 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %42 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %43 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %36
  br label %55

45:                                               ; preds = %1
  %46 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %47 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %54 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %45, %44
  %56 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %57 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %58 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %63 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  br label %75

68:                                               ; preds = %55
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config_params, i32 0, i32 0), align 8
  %70 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %71 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %68, %61
  %76 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %77 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %3, align 4
  %84 = mul i32 %83, 2
  %85 = udiv i32 %82, %84
  store i32 %85, i32* %4, align 4
  %86 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %87 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %88 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %75
  %92 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %93 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %94 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %91, %75
  %98 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %99 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %98, i32 0, i32 1
  store i32 0, i32* %99, align 8
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %102 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %5, align 4
  %104 = udiv i32 %103, 2
  %105 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %106 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %5, align 4
  %108 = udiv i32 %107, 2
  %109 = load i32, i32* %3, align 4
  %110 = add i32 %108, %109
  %111 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %112 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  br label %165

113:                                              ; preds = %91
  %114 = load i64, i64* @V4L2_FIELD_SEQ_TB, align 8
  %115 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %116 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %113
  %120 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %121 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %120, i32 0, i32 1
  store i32 0, i32* %121, align 8
  %122 = load i32, i32* %5, align 4
  %123 = udiv i32 %122, 4
  %124 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %125 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %5, align 4
  %127 = udiv i32 %126, 2
  %128 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %129 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %131 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = udiv i32 %133, 4
  %135 = add i32 %132, %134
  %136 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %137 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  br label %164

138:                                              ; preds = %113
  %139 = load i64, i64* @V4L2_FIELD_SEQ_BT, align 8
  %140 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %141 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %139, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %138
  %145 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %146 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %145, i32 0, i32 2
  store i32 0, i32* %146, align 4
  %147 = load i32, i32* %5, align 4
  %148 = udiv i32 %147, 4
  %149 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %150 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %5, align 4
  %152 = udiv i32 %151, 2
  %153 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %154 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 4
  %155 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %156 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %5, align 4
  %159 = udiv i32 %158, 4
  %160 = add i32 %157, %159
  %161 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %162 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %144, %138
  br label %164

164:                                              ; preds = %163, %119
  br label %165

165:                                              ; preds = %164, %97
  %166 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %167 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %168 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %166, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %165
  %172 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %173 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %174 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %172, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %171, %165
  %178 = load %struct.vpif_params*, %struct.vpif_params** %7, align 8
  %179 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  store i32 1, i32* %180, align 4
  br label %185

181:                                              ; preds = %171
  %182 = load %struct.vpif_params*, %struct.vpif_params** %7, align 8
  %183 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  store i32 0, i32* %184, align 4
  br label %185

185:                                              ; preds = %181, %177
  %186 = load %struct.vpif_params*, %struct.vpif_params** %7, align 8
  %187 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 1, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %185
  %192 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %193 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.vpif_params*, %struct.vpif_params** %7, align 8
  %199 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 4
  br label %232

201:                                              ; preds = %185
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %210, label %205

205:                                              ; preds = %201
  %206 = load i32, i32* %9, align 4
  %207 = zext i32 %206 to i64
  %208 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %221

210:                                              ; preds = %205, %201
  %211 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %212 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = mul i32 %216, 2
  %218 = load %struct.vpif_params*, %struct.vpif_params** %7, align 8
  %219 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  store i32 %217, i32* %220, align 4
  br label %231

221:                                              ; preds = %205
  %222 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %223 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.vpif_params*, %struct.vpif_params** %7, align 8
  %229 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  store i32 %227, i32* %230, align 4
  br label %231

231:                                              ; preds = %221, %210
  br label %232

232:                                              ; preds = %231, %191
  %233 = load %struct.vpif_params*, %struct.vpif_params** %7, align 8
  %234 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %238 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 2
  store i32 %236, i32* %240, align 8
  ret void
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
