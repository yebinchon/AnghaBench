; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_set_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.cx18_av_state }
%struct.cx18_av_state = type { i32, i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"decoder set video input %d, audio input %d\0A\00", align 1
@CX18_AV_COMPOSITE1 = common dso_local global i32 0, align 4
@CX18_AV_COMPOSITE8 = common dso_local global i32 0, align 4
@CX18_AV_COMPONENT_LUMA1 = common dso_local global i32 0, align 4
@CX18_AV_COMPONENT_LUMA8 = common dso_local global i32 0, align 4
@CX18_AV_COMPONENT_R_CHROMA4 = common dso_local global i32 0, align 4
@CX18_AV_COMPONENT_R_CHROMA6 = common dso_local global i32 0, align 4
@CX18_AV_COMPONENT_B_CHROMA7 = common dso_local global i32 0, align 4
@CX18_AV_COMPONENT_B_CHROMA8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"0x%06x is not a valid video input!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CX18_AV_SVIDEO_LUMA1 = common dso_local global i32 0, align 4
@CX18_AV_SVIDEO_LUMA8 = common dso_local global i32 0, align 4
@CX18_AV_SVIDEO_CHROMA4 = common dso_local global i32 0, align 4
@CX18_AV_SVIDEO_CHROMA8 = common dso_local global i32 0, align 4
@CX18_AV_SVIDEO_CHROMA7 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"0x%04x is not a valid audio input!\0A\00", align 1
@CXADEC_AFE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*, i32, i32)* @set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_input(%struct.cx18* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx18_av_state*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load %struct.cx18*, %struct.cx18** %5, align 8
  %22 = getelementptr inbounds %struct.cx18, %struct.cx18* %21, i32 0, i32 0
  store %struct.cx18_av_state* %22, %struct.cx18_av_state** %8, align 8
  %23 = load %struct.cx18_av_state*, %struct.cx18_av_state** %8, align 8
  %24 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %23, i32 0, i32 2
  store %struct.v4l2_subdev* %24, %struct.v4l2_subdev** %9, align 8
  %25 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 12, i1 false)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @CX18_DEBUG_INFO_DEV(%struct.v4l2_subdev* %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CX18_AV_COMPOSITE1, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @CX18_AV_COMPOSITE8, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CX18_AV_COMPOSITE1, align 4
  %40 = sub i32 %38, %39
  %41 = add i32 240, %40
  store i32 %41, i32* %11, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 1, i32* %42, align 4
  store i32 0, i32* %13, align 4
  br label %169

43:                                               ; preds = %33, %3
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @CX18_AV_COMPONENT_LUMA1, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %107

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 61440
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 983040
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 15728640
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, -16773121
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @CX18_AV_COMPONENT_LUMA1, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %81, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @CX18_AV_COMPONENT_LUMA8, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %81, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* @CX18_AV_COMPONENT_R_CHROMA4, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @CX18_AV_COMPONENT_R_CHROMA6, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @CX18_AV_COMPONENT_B_CHROMA7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* @CX18_AV_COMPONENT_B_CHROMA8, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77, %73, %69, %65, %61, %57, %47
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @CX18_ERR_DEV(%struct.v4l2_subdev* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %325

87:                                               ; preds = %77
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @CX18_AV_COMPONENT_LUMA1, align 4
  %90 = sub nsw i32 %88, %89
  %91 = ashr i32 %90, 12
  store i32 %91, i32* %11, align 4
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 2, i32* %92, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* @CX18_AV_COMPONENT_R_CHROMA4, align 4
  %95 = sub nsw i32 %93, %94
  %96 = ashr i32 %95, 12
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %11, align 4
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 6, i32* %99, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* @CX18_AV_COMPONENT_B_CHROMA7, align 4
  %102 = sub nsw i32 %100, %101
  %103 = ashr i32 %102, 14
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 5, i32* %106, align 4
  store i32 6, i32* %13, align 4
  br label %168

107:                                              ; preds = %43
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, 240
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, 3840
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, -4081
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %131, label %115

115:                                              ; preds = %107
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* @CX18_AV_SVIDEO_LUMA1, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %131, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* @CX18_AV_SVIDEO_LUMA8, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* @CX18_AV_SVIDEO_CHROMA4, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* @CX18_AV_SVIDEO_CHROMA8, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127, %123, %119, %115, %107
  %132 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @CX18_ERR_DEV(%struct.v4l2_subdev* %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %325

137:                                              ; preds = %127
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* @CX18_AV_SVIDEO_LUMA1, align 4
  %140 = sub nsw i32 %138, %139
  %141 = ashr i32 %140, 4
  %142 = add nsw i32 240, %141
  store i32 %142, i32* %11, align 4
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 2, i32* %143, align 4
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* @CX18_AV_SVIDEO_CHROMA7, align 4
  %146 = icmp sge i32 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %137
  %148 = load i32, i32* %11, align 4
  %149 = and i32 %148, 63
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %20, align 4
  %151 = load i32, i32* @CX18_AV_SVIDEO_CHROMA7, align 4
  %152 = sub nsw i32 %150, %151
  %153 = ashr i32 %152, 2
  %154 = load i32, i32* %11, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %11, align 4
  %156 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 3, i32* %156, align 4
  br label %167

157:                                              ; preds = %137
  %158 = load i32, i32* %11, align 4
  %159 = and i32 %158, 207
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* @CX18_AV_SVIDEO_CHROMA4, align 4
  %162 = sub nsw i32 %160, %161
  %163 = ashr i32 %162, 4
  %164 = load i32, i32* %11, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %11, align 4
  %166 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 3, i32* %166, align 4
  br label %167

167:                                              ; preds = %157, %147
  store i32 2, i32* %13, align 4
  br label %168

168:                                              ; preds = %167, %87
  br label %169

169:                                              ; preds = %168, %37
  %170 = load i32, i32* %7, align 4
  switch i32 %170, label %195 [
    i32 129, label %171
    i32 128, label %171
    i32 134, label %172
    i32 133, label %176
    i32 132, label %181
    i32 131, label %186
    i32 130, label %190
  ]

171:                                              ; preds = %169, %169
  br label %201

172:                                              ; preds = %169
  %173 = load i32, i32* %11, align 4
  %174 = and i32 %173, -49
  store i32 %174, i32* %11, align 4
  %175 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 4, i32* %175, align 4
  br label %201

176:                                              ; preds = %169
  %177 = load i32, i32* %11, align 4
  %178 = and i32 %177, -49
  %179 = or i32 %178, 16
  store i32 %179, i32* %11, align 4
  %180 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 4, i32* %180, align 4
  br label %201

181:                                              ; preds = %169
  %182 = load i32, i32* %11, align 4
  %183 = and i32 %182, -49
  %184 = or i32 %183, 32
  store i32 %184, i32* %11, align 4
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 4, i32* %185, align 4
  br label %201

186:                                              ; preds = %169
  %187 = load i32, i32* %11, align 4
  %188 = and i32 %187, -193
  store i32 %188, i32* %11, align 4
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 4, i32* %189, align 4
  br label %201

190:                                              ; preds = %169
  %191 = load i32, i32* %11, align 4
  %192 = and i32 %191, -193
  %193 = or i32 %192, 64
  store i32 %193, i32* %11, align 4
  %194 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 4, i32* %194, align 4
  br label %201

195:                                              ; preds = %169
  %196 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @CX18_ERR_DEV(%struct.v4l2_subdev* %196, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %4, align 4
  br label %325

201:                                              ; preds = %190, %186, %181, %176, %172, %171
  %202 = load %struct.cx18*, %struct.cx18** %5, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %11, align 4
  %205 = call i32 @cx18_av_write_expect(%struct.cx18* %202, i32 259, i32 %203, i32 %204, i32 247)
  %206 = load %struct.cx18*, %struct.cx18** %5, align 8
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @cx18_av_and_or(%struct.cx18* %206, i32 1025, i32 -7, i32 %207)
  %209 = load %struct.cx18*, %struct.cx18** %5, align 8
  %210 = call i32 @cx18_av_read(%struct.cx18* %209, i32 258)
  store i32 %210, i32* %12, align 4
  %211 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %201
  %215 = load i32, i32* %12, align 4
  %216 = and i32 %215, -3
  store i32 %216, i32* %12, align 4
  br label %220

217:                                              ; preds = %201
  %218 = load i32, i32* %12, align 4
  %219 = or i32 %218, 2
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %217, %214
  %221 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %220
  %225 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %229 = load i32, i32* %12, align 4
  %230 = or i32 %229, 4
  store i32 %230, i32* %12, align 4
  br label %234

231:                                              ; preds = %224, %220
  %232 = load i32, i32* %12, align 4
  %233 = and i32 %232, -5
  store i32 %233, i32* %12, align 4
  br label %234

234:                                              ; preds = %231, %228
  %235 = load %struct.cx18*, %struct.cx18** %5, align 8
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %12, align 4
  %238 = call i32 @cx18_av_write_expect(%struct.cx18* %235, i32 258, i32 %236, i32 %237, i32 23)
  %239 = load %struct.cx18*, %struct.cx18** %5, align 8
  %240 = load i32, i32* @CXADEC_AFE_CTRL, align 4
  %241 = call i32 @cx18_av_read4(%struct.cx18* %239, i32 %240)
  store i32 %241, i32* %14, align 4
  %242 = load i32, i32* %14, align 4
  %243 = and i32 %242, -16777216
  store i32 %243, i32* %14, align 4
  %244 = load i32, i32* %14, align 4
  %245 = or i32 %244, 20480
  store i32 %245, i32* %14, align 4
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %234
  %250 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load i32, i32* %14, align 4
  %255 = or i32 %254, 48
  store i32 %255, i32* %14, align 4
  br label %256

256:                                              ; preds = %253, %249, %234
  store i32 0, i32* %15, align 4
  br label %257

257:                                              ; preds = %307, %256
  %258 = load i32, i32* %15, align 4
  %259 = icmp slt i32 %258, 3
  br i1 %259, label %260, label %310

260:                                              ; preds = %257
  %261 = load i32, i32* %15, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  switch i32 %264, label %265 [
    i32 0, label %266
    i32 1, label %271
    i32 2, label %271
    i32 3, label %278
    i32 5, label %278
    i32 6, label %278
    i32 4, label %295
  ]

265:                                              ; preds = %260
  br label %266

266:                                              ; preds = %260, %265
  %267 = load i32, i32* %15, align 4
  %268 = shl i32 512, %267
  %269 = load i32, i32* %14, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %14, align 4
  br label %306

271:                                              ; preds = %260, %260
  %272 = load i32, i32* %15, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i32, i32* %14, align 4
  %276 = or i32 %275, 8192
  store i32 %276, i32* %14, align 4
  br label %277

277:                                              ; preds = %274, %271
  br label %306

278:                                              ; preds = %260, %260, %260
  %279 = load i32, i32* %15, align 4
  %280 = shl i32 512, %279
  %281 = load i32, i32* %14, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %14, align 4
  %283 = load i32, i32* %15, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %294

285:                                              ; preds = %278
  %286 = load i32, i32* %15, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = icmp eq i32 %289, 3
  br i1 %290, label %291, label %294

291:                                              ; preds = %285
  %292 = load i32, i32* %14, align 4
  %293 = and i32 %292, -4097
  store i32 %293, i32* %14, align 4
  br label %294

294:                                              ; preds = %291, %285, %278
  br label %306

295:                                              ; preds = %260
  %296 = load i32, i32* %15, align 4
  %297 = shl i32 576, %296
  %298 = load i32, i32* %14, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %14, align 4
  %300 = load i32, i32* %15, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %295
  %303 = load i32, i32* %14, align 4
  %304 = and i32 %303, -16385
  store i32 %304, i32* %14, align 4
  br label %305

305:                                              ; preds = %302, %295
  br label %306

306:                                              ; preds = %305, %294, %277, %266
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %15, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %15, align 4
  br label %257

310:                                              ; preds = %257
  %311 = load %struct.cx18*, %struct.cx18** %5, align 8
  %312 = load i32, i32* @CXADEC_AFE_CTRL, align 4
  %313 = load i32, i32* %14, align 4
  %314 = call i32 @cx18_av_write4(%struct.cx18* %311, i32 %312, i32 %313)
  %315 = load i32, i32* %6, align 4
  %316 = load %struct.cx18_av_state*, %struct.cx18_av_state** %8, align 8
  %317 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %316, i32 0, i32 0
  store i32 %315, i32* %317, align 4
  %318 = load i32, i32* %7, align 4
  %319 = load %struct.cx18_av_state*, %struct.cx18_av_state** %8, align 8
  %320 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %319, i32 0, i32 1
  store i32 %318, i32* %320, align 4
  %321 = load %struct.cx18*, %struct.cx18** %5, align 8
  %322 = call i32 @cx18_av_audio_set_path(%struct.cx18* %321)
  %323 = load %struct.cx18*, %struct.cx18** %5, align 8
  %324 = call i32 @input_change(%struct.cx18* %323)
  store i32 0, i32* %4, align 4
  br label %325

325:                                              ; preds = %310, %195, %131, %81
  %326 = load i32, i32* %4, align 4
  ret i32 %326
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CX18_DEBUG_INFO_DEV(%struct.v4l2_subdev*, i8*, i32, i32) #2

declare dso_local i32 @CX18_ERR_DEV(%struct.v4l2_subdev*, i8*, i32) #2

declare dso_local i32 @cx18_av_write_expect(%struct.cx18*, i32, i32, i32, i32) #2

declare dso_local i32 @cx18_av_and_or(%struct.cx18*, i32, i32, i32) #2

declare dso_local i32 @cx18_av_read(%struct.cx18*, i32) #2

declare dso_local i32 @cx18_av_read4(%struct.cx18*, i32) #2

declare dso_local i32 @cx18_av_write4(%struct.cx18*, i32, i32) #2

declare dso_local i32 @cx18_av_audio_set_path(%struct.cx18*) #2

declare dso_local i32 @input_change(%struct.cx18*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
