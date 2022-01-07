; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_ext_control = type { i32, i32 }
%struct.uvc_control = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.uvc_control_mapping = type { i32 (%struct.uvc_control_mapping*, i32, i32)*, i64, i32, %struct.uvc_menu_info* }
%struct.uvc_menu_info = type { i32 }

@UVC_CONTROL_GET_CUR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UVC_GET_CUR = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_CURRENT = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_ctrl_get(%struct.uvc_video_chain* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_chain*, align 8
  %5 = alloca %struct.v4l2_ext_control*, align 8
  %6 = alloca %struct.uvc_control*, align 8
  %7 = alloca %struct.uvc_control_mapping*, align 8
  %8 = alloca %struct.uvc_menu_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %4, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %5, align 8
  %11 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %12 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain* %11, i32 %14, %struct.uvc_control_mapping** %7)
  store %struct.uvc_control* %15, %struct.uvc_control** %6, align 8
  %16 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %17 = icmp eq %struct.uvc_control* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %20 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UVC_CONTROL_GET_CUR, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %115

29:                                               ; preds = %18
  %30 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %31 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %29
  %35 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %36 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* @UVC_GET_CUR, align 4
  %39 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %40 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %45 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %50 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %54 = load i32, i32* @UVC_CTRL_DATA_CURRENT, align 4
  %55 = call i32 @uvc_ctrl_data(%struct.uvc_control* %53, i32 %54)
  %56 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %57 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @uvc_query_ctrl(%struct.TYPE_6__* %37, i32 %38, i32 %43, i32 %48, i32 %52, i32 %55, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %34
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %115

65:                                               ; preds = %34
  %66 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %67 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %29
  %69 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %70 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %69, i32 0, i32 0
  %71 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %70, align 8
  %72 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %73 = load i32, i32* @UVC_GET_CUR, align 4
  %74 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %75 = load i32, i32* @UVC_CTRL_DATA_CURRENT, align 4
  %76 = call i32 @uvc_ctrl_data(%struct.uvc_control* %74, i32 %75)
  %77 = call i32 %71(%struct.uvc_control_mapping* %72, i32 %73, i32 %76)
  %78 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %81 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @V4L2_CTRL_TYPE_MENU, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %68
  %86 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %87 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %86, i32 0, i32 3
  %88 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %87, align 8
  store %struct.uvc_menu_info* %88, %struct.uvc_menu_info** %8, align 8
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %108, %85
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %92 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %8, align 8
  %97 = getelementptr inbounds %struct.uvc_menu_info, %struct.uvc_menu_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %100 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %106 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %113

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %9, align 4
  %111 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %8, align 8
  %112 = getelementptr inbounds %struct.uvc_menu_info, %struct.uvc_menu_info* %111, i32 1
  store %struct.uvc_menu_info* %112, %struct.uvc_menu_info** %8, align 8
  br label %89

113:                                              ; preds = %103, %89
  br label %114

114:                                              ; preds = %113, %68
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %63, %26
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain*, i32, %struct.uvc_control_mapping**) #1

declare dso_local i32 @uvc_query_ctrl(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uvc_ctrl_data(%struct.uvc_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
