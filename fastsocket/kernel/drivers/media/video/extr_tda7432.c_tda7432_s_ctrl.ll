; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda7432.c_tda7432_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda7432.c_tda7432_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.tda7432 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@maxvol = common dso_local global i32 0, align 4
@loudness = common dso_local global i32 0, align 4
@TDA7432_LD_ON = common dso_local global i32 0, align 4
@TDA7432_VL = common dso_local global i32 0, align 4
@TDA7432_ATTEN_0DB = common dso_local global i8* null, align 8
@TDA7432_TN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TDA7432_LF = common dso_local global i32 0, align 4
@TDA7432_MUTE = common dso_local global i32 0, align 4
@TDA7432_LR = common dso_local global i32 0, align 4
@TDA7432_RF = common dso_local global i32 0, align 4
@TDA7432_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @tda7432_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda7432_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.tda7432*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.tda7432* @to_state(%struct.v4l2_subdev* %7)
  store %struct.tda7432* %8, %struct.tda7432** %6, align 8
  %9 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %190 [
    i32 130, label %12
    i32 128, label %18
    i32 132, label %53
    i32 131, label %124
    i32 129, label %157
  ]

12:                                               ; preds = %2
  %13 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %17 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %193

18:                                               ; preds = %2
  %19 = load i32, i32* @maxvol, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 630
  %26 = sub nsw i32 111, %25
  %27 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %28 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %37

29:                                               ; preds = %18
  %30 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 829
  %34 = sub nsw i32 111, %33
  %35 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %36 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %29, %21
  %38 = load i32, i32* @loudness, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @TDA7432_LD_ON, align 4
  %42 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %43 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %37
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %48 = load i32, i32* @TDA7432_VL, align 4
  %49 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %50 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @tda7432_write(%struct.v4l2_subdev* %47, i32 %48, i32 %51)
  store i32 0, i32* %3, align 4
  br label %257

53:                                               ; preds = %2
  %54 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 32768
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 32768, %61
  %63 = sdiv i32 %62, 1057
  %64 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %65 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %67 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %70 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i8*, i8** @TDA7432_ATTEN_0DB, align 8
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %74 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** @TDA7432_ATTEN_0DB, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %78 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  br label %123

79:                                               ; preds = %53
  %80 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %81 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 32769
  br i1 %83, label %84, label %105

84:                                               ; preds = %79
  %85 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %86 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 32768
  %89 = sdiv i32 %88, 1057
  %90 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %91 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %93 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %96 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load i8*, i8** @TDA7432_ATTEN_0DB, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %100 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i8*, i8** @TDA7432_ATTEN_0DB, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %104 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %122

105:                                              ; preds = %79
  %106 = load i8*, i8** @TDA7432_ATTEN_0DB, align 8
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %109 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load i8*, i8** @TDA7432_ATTEN_0DB, align 8
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %113 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load i8*, i8** @TDA7432_ATTEN_0DB, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %117 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load i8*, i8** @TDA7432_ATTEN_0DB, align 8
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %121 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %105, %84
  br label %123

123:                                              ; preds = %122, %58
  br label %193

124:                                              ; preds = %2
  %125 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %126 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 12
  %129 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %130 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 4
  %131 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %132 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %133, 8
  br i1 %134, label %135, label %144

135:                                              ; preds = %124
  %136 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %137 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = xor i32 %138, -1
  %140 = and i32 %139, 15
  %141 = add nsw i32 %140, 8
  %142 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %143 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %135, %124
  %145 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %146 = load i32, i32* @TDA7432_TN, align 4
  %147 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %148 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 4
  %151 = or i32 16, %150
  %152 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %153 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %151, %154
  %156 = call i32 @tda7432_write(%struct.v4l2_subdev* %145, i32 %146, i32 %155)
  store i32 0, i32* %3, align 4
  br label %257

157:                                              ; preds = %2
  %158 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %159 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = ashr i32 %160, 12
  %162 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %163 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 4
  %164 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %165 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = icmp sge i32 %166, 8
  br i1 %167, label %168, label %177

168:                                              ; preds = %157
  %169 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %170 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = xor i32 %171, -1
  %173 = and i32 %172, 15
  %174 = add nsw i32 %173, 8
  %175 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %176 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %175, i32 0, i32 7
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %168, %157
  %178 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %179 = load i32, i32* @TDA7432_TN, align 4
  %180 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %181 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 4
  %184 = or i32 16, %183
  %185 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %186 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %184, %187
  %189 = call i32 @tda7432_write(%struct.v4l2_subdev* %178, i32 %179, i32 %188)
  store i32 0, i32* %3, align 4
  br label %257

190:                                              ; preds = %2
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %3, align 4
  br label %257

193:                                              ; preds = %123, %12
  %194 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %195 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %231

198:                                              ; preds = %193
  %199 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %200 = load i32, i32* @TDA7432_LF, align 4
  %201 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %202 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @TDA7432_MUTE, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @tda7432_write(%struct.v4l2_subdev* %199, i32 %200, i32 %205)
  %207 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %208 = load i32, i32* @TDA7432_LR, align 4
  %209 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %210 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @TDA7432_MUTE, align 4
  %213 = or i32 %211, %212
  %214 = call i32 @tda7432_write(%struct.v4l2_subdev* %207, i32 %208, i32 %213)
  %215 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %216 = load i32, i32* @TDA7432_RF, align 4
  %217 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %218 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @TDA7432_MUTE, align 4
  %221 = or i32 %219, %220
  %222 = call i32 @tda7432_write(%struct.v4l2_subdev* %215, i32 %216, i32 %221)
  %223 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %224 = load i32, i32* @TDA7432_RR, align 4
  %225 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %226 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @TDA7432_MUTE, align 4
  %229 = or i32 %227, %228
  %230 = call i32 @tda7432_write(%struct.v4l2_subdev* %223, i32 %224, i32 %229)
  br label %256

231:                                              ; preds = %193
  %232 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %233 = load i32, i32* @TDA7432_LF, align 4
  %234 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %235 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @tda7432_write(%struct.v4l2_subdev* %232, i32 %233, i32 %236)
  %238 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %239 = load i32, i32* @TDA7432_LR, align 4
  %240 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %241 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @tda7432_write(%struct.v4l2_subdev* %238, i32 %239, i32 %242)
  %244 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %245 = load i32, i32* @TDA7432_RF, align 4
  %246 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %247 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @tda7432_write(%struct.v4l2_subdev* %244, i32 %245, i32 %248)
  %250 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %251 = load i32, i32* @TDA7432_RR, align 4
  %252 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %253 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @tda7432_write(%struct.v4l2_subdev* %250, i32 %251, i32 %254)
  br label %256

256:                                              ; preds = %231, %198
  store i32 0, i32* %3, align 4
  br label %257

257:                                              ; preds = %256, %190, %177, %144, %46
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local %struct.tda7432* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @tda7432_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
