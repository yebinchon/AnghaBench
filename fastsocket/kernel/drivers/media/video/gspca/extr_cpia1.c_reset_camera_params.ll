; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_reset_camera_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_reset_camera_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, %struct.cam_params }
%struct.cam_params = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@BRIGHTNESS_DEF = common dso_local global i32 0, align 4
@CONTRAST_DEF = common dso_local global i32 0, align 4
@SATURATION_DEF = common dso_local global i32 0, align 4
@COMP_RED = common dso_local global i32 0, align 4
@COMP_GREEN1 = common dso_local global i32 0, align 4
@COMP_GREEN2 = common dso_local global i32 0, align 4
@COMP_BLUE = common dso_local global i32 0, align 4
@flicker_jumps = common dso_local global i32*** null, align 8
@SUBSAMPLE_420 = common dso_local global i32 0, align 4
@YUVORDER_YUYV = common dso_local global i32 0, align 4
@CPIA_COMPRESSION_AUTO = common dso_local global i32 0, align 4
@NO_DECIMATION = common dso_local global i32 0, align 4
@COMP_TARGET_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @reset_camera_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_camera_params(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.cam_params*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 1
  store %struct.cam_params* %8, %struct.cam_params** %4, align 8
  %9 = load i32, i32* @BRIGHTNESS_DEF, align 4
  %10 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %11 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @CONTRAST_DEF, align 4
  %14 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %15 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @SATURATION_DEF, align 4
  %18 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %19 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %22 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %21, i32 0, i32 12
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  store i32 4, i32* %23, align 8
  %24 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %25 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %24, i32 0, i32 12
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  store i32 2, i32* %26, align 4
  %27 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %28 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %27, i32 0, i32 12
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  store i32 1, i32* %29, align 8
  %30 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %31 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %30, i32 0, i32 12
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  %33 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %34 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %33, i32 0, i32 12
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 11
  store i64 0, i64* %35, align 8
  %36 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %37 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %36, i32 0, i32 12
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 10
  store i64 0, i64* %38, align 8
  %39 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %40 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %39, i32 0, i32 12
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 4
  store i32 185, i32* %41, align 8
  %42 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %43 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %42, i32 0, i32 12
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 9
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @COMP_RED, align 4
  %46 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %47 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %46, i32 0, i32 12
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 8
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @COMP_GREEN1, align 4
  %50 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %51 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %50, i32 0, i32 12
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 7
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @COMP_GREEN2, align 4
  %54 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %55 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %54, i32 0, i32 12
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 6
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @COMP_BLUE, align 4
  %58 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %59 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %58, i32 0, i32 12
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 4
  %61 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %62 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %61, i32 0, i32 11
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  store i32 2, i32* %63, align 8
  %64 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %65 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %64, i32 0, i32 11
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  store i32 32, i32* %66, align 4
  %67 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %68 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %67, i32 0, i32 11
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  store i32 6, i32* %69, align 8
  %70 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %71 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 3
  store i32 92, i32* %72, align 4
  %73 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %74 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %73, i32 0, i32 10
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  store i32 24, i32* %75, align 8
  %76 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %77 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  store i32 22, i32* %78, align 4
  %79 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %80 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %79, i32 0, i32 10
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  store i32 36, i32* %81, align 8
  %82 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %83 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %82, i32 0, i32 10
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 3
  store i32 52, i32* %84, align 4
  %85 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %86 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %89 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %88, i32 0, i32 9
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i32***, i32**** @flicker_jumps, align 8
  %92 = load %struct.sd*, %struct.sd** %3, align 8
  %93 = getelementptr inbounds %struct.sd, %struct.sd* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32**, i32*** %91, i64 %94
  %96 = load i32**, i32*** %95, align 8
  %97 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %98 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32*, i32** %96, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %104 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %110 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 8
  %112 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %113 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %112, i32 0, i32 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @find_over_exposure(i32 %115)
  %117 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %118 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %117, i32 0, i32 9
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %121 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  store i32 20, i32* %122, align 8
  %123 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %124 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  store i32 24, i32* %125, align 4
  %126 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %127 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 2
  store i32 26, i32* %128, align 8
  %129 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %130 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 3
  store i32 26, i32* %131, align 4
  %132 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %133 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  store i32 3, i32* %134, align 8
  %135 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %136 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 1
  store i32 11, i32* %137, align 4
  %138 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %139 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 2
  store i32 1, i32* %140, align 8
  %141 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %142 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 3
  store i32 3, i32* %143, align 4
  %144 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %145 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 4
  store i32 2, i32* %146, align 8
  %147 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %148 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 5
  store i32 5, i32* %149, align 4
  %150 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %151 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 6
  store i32 3, i32* %152, align 8
  %153 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %154 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 7
  store i32 2, i32* %155, align 4
  %156 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %157 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 1
  store i64 1, i64* %158, align 8
  %159 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %160 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 0
  store i64 1, i64* %161, align 8
  %162 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %163 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  store i32 6, i32* %164, align 4
  %165 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %166 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 1
  store i32 6, i32* %167, align 4
  %168 = load i32, i32* @SUBSAMPLE_420, align 4
  %169 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %170 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  store i32 %168, i32* %171, align 4
  %172 = load i32, i32* @YUVORDER_YUYV, align 4
  %173 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %174 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 4
  %176 = load i32, i32* @CPIA_COMPRESSION_AUTO, align 4
  %177 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %178 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load i32, i32* @NO_DECIMATION, align 4
  %181 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %182 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 4
  %184 = load i32, i32* @COMP_TARGET_DEF, align 4
  %185 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %186 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 2
  store i32 %184, i32* %187, align 8
  %188 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %189 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  store i32 15, i32* %190, align 8
  %191 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %192 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  store i32 5, i32* %193, align 4
  %194 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %195 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 4
  store i64 0, i64* %196, align 8
  %197 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %198 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 3
  store i64 0, i64* %199, align 8
  %200 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %201 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 2
  store i64 0, i64* %202, align 8
  %203 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %204 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 1
  store i64 0, i64* %205, align 8
  %206 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %207 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  store i64 0, i64* %208, align 8
  ret void
}

declare dso_local i32 @find_over_exposure(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
