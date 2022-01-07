; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.tvp514x_decoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_BRIGHTNESS = common dso_local global i64 0, align 8
@REG_CONTRAST = common dso_local global i64 0, align 8
@REG_SATURATION = common dso_local global i64 0, align 8
@REG_HUE = common dso_local global i64 0, align 8
@REG_AFE_GAIN_CTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"invalid control id %d\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Get Control: ID - %d - %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @tvp514x_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_g_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.tvp514x_decoder*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev* %7)
  store %struct.tvp514x_decoder* %8, %struct.tvp514x_decoder** %6, align 8
  %9 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %10 = icmp eq %struct.v4l2_control* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %118

14:                                               ; preds = %2
  %15 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %100 [
    i32 131, label %18
    i32 130, label %28
    i32 128, label %38
    i32 129, label %48
    i32 132, label %78
  ]

18:                                               ; preds = %14
  %19 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %20 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @REG_BRIGHTNESS, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %108

28:                                               ; preds = %14
  %29 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %30 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* @REG_CONTRAST, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %108

38:                                               ; preds = %14
  %39 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %40 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* @REG_SATURATION, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %108

48:                                               ; preds = %14
  %49 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %50 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* @REG_HUE, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %59 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 127
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %63, i32 0, i32 1
  store i32 180, i32* %64, align 4
  br label %77

65:                                               ; preds = %48
  %66 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %67 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 128
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %71, i32 0, i32 1
  store i32 -180, i32* %72, align 4
  br label %76

73:                                               ; preds = %65
  %74 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %62
  br label %108

78:                                               ; preds = %14
  %79 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %80 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* @REG_AFE_GAIN_CTRL, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 3
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  br label %99

96:                                               ; preds = %78
  %97 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %98 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %97, i32 0, i32 1
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %93
  br label %108

100:                                              ; preds = %14
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %102 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %103 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @v4l2_err(%struct.v4l2_subdev* %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %118

108:                                              ; preds = %99, %77, %38, %28, %18
  %109 = load i32, i32* @debug, align 4
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %111 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %112 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %115 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @v4l2_dbg(i32 1, i32 %109, %struct.v4l2_subdev* %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %108, %100, %11
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
