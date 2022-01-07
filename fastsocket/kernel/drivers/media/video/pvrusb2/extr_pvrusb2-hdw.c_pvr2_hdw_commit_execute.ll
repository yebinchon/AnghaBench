; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_commit_execute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_commit_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i32, i32, i64, i64, i32, i64, i64, i32, i64, i32, i64, i64, i32, i32, i32, i32, i64, %struct.pvr2_ctrl*, i64, i64, %struct.TYPE_4__*, %struct.TYPE_6__, i64, i32, i64, i64, i64 }
%struct.pvr2_ctrl = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.pvr2_ctrl*)* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_ext_controls = type { i32, i32, i32, %struct.v4l2_ext_controls* }
%struct.v4l2_ext_control = type { i32, i32, i32, %struct.v4l2_ext_control* }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_GOP_SIZE = common dso_local global i32 0, align 4
@VIDIOC_S_EXT_CTRLS = common dso_local global i32 0, align 4
@PVR2_CVAL_INPUT_DTV = common dso_local global i64 0, align 8
@PVR2_PATHWAY_DIGITAL = common dso_local global i64 0, align 8
@PVR2_PATHWAY_ANALOG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"state_pathway_ok\00", align 1
@V4L2_CID_MPEG_AUDIO_SAMPLING_FREQ = common dso_local global i32 0, align 4
@PVR2_ROUTING_SCHEME_GOTVIEW = common dso_local global i64 0, align 8
@PVR2_CVAL_INPUT_RADIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"state_pipeline_config\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*)* @pvr2_hdw_commit_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_hdw_commit_execute(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_ext_controls, align 8
  %10 = alloca %struct.v4l2_ext_control, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_ext_controls, align 8
  %13 = alloca %struct.v4l2_ext_control, align 8
  %14 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  %15 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %16 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %15, i32 0, i32 28
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %1
  %20 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %21 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @V4L2_STD_525_60, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 480, i32* %7, align 4
  store i32 15, i32* %8, align 4
  br label %28

27:                                               ; preds = %19
  store i32 576, i32* %7, align 4
  store i32 12, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %31 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %37 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %39 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %38, i32 0, i32 2
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %43 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %42, i32 0, i32 23
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %41, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = call i32 @memset(%struct.v4l2_ext_controls* %9, i32 0, i32 24)
  %49 = bitcast %struct.v4l2_ext_control* %10 to %struct.v4l2_ext_controls*
  %50 = call i32 @memset(%struct.v4l2_ext_controls* %49, i32 0, i32 24)
  %51 = bitcast %struct.v4l2_ext_control* %10 to %struct.v4l2_ext_controls*
  %52 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %9, i32 0, i32 3
  store %struct.v4l2_ext_controls* %51, %struct.v4l2_ext_controls** %52, align 8
  %53 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %9, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load i32, i32* @V4L2_CID_MPEG_VIDEO_GOP_SIZE, align 4
  %55 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %10, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %10, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %59 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %58, i32 0, i32 23
  %60 = load i32, i32* @VIDIOC_S_EXT_CTRLS, align 4
  %61 = call i32 @cx2341x_ext_ctrls(%struct.TYPE_6__* %59, i32 0, %struct.v4l2_ext_controls* %9, i32 %60)
  br label %62

62:                                               ; preds = %47, %40
  br label %63

63:                                               ; preds = %62, %1
  %64 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %65 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %64, i32 0, i32 26
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %63
  %69 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %70 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %68
  %74 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %75 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PVR2_CVAL_INPUT_DTV, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i64, i64* @PVR2_PATHWAY_DIGITAL, align 8
  br label %83

81:                                               ; preds = %73
  %82 = load i64, i64* @PVR2_PATHWAY_ANALOG, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i64 [ %80, %79 ], [ %82, %81 ]
  %85 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %86 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %91 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %90, i32 0, i32 3
  store i32 0, i32* %91, align 4
  %92 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %93 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @trace_stbit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %89, %83, %68, %63
  %97 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %98 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %369

102:                                              ; preds = %96
  %103 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %104 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %102
  %108 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %109 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %112 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %111, i32 0, i32 8
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %110, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %117 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %120 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %119, i32 0, i32 7
  store i64 %118, i64* %120, align 8
  %121 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %122 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %121, i32 0, i32 9
  store i32 1, i32* %122, align 8
  br label %139

