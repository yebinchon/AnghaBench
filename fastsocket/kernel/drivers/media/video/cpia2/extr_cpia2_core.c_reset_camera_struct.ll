; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_reset_camera_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_reset_camera_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_20__, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i8*, i64, i64, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }

@DEFAULT_BRIGHTNESS = common dso_local global i64 0, align 8
@DEFAULT_CONTRAST = common dso_local global i64 0, align 8
@DEFAULT_SATURATION = common dso_local global i64 0, align 8
@NEVER_FLICKER = common dso_local global i32 0, align 4
@CPIA2_VC_VC_JPEG_OPT_DEFAULT = common dso_local global i32 0, align 4
@DEFAULT_TARGET_KB = common dso_local global i32 0, align 4
@DEVICE_STV_672 = common dso_local global i64 0, align 8
@CPIA2_VP_SENSOR_FLAGS_500 = common dso_local global i64 0, align 8
@CPIA2_VP_FRAMERATE_15 = common dso_local global i8* null, align 8
@CPIA2_VP_FRAMERATE_30 = common dso_local global i8* null, align 8
@CPIA2_SENSOR_500 = common dso_local global i32 0, align 4
@VIDEOSIZE_VGA = common dso_local global i32 0, align 4
@STV_IMAGE_VGA_COLS = common dso_local global i32 0, align 4
@STV_IMAGE_VGA_ROWS = common dso_local global i32 0, align 4
@CPIA2_SENSOR_410 = common dso_local global i32 0, align 4
@VIDEOSIZE_CIF = common dso_local global i32 0, align 4
@STV_IMAGE_CIF_COLS = common dso_local global i32 0, align 4
@STV_IMAGE_CIF_ROWS = common dso_local global i32 0, align 4
@VIDEO_PALETTE_RGB24 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camera_data*)* @reset_camera_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_camera_struct(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  %3 = load i64, i64* @DEFAULT_BRIGHTNESS, align 8
  %4 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %5 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 2
  store i64 %3, i64* %7, align 8
  %8 = load i64, i64* @DEFAULT_CONTRAST, align 8
  %9 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %10 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  store i64 %8, i64* %12, align 8
  %13 = load i64, i64* @DEFAULT_SATURATION, align 8
  %14 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %15 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  store i64 %13, i64* %17, align 8
  %18 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %19 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @NEVER_FLICKER, align 4
  %23 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %24 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %28 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i32 60, i32* %30, align 4
  %31 = load i32, i32* @CPIA2_VC_VC_JPEG_OPT_DEFAULT, align 4
  %32 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %33 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  store i32 %31, i32* %35, align 4
  %36 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %37 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  store i32 2, i32* %39, align 4
  %40 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %41 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  store i32 20, i32* %43, align 4
  %44 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %45 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  store i32 0, i32* %47, align 4
  %48 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %49 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %53 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @DEFAULT_TARGET_KB, align 4
  %57 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %58 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %62 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DEVICE_STV_672, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %1
  %69 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %70 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CPIA2_VP_SENSOR_FLAGS_500, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load i8*, i8** @CPIA2_VP_FRAMERATE_15, align 8
  %78 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %79 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  store i8* %77, i8** %81, align 8
  br label %88

82:                                               ; preds = %68
  %83 = load i8*, i8** @CPIA2_VP_FRAMERATE_30, align 8
  %84 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %85 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  store i8* %83, i8** %87, align 8
  br label %88

88:                                               ; preds = %82, %76
  br label %95

89:                                               ; preds = %1
  %90 = load i8*, i8** @CPIA2_VP_FRAMERATE_30, align 8
  %91 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %92 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  store i8* %90, i8** %94, align 8
  br label %95

95:                                               ; preds = %89, %88
  %96 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %97 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CPIA2_VP_SENSOR_FLAGS_500, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %95
  %104 = load i32, i32* @CPIA2_SENSOR_500, align 4
  %105 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %106 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @VIDEOSIZE_VGA, align 4
  %108 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %109 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @STV_IMAGE_VGA_COLS, align 4
  %111 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %112 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* @STV_IMAGE_VGA_ROWS, align 4
  %116 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %117 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 8
  br label %137

120:                                              ; preds = %95
  %121 = load i32, i32* @CPIA2_SENSOR_410, align 4
  %122 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %123 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @VIDEOSIZE_CIF, align 4
  %125 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %126 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @STV_IMAGE_CIF_COLS, align 4
  %128 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %129 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* @STV_IMAGE_CIF_ROWS, align 4
  %133 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %134 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 8
  br label %137

137:                                              ; preds = %120, %103
  %138 = load i64, i64* @VIDEO_PALETTE_RGB24, align 8
  %139 = trunc i64 %138 to i32
  %140 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %141 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %144 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = mul nsw i32 %148, 256
  %150 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %151 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 4
  %153 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %154 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = mul nsw i32 %158, 256
  %160 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %161 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 2
  store i32 %159, i32* %162, align 8
  %163 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %164 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = mul nsw i32 %168, 256
  %170 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %171 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 3
  store i32 %169, i32* %172, align 4
  %173 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %174 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 5
  store i64 0, i64* %175, align 8
  %176 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %177 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 4
  store i64 0, i64* %178, align 8
  %179 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %180 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %185 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 3
  store i32 %183, i32* %186, align 4
  %187 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %188 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %193 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  store i32 %191, i32* %194, align 8
  %195 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %196 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  store i64 0, i64* %197, align 8
  %198 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %199 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  store i64 0, i64* %200, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
