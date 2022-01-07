; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cx2341x.c_cx2341x_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cx2341x.c_cx2341x_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2341x_mpeg_params = type { i64, i64, i64 }
%struct.v4l2_ext_controls = type { i32, i32, %struct.v4l2_ext_control* }
%struct.v4l2_ext_control = type { i32 }
%struct.v4l2_queryctrl = type { i64, i32 }

@VIDIOC_G_EXT_CTRLS = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i64 0, align 8
@V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx2341x_ext_ctrls(%struct.cx2341x_mpeg_params* %0, i32 %1, %struct.v4l2_ext_controls* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx2341x_mpeg_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_ext_controls*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_ext_control*, align 8
  %13 = alloca %struct.v4l2_ext_control*, align 8
  %14 = alloca %struct.v4l2_queryctrl, align 8
  %15 = alloca i8**, align 8
  store %struct.cx2341x_mpeg_params* %0, %struct.cx2341x_mpeg_params** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @VIDIOC_G_EXT_CTRLS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %23 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %28 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %27, i32 0, i32 2
  %29 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %29, i64 %31
  store %struct.v4l2_ext_control* %32, %struct.v4l2_ext_control** %12, align 8
  %33 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %6, align 8
  %34 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %12, align 8
  %35 = call i32 @cx2341x_get_ctrl(%struct.cx2341x_mpeg_params* %33, %struct.v4l2_ext_control* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %46

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %20

46:                                               ; preds = %38, %20
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %137

48:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %97, %48
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %52 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %100

55:                                               ; preds = %49
  %56 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %57 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %56, i32 0, i32 2
  %58 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %58, i64 %60
  store %struct.v4l2_ext_control* %61, %struct.v4l2_ext_control** %13, align 8
  store i8** null, i8*** %15, align 8
  %62 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %13, align 8
  %63 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %14, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %6, align 8
  %67 = call i32 @cx2341x_ctrl_query(%struct.cx2341x_mpeg_params* %66, %struct.v4l2_queryctrl* %14)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %100

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %14, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @V4L2_CTRL_TYPE_MENU, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %6, align 8
  %78 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %14, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i8** @cx2341x_ctrl_get_menu(%struct.cx2341x_mpeg_params* %77, i32 %79)
  store i8** %80, i8*** %15, align 8
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %13, align 8
  %83 = load i8**, i8*** %15, align 8
  %84 = call i32 @v4l2_ctrl_check(%struct.v4l2_ext_control* %82, %struct.v4l2_queryctrl* %14, i8** %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %100

88:                                               ; preds = %81
  %89 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %13, align 8
  %92 = call i32 @cx2341x_set_ctrl(%struct.cx2341x_mpeg_params* %89, i32 %90, %struct.v4l2_ext_control* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %100

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %49

100:                                              ; preds = %95, %87, %70, %49
  %101 = load i32, i32* %10, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %100
  %104 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %6, align 8
  %105 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %103
  %110 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %6, align 8
  %111 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %6, align 8
  %114 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %109
  %118 = load i32, i32* @ERANGE, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %10, align 4
  %120 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %121 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %124 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %117, %109, %103, %100
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %131 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %135

132:                                              ; preds = %125
  %133 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %6, align 8
  %134 = call i32 @cx2341x_calc_audio_properties(%struct.cx2341x_mpeg_params* %133)
  br label %135

135:                                              ; preds = %132, %128
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %135, %46
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @cx2341x_get_ctrl(%struct.cx2341x_mpeg_params*, %struct.v4l2_ext_control*) #1

declare dso_local i32 @cx2341x_ctrl_query(%struct.cx2341x_mpeg_params*, %struct.v4l2_queryctrl*) #1

declare dso_local i8** @cx2341x_ctrl_get_menu(%struct.cx2341x_mpeg_params*, i32) #1

declare dso_local i32 @v4l2_ctrl_check(%struct.v4l2_ext_control*, %struct.v4l2_queryctrl*, i8**) #1

declare dso_local i32 @cx2341x_set_ctrl(%struct.cx2341x_mpeg_params*, i32, %struct.v4l2_ext_control*) #1

declare dso_local i32 @cx2341x_calc_audio_properties(%struct.cx2341x_mpeg_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