123:                                              ; preds = %107, %102
  %124 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %125 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %130 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %129, i32 0, i32 6
  store i32 1, i32* %130, align 8
  %131 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %132 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = call i8* @min(i32 720, i64 %133)
  %135 = ptrtoint i8* %134 to i64
  %136 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %137 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %136, i32 0, i32 8
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %128, %123
  br label %139

139:                                              ; preds = %138, %115
  %140 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %141 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %139
  %145 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %146 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %145, i32 0, i32 10
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %149 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp slt i64 %147, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %144
  %154 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %155 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %159 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %158, i32 0, i32 10
  store i64 %157, i64* %159, align 8
  %160 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %161 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %160, i32 0, i32 11
  store i32 1, i32* %161, align 8
  br label %187

162:                                              ; preds = %144, %139
  %163 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %164 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %163, i32 0, i32 11
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %162
  %168 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %169 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @V4L2_STD_525_60, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 480, i32 576
  store i32 %175, i32* %11, align 4
  %176 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %177 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %176, i32 0, i32 2
  store i32 1, i32* %177, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %180 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %179, i32 0, i32 10
  %181 = load i64, i64* %180, align 8
  %182 = call i8* @min(i32 %178, i64 %181)
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %185 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %167, %162
  br label %187

187:                                              ; preds = %186, %153
  %188 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %189 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %188, i32 0, i32 28
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %235, label %192

192:                                              ; preds = %187
  %193 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %194 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %193, i32 0, i32 27
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %235, label %197

197:                                              ; preds = %192
  %198 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %199 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %198, i32 0, i32 24
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %235, label %202

202:                                              ; preds = %197
  %203 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %204 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %235, label %207

207:                                              ; preds = %202
  %208 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %209 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %235, label %212

212:                                              ; preds = %207
  %213 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %214 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %213, i32 0, i32 9
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %235, label %217

217:                                              ; preds = %212
  %218 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %219 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %218, i32 0, i32 11
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %235, label %222

222:                                              ; preds = %217
  %223 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %224 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %223, i32 0, i32 26
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %235, label %227

227:                                              ; preds = %222
  %228 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %229 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %228, i32 0, i32 12
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %232 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %231, i32 0, i32 13
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %230, %233
  br label %235

235:                                              ; preds = %227, %222, %217, %212, %207, %202, %197, %192, %187
  %236 = phi i1 [ true, %222 ], [ true, %217 ], [ true, %212 ], [ true, %207 ], [ true, %202 ], [ true, %197 ], [ true, %192 ], [ true, %187 ], [ %234, %227 ]
  %237 = zext i1 %236 to i32
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %235
  %241 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %242 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %241, i32 0, i32 25
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %240
  %246 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %247 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %246, i32 0, i32 14
  store i32 1, i32* %247, align 8
  store i32 0, i32* %2, align 4
  br label %369

248:                                              ; preds = %240, %235
  %249 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %250 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %249, i32 0, i32 24
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %270

253:                                              ; preds = %248
  %254 = call i32 @memset(%struct.v4l2_ext_controls* %12, i32 0, i32 24)
  %255 = bitcast %struct.v4l2_ext_control* %13 to %struct.v4l2_ext_controls*
  %256 = call i32 @memset(%struct.v4l2_ext_controls* %255, i32 0, i32 24)
  %257 = bitcast %struct.v4l2_ext_control* %13 to %struct.v4l2_ext_controls*
  %258 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %12, i32 0, i32 3
  store %struct.v4l2_ext_controls* %257, %struct.v4l2_ext_controls** %258, align 8
  %259 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %12, i32 0, i32 0
  store i32 1, i32* %259, align 8
  %260 = load i32, i32* @V4L2_CID_MPEG_AUDIO_SAMPLING_FREQ, align 4
  %261 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %13, i32 0, i32 2
  store i32 %260, i32* %261, align 8
  %262 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %263 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %262, i32 0, i32 15
  %264 = load i32, i32* %263, align 4
  %265 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %13, i32 0, i32 1
  store i32 %264, i32* %265, align 4
  %266 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %267 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %266, i32 0, i32 23
  %268 = load i32, i32* @VIDIOC_S_EXT_CTRLS, align 4
  %269 = call i32 @cx2341x_ext_ctrls(%struct.TYPE_6__* %267, i32 0, %struct.v4l2_ext_controls* %12, i32 %268)
  br label %270

270:                                              ; preds = %253, %248
  %271 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %272 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %271, i32 0, i32 12
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %275 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %274, i32 0, i32 13
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %273, %276
  br i1 %277, label %278, label %284

278:                                              ; preds = %270
  %279 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %280 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %279, i32 0, i32 13
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %283 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %282, i32 0, i32 12
  store i64 %281, i64* %283, align 8
  br label %284

