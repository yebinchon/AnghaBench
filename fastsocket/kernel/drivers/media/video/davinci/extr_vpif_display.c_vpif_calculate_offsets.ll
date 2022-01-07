; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_calculate_offsets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_calculate_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.channel_obj = type { i64, %struct.vpif_params, %struct.video_obj, %struct.common_obj* }
%struct.vpif_params = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.video_obj = type { i64 }
%struct.common_obj = type { i64, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
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
  %3 = alloca %struct.common_obj*, align 8
  %4 = alloca %struct.vpif_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.channel_obj* %0, %struct.channel_obj** %2, align 8
  %10 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %11 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %10, i32 0, i32 3
  %12 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %13 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %14 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %12, i64 %13
  store %struct.common_obj* %14, %struct.common_obj** %3, align 8
  %15 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %16 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %15, i32 0, i32 1
  store %struct.vpif_params* %16, %struct.vpif_params** %4, align 8
  %17 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %18 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %24 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %23, i32 0, i32 2
  store %struct.video_obj* %24, %struct.video_obj** %6, align 8
  %25 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %26 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %27 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 %25, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %1
  %35 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %36 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %43 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %44 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %49

45:                                               ; preds = %34
  %46 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %47 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %48 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %41
  br label %60

50:                                               ; preds = %1
  %51 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %52 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %59 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %50, %49
  %61 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %62 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %63 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %68 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  br label %80

73:                                               ; preds = %60
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config_params, i32 0, i32 0), align 8
  %75 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %76 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %73, %66
  %81 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %82 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %7, align 4
  %89 = mul i32 %88, 2
  %90 = udiv i32 %87, %89
  store i32 %90, i32* %8, align 4
  %91 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %92 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %93 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %80
  %97 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %98 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %99 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %96, %80
  %103 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %104 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %103, i32 0, i32 1
  store i32 0, i32* %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %107 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %9, align 4
  %109 = udiv i32 %108, 2
  %110 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %111 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %9, align 4
  %113 = udiv i32 %112, 2
  %114 = load i32, i32* %7, align 4
  %115 = add i32 %113, %114
  %116 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %117 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  br label %170

118:                                              ; preds = %96
  %119 = load i64, i64* @V4L2_FIELD_SEQ_TB, align 8
  %120 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %121 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %119, %122
  br i1 %123, label %124, label %143

124:                                              ; preds = %118
  %125 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %126 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %125, i32 0, i32 1
  store i32 0, i32* %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = udiv i32 %127, 4
  %129 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %130 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = udiv i32 %131, 2
  %133 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %134 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  %135 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %136 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = udiv i32 %138, 4
  %140 = add i32 %137, %139
  %141 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %142 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 4
  br label %169

143:                                              ; preds = %118
  %144 = load i64, i64* @V4L2_FIELD_SEQ_BT, align 8
  %145 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %146 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  br i1 %148, label %149, label %168

149:                                              ; preds = %143
  %150 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %151 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %150, i32 0, i32 2
  store i32 0, i32* %151, align 4
  %152 = load i32, i32* %9, align 4
  %153 = udiv i32 %152, 4
  %154 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %155 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %9, align 4
  %157 = udiv i32 %156, 2
  %158 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %159 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 4
  %160 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %161 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %9, align 4
  %164 = udiv i32 %163, 4
  %165 = add i32 %162, %164
  %166 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %167 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 8
  br label %168

168:                                              ; preds = %149, %143
  br label %169

169:                                              ; preds = %168, %124
  br label %170

170:                                              ; preds = %169, %102
  %171 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %172 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %173 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %171, %174
  br i1 %175, label %182, label %176

176:                                              ; preds = %170
  %177 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %178 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %179 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %177, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176, %170
  %183 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %184 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  store i32 1, i32* %185, align 4
  br label %190

186:                                              ; preds = %176
  %187 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %188 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  store i32 0, i32* %189, align 4
  br label %190

190:                                              ; preds = %186, %182
  %191 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %192 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %207

197:                                              ; preds = %190
  %198 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %199 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %205 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  store i32 %203, i32* %206, align 4
  br label %239

207:                                              ; preds = %190
  %208 = load i32, i32* %5, align 4
  %209 = zext i32 %208 to i64
  %210 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %217, label %212

212:                                              ; preds = %207
  %213 = load i32, i32* %5, align 4
  %214 = zext i32 %213 to i64
  %215 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %212, %207
  %218 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %219 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = mul i32 %223, 2
  %225 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %226 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  store i32 %224, i32* %227, align 4
  br label %238

228:                                              ; preds = %212
  %229 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %230 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %236 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 1
  store i32 %234, i32* %237, align 4
  br label %238

238:                                              ; preds = %228, %217
  br label %239

239:                                              ; preds = %238, %197
  %240 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %241 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %246 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 2
  store i32 %244, i32* %248, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
