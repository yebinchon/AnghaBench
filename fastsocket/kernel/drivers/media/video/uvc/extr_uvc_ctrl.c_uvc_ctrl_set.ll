; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_ext_control = type { i32, i32 }
%struct.uvc_control = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.uvc_control_mapping = type { i32, i32 (%struct.uvc_control_mapping*, i32, i32)*, i32, i32, i32 (%struct.uvc_control_mapping*, i32, i32)*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@UVC_CONTROL_SET_CUR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UVC_GET_MIN = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_MIN = common dso_local global i32 0, align 4
@UVC_GET_MAX = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_MAX = common dso_local global i32 0, align 4
@UVC_GET_RES = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_RES = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@UVC_CONTROL_GET_CUR = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_CURRENT = common dso_local global i32 0, align 4
@UVC_GET_CUR = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_BACKUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_ctrl_set(%struct.uvc_video_chain* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_chain*, align 8
  %5 = alloca %struct.v4l2_ext_control*, align 8
  %6 = alloca %struct.uvc_control*, align 8
  %7 = alloca %struct.uvc_control_mapping*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %4, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %5, align 8
  %13 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %14 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain* %13, i32 %16, %struct.uvc_control_mapping** %7)
  store %struct.uvc_control* %17, %struct.uvc_control** %6, align 8
  %18 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %19 = icmp eq %struct.uvc_control* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %22 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UVC_CONTROL_SET_CUR, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20, %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %249

31:                                               ; preds = %20
  %32 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %33 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %147 [
    i32 129, label %35
    i32 130, label %109
    i32 128, label %120
  ]

35:                                               ; preds = %31
  %36 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %37 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %42 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %43 = call i32 @uvc_ctrl_populate_cache(%struct.uvc_video_chain* %41, %struct.uvc_control* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %3, align 4
  br label %249

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %35
  %50 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %51 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %50, i32 0, i32 1
  %52 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %51, align 8
  %53 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %54 = load i32, i32* @UVC_GET_MIN, align 4
  %55 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %56 = load i32, i32* @UVC_CTRL_DATA_MIN, align 4
  %57 = call i32 @uvc_ctrl_data(%struct.uvc_control* %55, i32 %56)
  %58 = call i32 %52(%struct.uvc_control_mapping* %53, i32 %54, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %60 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %59, i32 0, i32 1
  %61 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %60, align 8
  %62 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %63 = load i32, i32* @UVC_GET_MAX, align 4
  %64 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %65 = load i32, i32* @UVC_CTRL_DATA_MAX, align 4
  %66 = call i32 @uvc_ctrl_data(%struct.uvc_control* %64, i32 %65)
  %67 = call i32 %61(%struct.uvc_control_mapping* %62, i32 %63, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %69 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %68, i32 0, i32 1
  %70 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %69, align 8
  %71 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %72 = load i32, i32* @UVC_GET_RES, align 4
  %73 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %74 = load i32, i32* @UVC_CTRL_DATA_RES, align 4
  %75 = call i32 @uvc_ctrl_data(%struct.uvc_control* %73, i32 %74)
  %76 = call i32 %70(%struct.uvc_control_mapping* %71, i32 %72, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %49
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = sdiv i32 %87, 2
  %89 = add nsw i32 %86, %88
  %90 = load i32, i32* %9, align 4
  %91 = sdiv i32 %89, %90
  %92 = load i32, i32* %9, align 4
  %93 = mul nsw i32 %91, %92
  %94 = add nsw i32 %81, %93
  %95 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %98 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i8* @clamp(i32 %99, i32 %100, i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %105 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %107 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %8, align 4
  br label %151

109:                                              ; preds = %31
  %110 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %111 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @clamp(i32 %112, i32 0, i32 1)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %116 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %118 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %8, align 4
  br label %151

120:                                              ; preds = %31
  %121 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %122 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %120
  %126 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %127 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %130 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp sge i32 %128, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %125, %120
  %134 = load i32, i32* @ERANGE, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %249

136:                                              ; preds = %125
  %137 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %138 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %137, i32 0, i32 5
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %141 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %8, align 4
  br label %151

147:                                              ; preds = %31
  %148 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %149 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %147, %136, %109, %80
  %152 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %153 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %218, label %156

156:                                              ; preds = %151
  %157 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %158 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %160, 8
  %162 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %163 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %161, %164
  br i1 %165, label %166, label %218

166:                                              ; preds = %156
  %167 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %168 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @UVC_CONTROL_GET_CUR, align 4
  %172 = and i32 %170, %171
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %166
  %175 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %176 = load i32, i32* @UVC_CTRL_DATA_CURRENT, align 4
  %177 = call i32 @uvc_ctrl_data(%struct.uvc_control* %175, i32 %176)
  %178 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %179 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @memset(i32 %177, i32 0, i32 %181)
  br label %215

183:                                              ; preds = %166
  %184 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %185 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %184, i32 0, i32 0
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = load i32, i32* @UVC_GET_CUR, align 4
  %188 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %189 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %188, i32 0, i32 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %194 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %193, i32 0, i32 0
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %199 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %203 = load i32, i32* @UVC_CTRL_DATA_CURRENT, align 4
  %204 = call i32 @uvc_ctrl_data(%struct.uvc_control* %202, i32 %203)
  %205 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %206 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @uvc_query_ctrl(%struct.TYPE_8__* %186, i32 %187, i32 %192, i32 %197, i32 %201, i32 %204, i32 %208)
  store i32 %209, i32* %12, align 4
  %210 = load i32, i32* %12, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %183
  %213 = load i32, i32* %12, align 4
  store i32 %213, i32* %3, align 4
  br label %249

214:                                              ; preds = %183
  br label %215

215:                                              ; preds = %214, %174
  %216 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %217 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %216, i32 0, i32 0
  store i32 1, i32* %217, align 8
  br label %218

218:                                              ; preds = %215, %156, %151
  %219 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %220 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %235, label %223

223:                                              ; preds = %218
  %224 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %225 = load i32, i32* @UVC_CTRL_DATA_BACKUP, align 4
  %226 = call i32 @uvc_ctrl_data(%struct.uvc_control* %224, i32 %225)
  %227 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %228 = load i32, i32* @UVC_CTRL_DATA_CURRENT, align 4
  %229 = call i32 @uvc_ctrl_data(%struct.uvc_control* %227, i32 %228)
  %230 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %231 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @memcpy(i32 %226, i32 %229, i32 %233)
  br label %235

235:                                              ; preds = %223, %218
  %236 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %237 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %236, i32 0, i32 4
  %238 = load i32 (%struct.uvc_control_mapping*, i32, i32)*, i32 (%struct.uvc_control_mapping*, i32, i32)** %237, align 8
  %239 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %240 = load i32, i32* %8, align 4
  %241 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %242 = load i32, i32* @UVC_CTRL_DATA_CURRENT, align 4
  %243 = call i32 @uvc_ctrl_data(%struct.uvc_control* %241, i32 %242)
  %244 = call i32 %238(%struct.uvc_control_mapping* %239, i32 %240, i32 %243)
  %245 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %246 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %245, i32 0, i32 1
  store i32 1, i32* %246, align 4
  %247 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %248 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %247, i32 0, i32 2
  store i32 1, i32* %248, align 8
  store i32 0, i32* %3, align 4
  br label %249

249:                                              ; preds = %235, %212, %133, %46, %28
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain*, i32, %struct.uvc_control_mapping**) #1

declare dso_local i32 @uvc_ctrl_populate_cache(%struct.uvc_video_chain*, %struct.uvc_control*) #1

declare dso_local i32 @uvc_ctrl_data(%struct.uvc_control*, i32) #1

declare dso_local i8* @clamp(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @uvc_query_ctrl(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
