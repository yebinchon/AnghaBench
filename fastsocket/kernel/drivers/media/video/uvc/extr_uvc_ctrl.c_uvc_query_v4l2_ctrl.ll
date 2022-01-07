; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_query_v4l2_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_query_v4l2_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uvc_control = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.uvc_control_mapping = type { i32, i32 (%struct.uvc_control_mapping*, i32, i32)*, i32, %struct.uvc_menu_info*, i32, i32 }
%struct.uvc_menu_info = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UVC_CONTROL_GET_CUR = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_WRITE_ONLY = common dso_local global i32 0, align 4
@UVC_CONTROL_SET_CUR = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@UVC_CONTROL_GET_DEF = common dso_local global i32 0, align 4
@UVC_GET_DEF = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_DEF = common dso_local global i32 0, align 4
@UVC_CONTROL_GET_MIN = common dso_local global i32 0, align 4
@UVC_GET_MIN = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_MIN = common dso_local global i32 0, align 4
@UVC_CONTROL_GET_MAX = common dso_local global i32 0, align 4
@UVC_GET_MAX = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_MAX = common dso_local global i32 0, align 4
@UVC_CONTROL_GET_RES = common dso_local global i32 0, align 4
@UVC_GET_RES = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_RES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_query_v4l2_ctrl(%struct.uvc_video_chain* %0, %struct.v4l2_queryctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_chain*, align 8
  %5 = alloca %struct.v4l2_queryctrl*, align 8
  %6 = alloca %struct.uvc_control*, align 8
  %7 = alloca %struct.uvc_control_mapping*, align 8
  %8 = alloca %struct.uvc_menu_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %4, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %5, align 8
  %11 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %12 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock_interruptible(i32* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ERESTARTSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %236

19:                                               ; preds = %2
  %20 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %21 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain* %20, i32 %23, %struct.uvc_control_mapping** %7)
  store %struct.uvc_control* %24, %struct.uvc_control** %6, align 8
  %25 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %26 = icmp eq %struct.uvc_control* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  br label %231

30:                                               ; preds = %19
  %31 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %32 = call i32 @memset(%struct.v4l2_queryctrl* %31, i32 0, i32 32)
  %33 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %34 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %39 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %47 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @strlcpy(i32 %45, i32 %48, i32 4)
  %50 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %50, i32 0, i32 5
  store i32 0, i32* %51, align 4
  %52 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %53 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @UVC_CONTROL_GET_CUR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %30
  %60 = load i32, i32* @V4L2_CTRL_FLAG_WRITE_ONLY, align 4
  %61 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %30
  %66 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %67 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @UVC_CONTROL_SET_CUR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %75 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %65
  %80 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %81 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %86 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %87 = call i32 @uvc_ctrl_populate_cache(%struct.uvc_video_chain* %85, %struct.uvc_control* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %231

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %79
  %93 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %94 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @UVC_CONTROL_GET_DEF, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %92
  %101 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %102 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %101, i32 0, i32 1
  %103 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %102, align 8
  %104 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %105 = load i32, i32* @UVC_GET_DEF, align 4
  %106 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %107 = load i32, i32* @UVC_CTRL_DATA_DEF, align 4
  %108 = call i32 @uvc_ctrl_data(%struct.uvc_control* %106, i32 %107)
  %109 = call i32 %103(%struct.uvc_control_mapping* %104, i32 %105, i32 %108)
  %110 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %111 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %100, %92
  %113 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %114 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %169 [
    i32 128, label %116
    i32 130, label %155
    i32 129, label %162
  ]

116:                                              ; preds = %112
  %117 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %118 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %117, i32 0, i32 2
  store i32 0, i32* %118, align 4
  %119 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %120 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sub i32 %121, 1
  %123 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %124 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %126 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %125, i32 0, i32 4
  store i32 1, i32* %126, align 4
  %127 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %128 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %127, i32 0, i32 3
  %129 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %128, align 8
  store %struct.uvc_menu_info* %129, %struct.uvc_menu_info** %8, align 8
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %149, %116
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %133 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ult i32 %131, %134
  br i1 %135, label %136, label %154

136:                                              ; preds = %130
  %137 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %8, align 8
  %138 = getelementptr inbounds %struct.uvc_menu_info, %struct.uvc_menu_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %141 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %139, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %147 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  br label %154

148:                                              ; preds = %136
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %9, align 4
  %152 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %8, align 8
  %153 = getelementptr inbounds %struct.uvc_menu_info, %struct.uvc_menu_info* %152, i32 1
  store %struct.uvc_menu_info* %153, %struct.uvc_menu_info** %8, align 8
  br label %130

154:                                              ; preds = %144, %130
  br label %231

155:                                              ; preds = %112
  %156 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %157 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %156, i32 0, i32 2
  store i32 0, i32* %157, align 4
  %158 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %159 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %158, i32 0, i32 3
  store i32 1, i32* %159, align 4
  %160 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %161 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %160, i32 0, i32 4
  store i32 1, i32* %161, align 4
  br label %231

162:                                              ; preds = %112
  %163 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %164 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %163, i32 0, i32 2
  store i32 0, i32* %164, align 4
  %165 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %166 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %165, i32 0, i32 3
  store i32 0, i32* %166, align 4
  %167 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %168 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %167, i32 0, i32 4
  store i32 0, i32* %168, align 4
  br label %231

169:                                              ; preds = %112
  br label %170

170:                                              ; preds = %169
  %171 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %172 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @UVC_CONTROL_GET_MIN, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %170
  %179 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %180 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %179, i32 0, i32 1
  %181 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %180, align 8
  %182 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %183 = load i32, i32* @UVC_GET_MIN, align 4
  %184 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %185 = load i32, i32* @UVC_CTRL_DATA_MIN, align 4
  %186 = call i32 @uvc_ctrl_data(%struct.uvc_control* %184, i32 %185)
  %187 = call i32 %181(%struct.uvc_control_mapping* %182, i32 %183, i32 %186)
  %188 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %189 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %178, %170
  %191 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %192 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @UVC_CONTROL_GET_MAX, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %190
  %199 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %200 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %199, i32 0, i32 1
  %201 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %200, align 8
  %202 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %203 = load i32, i32* @UVC_GET_MAX, align 4
  %204 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %205 = load i32, i32* @UVC_CTRL_DATA_MAX, align 4
  %206 = call i32 @uvc_ctrl_data(%struct.uvc_control* %204, i32 %205)
  %207 = call i32 %201(%struct.uvc_control_mapping* %202, i32 %203, i32 %206)
  %208 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %209 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  br label %210

210:                                              ; preds = %198, %190
  %211 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %212 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @UVC_CONTROL_GET_RES, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %210
  %219 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %220 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %219, i32 0, i32 1
  %221 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %220, align 8
  %222 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %223 = load i32, i32* @UVC_GET_RES, align 4
  %224 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %225 = load i32, i32* @UVC_CTRL_DATA_RES, align 4
  %226 = call i32 @uvc_ctrl_data(%struct.uvc_control* %224, i32 %225)
  %227 = call i32 %221(%struct.uvc_control_mapping* %222, i32 %223, i32 %226)
  %228 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %229 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %228, i32 0, i32 4
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %218, %210
  br label %231

231:                                              ; preds = %230, %162, %155, %154, %90, %27
  %232 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %233 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %232, i32 0, i32 0
  %234 = call i32 @mutex_unlock(i32* %233)
  %235 = load i32, i32* %10, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %231, %16
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain*, i32, %struct.uvc_control_mapping**) #1

declare dso_local i32 @memset(%struct.v4l2_queryctrl*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @uvc_ctrl_populate_cache(%struct.uvc_video_chain*, %struct.uvc_control*) #1

declare dso_local i32 @uvc_ctrl_data(%struct.uvc_control*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
