; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v022.c_mt9v022_s_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v022.c_mt9v022_s_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_crop = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9v022 = type { i64, i32, %struct.v4l2_rect }

@mt9v022_colour_fmts = common dso_local global i64 0, align 8
@MT9V022_COLUMN_SKIP = common dso_local global i32 0, align 4
@MT9V022_MIN_WIDTH = common dso_local global i32 0, align 4
@MT9V022_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9V022_ROW_SKIP = common dso_local global i32 0, align 4
@MT9V022_MIN_HEIGHT = common dso_local global i32 0, align 4
@MT9V022_MAX_HEIGHT = common dso_local global i32 0, align 4
@MT9V022_AEC_AGC_ENABLE = common dso_local global i32 0, align 4
@MT9V022_MAX_TOTAL_SHUTTER_WIDTH = common dso_local global i32 0, align 4
@MT9V022_TOTAL_SHUTTER_WIDTH = common dso_local global i32 0, align 4
@MT9V022_COLUMN_START = common dso_local global i32 0, align 4
@MT9V022_ROW_START = common dso_local global i32 0, align 4
@MT9V022_HORIZONTAL_BLANKING = common dso_local global i32 0, align 4
@MT9V022_VERTICAL_BLANKING = common dso_local global i32 0, align 4
@MT9V022_WINDOW_WIDTH = common dso_local global i32 0, align 4
@MT9V022_WINDOW_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Frame %dx%d pixel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_crop*)* @mt9v022_s_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v022_s_crop(%struct.v4l2_subdev* %0, %struct.v4l2_crop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_crop*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.mt9v022*, align 8
  %8 = alloca %struct.v4l2_rect, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_crop* %1, %struct.v4l2_crop** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.mt9v022* @to_mt9v022(%struct.i2c_client* %12)
  store %struct.mt9v022* %13, %struct.mt9v022** %7, align 8
  %14 = load %struct.v4l2_crop*, %struct.v4l2_crop** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %14, i32 0, i32 0
  %16 = bitcast %struct.v4l2_rect* %8 to i8*
  %17 = bitcast %struct.v4l2_rect* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 16, i1 false)
  %18 = load %struct.mt9v022*, %struct.mt9v022** %7, align 8
  %19 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @mt9v022_colour_fmts, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @ALIGN(i32 %25, i32 2)
  %27 = ptrtoint i8* %26 to i32
  %28 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ALIGN(i32 %30, i32 2)
  %32 = ptrtoint i8* %31 to i32
  %33 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %23, %2
  %35 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 2
  %36 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 0
  %37 = load i32, i32* @MT9V022_COLUMN_SKIP, align 4
  %38 = load i32, i32* @MT9V022_MIN_WIDTH, align 4
  %39 = load i32, i32* @MT9V022_MAX_WIDTH, align 4
  %40 = call i32 @soc_camera_limit_side(i32* %35, i32* %36, i32 %37, i32 %38, i32 %39)
  %41 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 3
  %42 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 1
  %43 = load i32, i32* @MT9V022_ROW_SKIP, align 4
  %44 = load i32, i32* @MT9V022_MIN_HEIGHT, align 4
  %45 = load i32, i32* @MT9V022_MAX_HEIGHT, align 4
  %46 = call i32 @soc_camera_limit_side(i32* %41, i32* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %48 = load i32, i32* @MT9V022_AEC_AGC_ENABLE, align 4
  %49 = call i32 @reg_read(%struct.i2c_client* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %34
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %58 = load i32, i32* @MT9V022_MAX_TOTAL_SHUTTER_WIDTH, align 4
  %59 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mt9v022*, %struct.mt9v022** %7, align 8
  %62 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %60, %63
  %65 = add nsw i32 %64, 43
  %66 = call i32 @reg_write(%struct.i2c_client* %57, i32 %58, i32 %65)
  store i32 %66, i32* %9, align 4
  br label %78

67:                                               ; preds = %52
  %68 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %69 = load i32, i32* @MT9V022_TOTAL_SHUTTER_WIDTH, align 4
  %70 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mt9v022*, %struct.mt9v022** %7, align 8
  %73 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %71, %74
  %76 = add nsw i32 %75, 43
  %77 = call i32 @reg_write(%struct.i2c_client* %68, i32 %69, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %67, %56
  br label %79

79:                                               ; preds = %78, %34
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %84 = load i32, i32* @MT9V022_COLUMN_START, align 4
  %85 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @reg_write(%struct.i2c_client* %83, i32 %84, i32 %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %82, %79
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %93 = load i32, i32* @MT9V022_ROW_START, align 4
  %94 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @reg_write(%struct.i2c_client* %92, i32 %93, i32 %95)
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %97
  %101 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %102 = load i32, i32* @MT9V022_HORIZONTAL_BLANKING, align 4
  %103 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 617
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %111

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 660, %109
  br label %111

111:                                              ; preds = %107, %106
  %112 = phi i32 [ 43, %106 ], [ %110, %107 ]
  %113 = call i32 @reg_write(%struct.i2c_client* %101, i32 %102, i32 %112)
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %111, %97
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %119 = load i32, i32* @MT9V022_VERTICAL_BLANKING, align 4
  %120 = call i32 @reg_write(%struct.i2c_client* %118, i32 %119, i32 45)
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %126 = load i32, i32* @MT9V022_WINDOW_WIDTH, align 4
  %127 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @reg_write(%struct.i2c_client* %125, i32 %126, i32 %128)
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %124, %121
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %130
  %134 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %135 = load i32, i32* @MT9V022_WINDOW_HEIGHT, align 4
  %136 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.mt9v022*, %struct.mt9v022** %7, align 8
  %139 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %137, %140
  %142 = call i32 @reg_write(%struct.i2c_client* %134, i32 %135, i32 %141)
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %133, %130
  %144 = load i32, i32* %9, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %3, align 4
  br label %160

148:                                              ; preds = %143
  %149 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @dev_dbg(i32* %150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %152, i32 %154)
  %156 = load %struct.mt9v022*, %struct.mt9v022** %7, align 8
  %157 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %156, i32 0, i32 2
  %158 = bitcast %struct.v4l2_rect* %157 to i8*
  %159 = bitcast %struct.v4l2_rect* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %158, i8* align 4 %159, i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %148, %146
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9v022* @to_mt9v022(%struct.i2c_client*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @soc_camera_limit_side(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
