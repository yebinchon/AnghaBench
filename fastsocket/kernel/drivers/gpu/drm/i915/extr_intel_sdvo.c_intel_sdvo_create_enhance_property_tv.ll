; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_create_enhance_property_tv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_create_enhance_property_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_sdvo_connector = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_connector }
%struct.drm_connector = type { i32 }
%struct.intel_sdvo_enhancements_reply = type { i64, i64, i64 }

@SDVO_CMD_GET_MAX_OVERSCAN_H = common dso_local global i32 0, align 4
@SDVO_CMD_GET_OVERSCAN_H = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"left_margin\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"right_margin\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"h_overscan: max %d, default %d, current %d\0A\00", align 1
@SDVO_CMD_GET_MAX_OVERSCAN_V = common dso_local global i32 0, align 4
@SDVO_CMD_GET_OVERSCAN_V = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"top_margin\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"bottom_margin\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"v_overscan: max %d, default %d, current %d\0A\00", align 1
@hpos = common dso_local global i32 0, align 4
@HPOS = common dso_local global i32 0, align 4
@vpos = common dso_local global i32 0, align 4
@VPOS = common dso_local global i32 0, align 4
@saturation = common dso_local global i32 0, align 4
@SATURATION = common dso_local global i32 0, align 4
@contrast = common dso_local global i32 0, align 4
@CONTRAST = common dso_local global i32 0, align 4
@hue = common dso_local global i32 0, align 4
@HUE = common dso_local global i32 0, align 4
@sharpness = common dso_local global i32 0, align 4
@SHARPNESS = common dso_local global i32 0, align 4
@brightness = common dso_local global i32 0, align 4
@BRIGHTNESS = common dso_local global i32 0, align 4
@flicker_filter = common dso_local global i32 0, align 4
@FLICKER_FILTER = common dso_local global i32 0, align 4
@flicker_filter_adaptive = common dso_local global i32 0, align 4
@FLICKER_FILTER_ADAPTIVE = common dso_local global i32 0, align 4
@flicker_filter_2d = common dso_local global i32 0, align 4
@FLICKER_FILTER_2D = common dso_local global i32 0, align 4
@tv_chroma_filter = common dso_local global i32 0, align 4
@TV_CHROMA_FILTER = common dso_local global i32 0, align 4
@tv_luma_filter = common dso_local global i32 0, align 4
@TV_LUMA_FILTER = common dso_local global i32 0, align 4
@SDVO_CMD_GET_DOT_CRAWL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"dot_crawl\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"dot crawl: current %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, %struct.intel_sdvo_connector*, %struct.intel_sdvo_enhancements_reply*)* @intel_sdvo_create_enhance_property_tv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_create_enhance_property_tv(%struct.intel_sdvo* %0, %struct.intel_sdvo_connector* %1, %struct.intel_sdvo_enhancements_reply* byval(%struct.intel_sdvo_enhancements_reply) align 8 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca %struct.intel_sdvo_connector*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %5, align 8
  store %struct.intel_sdvo_connector* %1, %struct.intel_sdvo_connector** %6, align 8
  %11 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %12 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %7, align 8
  %16 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %17 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %16, i32 0, i32 13
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.drm_connector* %18, %struct.drm_connector** %8, align 8
  %19 = getelementptr inbounds %struct.intel_sdvo_enhancements_reply, %struct.intel_sdvo_enhancements_reply* %2, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %98

22:                                               ; preds = %3
  %23 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %24 = load i32, i32* @SDVO_CMD_GET_MAX_OVERSCAN_H, align 4
  %25 = call i32 (%struct.intel_sdvo*, i32, ...) @intel_sdvo_get_value(%struct.intel_sdvo* %23, i32 %24, [2 x i32]* %10, i32 4)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %253

28:                                               ; preds = %22
  %29 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %30 = load i32, i32* @SDVO_CMD_GET_OVERSCAN_H, align 4
  %31 = call i32 (%struct.intel_sdvo*, i32, ...) @intel_sdvo_get_value(%struct.intel_sdvo* %29, i32 %30, i32* %9, i32 2)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %253

34:                                               ; preds = %28
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %38 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %44 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %46 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %49 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @drm_property_create_range(%struct.drm_device* %50, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 %52)
  %54 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %55 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %54, i32 0, i32 12
  store i8* %53, i8** %55, align 8
  %56 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %57 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %56, i32 0, i32 12
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %253

61:                                               ; preds = %34
  %62 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %63 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %62, i32 0, i32 0
  %64 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %65 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %64, i32 0, i32 12
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %68 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @drm_object_attach_property(i32* %63, i8* %66, i32 %69)
  %71 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @drm_property_create_range(%struct.drm_device* %71, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %73)
  %75 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %76 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %75, i32 0, i32 11
  store i8* %74, i8** %76, align 8
  %77 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %78 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %77, i32 0, i32 11
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %253

82:                                               ; preds = %61
  %83 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %84 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %83, i32 0, i32 0
  %85 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %86 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %85, i32 0, i32 11
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %89 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @drm_object_attach_property(i32* %84, i8* %87, i32 %90)
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %82, %3
  %99 = getelementptr inbounds %struct.intel_sdvo_enhancements_reply, %struct.intel_sdvo_enhancements_reply* %2, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %178

102:                                              ; preds = %98
  %103 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %104 = load i32, i32* @SDVO_CMD_GET_MAX_OVERSCAN_V, align 4
  %105 = call i32 (%struct.intel_sdvo*, i32, ...) @intel_sdvo_get_value(%struct.intel_sdvo* %103, i32 %104, [2 x i32]* %10, i32 4)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %253

108:                                              ; preds = %102
  %109 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %110 = load i32, i32* @SDVO_CMD_GET_OVERSCAN_V, align 4
  %111 = call i32 (%struct.intel_sdvo*, i32, ...) @intel_sdvo_get_value(%struct.intel_sdvo* %109, i32 %110, i32* %9, i32 2)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %253

114:                                              ; preds = %108
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %118 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %124 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  %125 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %126 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %129 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @drm_property_create_range(%struct.drm_device* %130, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %132)
  %134 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %135 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %134, i32 0, i32 10
  store i8* %133, i8** %135, align 8
  %136 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %137 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %136, i32 0, i32 10
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %253

141:                                              ; preds = %114
  %142 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %143 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %142, i32 0, i32 0
  %144 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %145 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %144, i32 0, i32 10
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %148 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @drm_object_attach_property(i32* %143, i8* %146, i32 %149)
  %151 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @drm_property_create_range(%struct.drm_device* %151, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %153)
  %155 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %156 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %155, i32 0, i32 9
  store i8* %154, i8** %156, align 8
  %157 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %158 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %157, i32 0, i32 9
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %253

162:                                              ; preds = %141
  %163 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %164 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %163, i32 0, i32 0
  %165 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %166 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %165, i32 0, i32 9
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %169 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @drm_object_attach_property(i32* %164, i8* %167, i32 %170)
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %173, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %162, %98
  %179 = load i32, i32* @hpos, align 4
  %180 = load i32, i32* @HPOS, align 4
  %181 = call i32 @ENHANCEMENT(i32 %179, i32 %180)
  %182 = load i32, i32* @vpos, align 4
  %183 = load i32, i32* @VPOS, align 4
  %184 = call i32 @ENHANCEMENT(i32 %182, i32 %183)
  %185 = load i32, i32* @saturation, align 4
  %186 = load i32, i32* @SATURATION, align 4
  %187 = call i32 @ENHANCEMENT(i32 %185, i32 %186)
  %188 = load i32, i32* @contrast, align 4
  %189 = load i32, i32* @CONTRAST, align 4
  %190 = call i32 @ENHANCEMENT(i32 %188, i32 %189)
  %191 = load i32, i32* @hue, align 4
  %192 = load i32, i32* @HUE, align 4
  %193 = call i32 @ENHANCEMENT(i32 %191, i32 %192)
  %194 = load i32, i32* @sharpness, align 4
  %195 = load i32, i32* @SHARPNESS, align 4
  %196 = call i32 @ENHANCEMENT(i32 %194, i32 %195)
  %197 = load i32, i32* @brightness, align 4
  %198 = load i32, i32* @BRIGHTNESS, align 4
  %199 = call i32 @ENHANCEMENT(i32 %197, i32 %198)
  %200 = load i32, i32* @flicker_filter, align 4
  %201 = load i32, i32* @FLICKER_FILTER, align 4
  %202 = call i32 @ENHANCEMENT(i32 %200, i32 %201)
  %203 = load i32, i32* @flicker_filter_adaptive, align 4
  %204 = load i32, i32* @FLICKER_FILTER_ADAPTIVE, align 4
  %205 = call i32 @ENHANCEMENT(i32 %203, i32 %204)
  %206 = load i32, i32* @flicker_filter_2d, align 4
  %207 = load i32, i32* @FLICKER_FILTER_2D, align 4
  %208 = call i32 @ENHANCEMENT(i32 %206, i32 %207)
  %209 = load i32, i32* @tv_chroma_filter, align 4
  %210 = load i32, i32* @TV_CHROMA_FILTER, align 4
  %211 = call i32 @ENHANCEMENT(i32 %209, i32 %210)
  %212 = load i32, i32* @tv_luma_filter, align 4
  %213 = load i32, i32* @TV_LUMA_FILTER, align 4
  %214 = call i32 @ENHANCEMENT(i32 %212, i32 %213)
  %215 = getelementptr inbounds %struct.intel_sdvo_enhancements_reply, %struct.intel_sdvo_enhancements_reply* %2, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %252

218:                                              ; preds = %178
  %219 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %220 = load i32, i32* @SDVO_CMD_GET_DOT_CRAWL, align 4
  %221 = call i32 (%struct.intel_sdvo*, i32, ...) @intel_sdvo_get_value(%struct.intel_sdvo* %219, i32 %220, i32* %9, i32 2)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %218
  store i32 0, i32* %4, align 4
  br label %253

224:                                              ; preds = %218
  %225 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %226 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %225, i32 0, i32 6
  store i32 1, i32* %226, align 8
  %227 = load i32, i32* %9, align 4
  %228 = and i32 %227, 1
  %229 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %230 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %229, i32 0, i32 7
  store i32 %228, i32* %230, align 4
  %231 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %232 = call i8* @drm_property_create_range(%struct.drm_device* %231, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 1)
  %233 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %234 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %233, i32 0, i32 8
  store i8* %232, i8** %234, align 8
  %235 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %236 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %235, i32 0, i32 8
  %237 = load i8*, i8** %236, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %224
  store i32 0, i32* %4, align 4
  br label %253

240:                                              ; preds = %224
  %241 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %242 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %241, i32 0, i32 0
  %243 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %244 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %243, i32 0, i32 8
  %245 = load i8*, i8** %244, align 8
  %246 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %247 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @drm_object_attach_property(i32* %242, i8* %245, i32 %248)
  %250 = load i32, i32* %9, align 4
  %251 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %240, %178
  store i32 1, i32* %4, align 4
  br label %253

253:                                              ; preds = %252, %239, %223, %161, %140, %113, %107, %81, %60, %33, %27
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i32 @intel_sdvo_get_value(%struct.intel_sdvo*, i32, ...) #1

declare dso_local i8* @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, i8*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @ENHANCEMENT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
