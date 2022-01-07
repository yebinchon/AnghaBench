; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_reset_camera_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_reset_camera_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { i64, i32, i32, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, i32, %struct.TYPE_24__, i32, i64 }
%struct.TYPE_20__ = type { i32*, i64, i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_21__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_34__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_33__ = type { i32, i32, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i64 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@COMP_RED = common dso_local global i32 0, align 4
@COMP_GREEN1 = common dso_local global i32 0, align 4
@COMP_GREEN2 = common dso_local global i32 0, align 4
@COMP_BLUE = common dso_local global i32 0, align 4
@flicker_jumps = common dso_local global i32*** null, align 8
@EXPOSURE_NORMAL = common dso_local global i32 0, align 4
@SUBSAMPLE_422 = common dso_local global i32 0, align 4
@YUVORDER_YUYV = common dso_local global i32 0, align 4
@CPIA_COMPRESSION_AUTO = common dso_local global i32 0, align 4
@CPIA_COMPRESSION_TARGET_QUALITY = common dso_local global i32 0, align 4
@VIDEOSIZE_CIF = common dso_local global i32 0, align 4
@VIDEO_PALETTE_RGB24 = common dso_local global i32 0, align 4
@COMMAND_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_data*)* @reset_camera_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_camera_struct(%struct.cam_data* %0) #0 {
  %2 = alloca %struct.cam_data*, align 8
  store %struct.cam_data* %0, %struct.cam_data** %2, align 8
  %3 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %4 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %3, i32 0, i32 7
  %5 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %4, i32 0, i32 8
  %6 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  store i32 50, i32* %6, align 8
  %7 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %8 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  store i32 48, i32* %10, align 4
  %11 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %12 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %11, i32 0, i32 7
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  store i32 50, i32* %14, align 8
  %15 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %16 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 12
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %20 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 12
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  store i32 2, i32* %22, align 4
  %23 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %24 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 12
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 2
  store i32 1, i32* %26, align 8
  %27 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %28 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 12
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %32 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 12
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 11
  store i64 0, i64* %34, align 8
  %35 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %36 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 12
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 10
  store i64 0, i64* %38, align 8
  %39 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %40 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 12
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 4
  store i32 185, i32* %42, align 8
  %43 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %44 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 12
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 9
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @COMP_RED, align 4
  %48 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %49 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 12
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 8
  store i32 %47, i32* %51, align 8
  %52 = load i32, i32* @COMP_GREEN1, align 4
  %53 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %54 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 12
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 7
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @COMP_GREEN2, align 4
  %58 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %59 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 12
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 6
  store i32 %57, i32* %61, align 8
  %62 = load i32, i32* @COMP_BLUE, align 4
  %63 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %64 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 12
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 5
  store i32 %62, i32* %66, align 4
  %67 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %68 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 11
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  store i32 2, i32* %70, align 8
  %71 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %72 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 11
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 1
  store i32 32, i32* %74, align 4
  %75 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %76 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 11
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 2
  store i32 6, i32* %78, align 8
  %79 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %80 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 11
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 3
  store i32 92, i32* %82, align 4
  %83 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %84 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 10
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  store i32 24, i32* %86, align 8
  %87 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %88 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 10
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  store i32 22, i32* %90, align 4
  %91 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %92 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 10
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 2
  store i32 36, i32* %94, align 8
  %95 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %96 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 10
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 3
  store i32 52, i32* %98, align 4
  %99 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %100 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  %103 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %104 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load i32***, i32**** @flicker_jumps, align 8
  %108 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %109 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32**, i32*** %107, i64 %110
  %112 = load i32**, i32*** %111, align 8
  %113 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %114 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32*, i32** %112, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %121 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %128 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 9
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 2
  store i32 %126, i32* %130, align 8
  %131 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %132 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @find_over_exposure(i32 %135)
  %137 = sub nsw i32 0, %136
  %138 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %139 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 9
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 1
  store i32 %137, i32* %141, align 4
  %142 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %143 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  store i32 20, i32* %145, align 8
  %146 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %147 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %146, i32 0, i32 7
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 1
  store i32 24, i32* %149, align 4
  %150 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %151 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %150, i32 0, i32 7
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 2
  store i32 26, i32* %153, align 8
  %154 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %155 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 7
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 3
  store i32 26, i32* %157, align 4
  %158 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %159 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %158, i32 0, i32 7
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 0
  store i32 3, i32* %161, align 8
  %162 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %163 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 1
  store i32 11, i32* %165, align 4
  %166 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %167 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %166, i32 0, i32 7
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 2
  store i32 1, i32* %169, align 8
  %170 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %171 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %170, i32 0, i32 7
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 3
  store i32 3, i32* %173, align 4
  %174 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %175 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 4
  store i32 2, i32* %177, align 8
  %178 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %179 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 5
  store i32 5, i32* %181, align 4
  %182 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %183 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %182, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 6
  store i32 3, i32* %185, align 8
  %186 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %187 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %186, i32 0, i32 7
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 7
  store i32 2, i32* %189, align 4
  %190 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %191 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %190, i32 0, i32 9
  store i64 0, i64* %191, align 8
  %192 = load i32, i32* @EXPOSURE_NORMAL, align 4
  %193 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %194 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %193, i32 0, i32 8
  store i32 %192, i32* %194, align 8
  %195 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %196 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %195, i32 0, i32 7
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %197, i32 0, i32 1
  store i64 1, i64* %198, align 8
  %199 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %200 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 0
  store i64 1, i64* %202, align 8
  %203 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %204 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 0
  store i32 6, i32* %206, align 8
  %207 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %208 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %209, i32 0, i32 1
  store i32 6, i32* %210, align 4
  %211 = load i32, i32* @SUBSAMPLE_422, align 4
  %212 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %213 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %212, i32 0, i32 7
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %214, i32 0, i32 1
  store i32 %211, i32* %215, align 4
  %216 = load i32, i32* @YUVORDER_YUYV, align 4
  %217 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %218 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %217, i32 0, i32 7
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %219, i32 0, i32 0
  store i32 %216, i32* %220, align 8
  %221 = load i32, i32* @CPIA_COMPRESSION_AUTO, align 4
  %222 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %223 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %222, i32 0, i32 7
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i32 0, i32 0
  store i32 %221, i32* %225, align 4
  %226 = load i32, i32* @CPIA_COMPRESSION_TARGET_QUALITY, align 4
  %227 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %228 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %227, i32 0, i32 7
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 2
  store i32 %226, i32* %230, align 8
  %231 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %232 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %231, i32 0, i32 7
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %233, i32 0, i32 0
  store i32 15, i32* %234, align 8
  %235 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %236 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %235, i32 0, i32 7
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %237, i32 0, i32 1
  store i32 5, i32* %238, align 4
  %239 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %240 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %239, i32 0, i32 7
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %241, i32 0, i32 4
  store i64 0, i64* %242, align 8
  %243 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %244 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %243, i32 0, i32 7
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 3
  store i64 0, i64* %246, align 8
  %247 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %248 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %247, i32 0, i32 7
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %249, i32 0, i32 2
  store i64 0, i64* %250, align 8
  %251 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %252 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %251, i32 0, i32 7
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %253, i32 0, i32 1
  store i64 0, i64* %254, align 8
  %255 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %256 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %255, i32 0, i32 7
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %257, i32 0, i32 0
  store i64 0, i64* %258, align 8
  %259 = load i32, i32* @VIDEOSIZE_CIF, align 4
  %260 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %261 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %260, i32 0, i32 6
  store i32 %259, i32* %261, align 8
  %262 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %263 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %262, i32 0, i32 5
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 0
  store i32 32768, i32* %264, align 8
  %265 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %266 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %265, i32 0, i32 5
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 1
  store i32 32768, i32* %267, align 4
  %268 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %269 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 2
  store i32 32768, i32* %270, align 8
  %271 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %272 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %271, i32 0, i32 5
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 3
  store i32 32768, i32* %273, align 4
  %274 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %275 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 6
  store i64 0, i64* %276, align 8
  %277 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %278 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 4
  store i32 24, i32* %279, align 8
  %280 = load i32, i32* @VIDEO_PALETTE_RGB24, align 4
  %281 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %282 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %281, i32 0, i32 5
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 5
  store i32 %280, i32* %283, align 4
  %284 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %285 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %284, i32 0, i32 4
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 3
  store i64 0, i64* %286, align 8
  %287 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %288 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 2
  store i64 0, i64* %289, align 8
  %290 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %291 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 1
  store i64 0, i64* %292, align 8
  %293 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %294 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %293, i32 0, i32 4
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 0
  store i64 0, i64* %295, align 8
  %296 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %297 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 5
  store i64 0, i64* %298, align 8
  %299 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %300 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %300, i32 0, i32 4
  store i64 0, i64* %301, align 8
  %302 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %303 = call i32 @set_vw_size(%struct.cam_data* %302)
  %304 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %305 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 3
  store i64 0, i64* %306, align 8
  %307 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %308 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 2
  store i64 0, i64* %309, align 8
  %310 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %311 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %310, i32 0, i32 3
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 1
  store i64 0, i64* %312, align 8
  %313 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %314 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i32 0, i32 0
  store i32* null, i32** %315, align 8
  %316 = load i32, i32* @COMMAND_NONE, align 4
  %317 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %318 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %317, i32 0, i32 2
  store i32 %316, i32* %318, align 4
  %319 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %320 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %319, i32 0, i32 1
  store i32 1, i32* %320, align 8
  ret void
}

declare dso_local i32 @find_over_exposure(i32) #1

declare dso_local i32 @set_vw_size(%struct.cam_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
