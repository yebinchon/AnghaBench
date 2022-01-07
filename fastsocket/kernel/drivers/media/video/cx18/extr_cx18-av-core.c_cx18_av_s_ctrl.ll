; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_cx18_av_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_cx18_av_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.cx18 = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"invalid brightness setting %d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid contrast setting %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid saturation setting %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"invalid hue setting %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @cx18_av_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_av_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.cx18*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.cx18* %8, %struct.cx18** %6, align 8
  %9 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %121 [
    i32 131, label %12
    i32 130, label %37
    i32 128, label %62
    i32 129, label %93
    i32 132, label %117
    i32 135, label %117
    i32 133, label %117
    i32 136, label %117
    i32 134, label %117
  ]

12:                                               ; preds = %2
  %13 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 255
  br i1 %21, label %22, label %30

22:                                               ; preds = %17, %12
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CX18_ERR_DEV(%struct.v4l2_subdev* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ERANGE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %125

30:                                               ; preds = %17
  %31 = load %struct.cx18*, %struct.cx18** %6, align 8
  %32 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 128
  %36 = call i32 @cx18_av_write(%struct.cx18* %31, i32 1044, i32 %35)
  br label %124

37:                                               ; preds = %2
  %38 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 127
  br i1 %46, label %47, label %55

47:                                               ; preds = %42, %37
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %49 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @CX18_ERR_DEV(%struct.v4l2_subdev* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @ERANGE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %125

55:                                               ; preds = %42
  %56 = load %struct.cx18*, %struct.cx18** %6, align 8
  %57 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 1
  %61 = call i32 @cx18_av_write(%struct.cx18* %56, i32 1045, i32 %60)
  br label %124

62:                                               ; preds = %2
  %63 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 127
  br i1 %71, label %72, label %80

72:                                               ; preds = %67, %62
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %74 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @CX18_ERR_DEV(%struct.v4l2_subdev* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ERANGE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %125

80:                                               ; preds = %67
  %81 = load %struct.cx18*, %struct.cx18** %6, align 8
  %82 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 1
  %86 = call i32 @cx18_av_write(%struct.cx18* %81, i32 1056, i32 %85)
  %87 = load %struct.cx18*, %struct.cx18** %6, align 8
  %88 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 1
  %92 = call i32 @cx18_av_write(%struct.cx18* %87, i32 1057, i32 %91)
  br label %124

93:                                               ; preds = %2
  %94 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %96, -128
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %100 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 127
  br i1 %102, label %103, label %111

103:                                              ; preds = %98, %93
  %104 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %105 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %106 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @CX18_ERR_DEV(%struct.v4l2_subdev* %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @ERANGE, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %125

111:                                              ; preds = %98
  %112 = load %struct.cx18*, %struct.cx18** %6, align 8
  %113 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %114 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @cx18_av_write(%struct.cx18* %112, i32 1058, i32 %115)
  br label %124

117:                                              ; preds = %2, %2, %2, %2, %2
  %118 = load %struct.cx18*, %struct.cx18** %6, align 8
  %119 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %120 = call i32 @cx18_av_audio_s_ctrl(%struct.cx18* %118, %struct.v4l2_control* %119)
  store i32 %120, i32* %3, align 4
  br label %125

121:                                              ; preds = %2
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %125

124:                                              ; preds = %111, %80, %55, %30
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %121, %117, %103, %72, %47, %22
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @CX18_ERR_DEV(%struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @cx18_av_write(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_av_audio_s_ctrl(%struct.cx18*, %struct.v4l2_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