284:                                              ; preds = %278, %270
  %285 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %286 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %285, i32 0, i32 22
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @PVR2_ROUTING_SCHEME_GOTVIEW, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %307

292:                                              ; preds = %284
  %293 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %294 = call i32 @pvr2_hdw_gpio_get_out(%struct.pvr2_hdw* %293, i32* %14)
  %295 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %296 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %295, i32 0, i32 4
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @PVR2_CVAL_INPUT_RADIO, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %292
  %301 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %302 = call i32 @pvr2_hdw_gpio_chg_out(%struct.pvr2_hdw* %301, i32 2048, i32 -1)
  br label %306

303:                                              ; preds = %292
  %304 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %305 = call i32 @pvr2_hdw_gpio_chg_out(%struct.pvr2_hdw* %304, i32 2048, i32 0)
  br label %306

306:                                              ; preds = %303, %300
  br label %307

307:                                              ; preds = %306, %284
  %308 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %309 = call i32 @pvr2_subdev_update(%struct.pvr2_hdw* %308)
  %310 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %311 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %310, i32 0, i32 21
  store i64 0, i64* %311, align 8
  %312 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %313 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %312, i32 0, i32 20
  store i64 0, i64* %313, align 8
  store i32 0, i32* %4, align 4
  br label %314

314:                                              ; preds = %342, %307
  %315 = load i32, i32* %4, align 4
  %316 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %317 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %316, i32 0, i32 16
  %318 = load i32, i32* %317, align 8
  %319 = icmp ult i32 %315, %318
  br i1 %319, label %320, label %345

320:                                              ; preds = %314
  %321 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %322 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %321, i32 0, i32 19
  %323 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %322, align 8
  %324 = load i32, i32* %4, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %323, i64 %325
  store %struct.pvr2_ctrl* %326, %struct.pvr2_ctrl** %5, align 8
  %327 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %328 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %327, i32 0, i32 0
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 0
  %331 = load i32 (%struct.pvr2_ctrl*)*, i32 (%struct.pvr2_ctrl*)** %330, align 8
  %332 = icmp ne i32 (%struct.pvr2_ctrl*)* %331, null
  br i1 %332, label %334, label %333

333:                                              ; preds = %320
  br label %342

334:                                              ; preds = %320
  %335 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %336 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %335, i32 0, i32 0
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 0
  %339 = load i32 (%struct.pvr2_ctrl*)*, i32 (%struct.pvr2_ctrl*)** %338, align 8
  %340 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %341 = call i32 %339(%struct.pvr2_ctrl* %340)
  br label %342

342:                                              ; preds = %334, %333
  %343 = load i32, i32* %4, align 4
  %344 = add i32 %343, 1
  store i32 %344, i32* %4, align 4
  br label %314

345:                                              ; preds = %314
  %346 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %347 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %346, i32 0, i32 5
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @PVR2_PATHWAY_ANALOG, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %362

351:                                              ; preds = %345
  %352 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %353 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %352, i32 0, i32 18
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %351
  %357 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %358 = call i64 @pvr2_encoder_adjust(%struct.pvr2_hdw* %357)
  %359 = icmp slt i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %356
  store i32 1, i32* %2, align 4
  br label %369

361:                                              ; preds = %356
  br label %362

362:                                              ; preds = %361, %351, %345
  %363 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %364 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %363, i32 0, i32 17
  store i32 1, i32* %364, align 4
  %365 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %366 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %365, i32 0, i32 17
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @trace_stbit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %367)
  store i32 1, i32* %2, align 4
  br label %369

369:                                              ; preds = %362, %360, %245, %101
  %370 = load i32, i32* %2, align 4
  ret i32 %370
}

declare dso_local i32 @memset(%struct.v4l2_ext_controls*, i32, i32) #1

declare dso_local i32 @cx2341x_ext_ctrls(%struct.TYPE_6__*, i32, %struct.v4l2_ext_controls*, i32) #1

declare dso_local i32 @trace_stbit(i8*, i32) #1

declare dso_local i8* @min(i32, i64) #1

declare dso_local i32 @pvr2_hdw_gpio_get_out(%struct.pvr2_hdw*, i32*) #1

declare dso_local i32 @pvr2_hdw_gpio_chg_out(%struct.pvr2_hdw*, i32, i32) #1

declare dso_local i32 @pvr2_subdev_update(%struct.pvr2_hdw*) #1

declare dso_local i64 @pvr2_encoder_adjust(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
