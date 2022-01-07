; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov519_mode_init_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov519_mode_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov_regvals = type { i32, i32 }
%struct.sd = type { i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@ov519_mode_init_regs.mode_init_519_ov7670 = internal constant [18 x %struct.ov_regvals] [%struct.ov_regvals { i32 93, i32 3 }, %struct.ov_regvals { i32 83, i32 159 }, %struct.ov_regvals { i32 133, i32 15 }, %struct.ov_regvals { i32 162, i32 32 }, %struct.ov_regvals { i32 163, i32 24 }, %struct.ov_regvals { i32 164, i32 4 }, %struct.ov_regvals { i32 165, i32 40 }, %struct.ov_regvals { i32 55, i32 0 }, %struct.ov_regvals { i32 85, i32 2 }, %struct.ov_regvals { i32 32, i32 12 }, %struct.ov_regvals { i32 33, i32 56 }, %struct.ov_regvals { i32 34, i32 29 }, %struct.ov_regvals { i32 23, i32 80 }, %struct.ov_regvals { i32 55, i32 0 }, %struct.ov_regvals { i32 64, i32 255 }, %struct.ov_regvals { i32 70, i32 0 }, %struct.ov_regvals { i32 89, i32 4 }, %struct.ov_regvals { i32 255, i32 0 }], align 16
@ov519_mode_init_regs.mode_init_519 = internal constant [16 x %struct.ov_regvals] [%struct.ov_regvals { i32 93, i32 3 }, %struct.ov_regvals { i32 83, i32 159 }, %struct.ov_regvals { i32 133, i32 15 }, %struct.ov_regvals { i32 162, i32 32 }, %struct.ov_regvals { i32 163, i32 24 }, %struct.ov_regvals { i32 164, i32 4 }, %struct.ov_regvals { i32 165, i32 40 }, %struct.ov_regvals { i32 55, i32 0 }, %struct.ov_regvals { i32 85, i32 2 }, %struct.ov_regvals { i32 34, i32 29 }, %struct.ov_regvals { i32 23, i32 80 }, %struct.ov_regvals { i32 55, i32 0 }, %struct.ov_regvals { i32 64, i32 255 }, %struct.ov_regvals { i32 70, i32 0 }, %struct.ov_regvals { i32 89, i32 4 }, %struct.ov_regvals { i32 255, i32 0 }], align 16
@OV519_R20_DFR = common dso_local global i32 0, align 4
@OV519_R10_H_SIZE = common dso_local global i32 0, align 4
@OV519_R11_V_SIZE = common dso_local global i32 0, align 4
@OV519_R12_X_OFFSETL = common dso_local global i32 0, align 4
@OV519_R13_X_OFFSETH = common dso_local global i32 0, align 4
@OV519_R14_Y_OFFSETL = common dso_local global i32 0, align 4
@OV519_R15_Y_OFFSETH = common dso_local global i32 0, align 4
@OV519_R16_DIVIDER = common dso_local global i32 0, align 4
@OV519_R25_FORMAT = common dso_local global i32 0, align 4
@frame_rate = common dso_local global i64 0, align 8
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Setting framerate to %d fps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov519_mode_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov519_mode_init_regs(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %3 = load %struct.sd*, %struct.sd** %2, align 8
  %4 = getelementptr inbounds %struct.sd, %struct.sd* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %6 [
    i32 130, label %24
    i32 129, label %25
  ]

6:                                                ; preds = %1
  %7 = load %struct.sd*, %struct.sd** %2, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.ov_regvals* getelementptr inbounds ([16 x %struct.ov_regvals], [16 x %struct.ov_regvals]* @ov519_mode_init_regs.mode_init_519, i64 0, i64 0))
  %9 = call i32 @write_regvals(%struct.sd* %7, %struct.ov_regvals* getelementptr inbounds ([16 x %struct.ov_regvals], [16 x %struct.ov_regvals]* @ov519_mode_init_regs.mode_init_519, i64 0, i64 0), i32 %8)
  %10 = load %struct.sd*, %struct.sd** %2, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 132
  br i1 %13, label %19, label %14

14:                                               ; preds = %6
  %15 = load %struct.sd*, %struct.sd** %2, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 131
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %6
  %20 = load %struct.sd*, %struct.sd** %2, align 8
  %21 = load i32, i32* @OV519_R20_DFR, align 4
  %22 = call i32 @reg_w_mask(%struct.sd* %20, i32 %21, i32 16, i32 16)
  br label %23

23:                                               ; preds = %19, %14
  br label %29

24:                                               ; preds = %1
  br label %219

25:                                               ; preds = %1
  %26 = load %struct.sd*, %struct.sd** %2, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.ov_regvals* getelementptr inbounds ([18 x %struct.ov_regvals], [18 x %struct.ov_regvals]* @ov519_mode_init_regs.mode_init_519_ov7670, i64 0, i64 0))
  %28 = call i32 @write_regvals(%struct.sd* %26, %struct.ov_regvals* getelementptr inbounds ([18 x %struct.ov_regvals], [18 x %struct.ov_regvals]* @ov519_mode_init_regs.mode_init_519_ov7670, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %23
  %30 = load %struct.sd*, %struct.sd** %2, align 8
  %31 = load i32, i32* @OV519_R10_H_SIZE, align 4
  %32 = load %struct.sd*, %struct.sd** %2, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 4
  %37 = call i32 @reg_w(%struct.sd* %30, i32 %31, i32 %36)
  %38 = load %struct.sd*, %struct.sd** %2, align 8
  %39 = load i32, i32* @OV519_R11_V_SIZE, align 4
  %40 = load %struct.sd*, %struct.sd** %2, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 3
  %45 = call i32 @reg_w(%struct.sd* %38, i32 %39, i32 %44)
  %46 = load %struct.sd*, %struct.sd** %2, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 129
  br i1 %49, label %50, label %68

50:                                               ; preds = %29
  %51 = load %struct.sd*, %struct.sd** %2, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.sd*, %struct.sd** %2, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %50
  %65 = load %struct.sd*, %struct.sd** %2, align 8
  %66 = load i32, i32* @OV519_R12_X_OFFSETL, align 4
  %67 = call i32 @reg_w(%struct.sd* %65, i32 %66, i32 4)
  br label %96

68:                                               ; preds = %50, %29
  %69 = load %struct.sd*, %struct.sd** %2, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 131
  br i1 %72, label %73, label %91

73:                                               ; preds = %68
  %74 = load %struct.sd*, %struct.sd** %2, align 8
  %75 = getelementptr inbounds %struct.sd, %struct.sd* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load %struct.sd*, %struct.sd** %2, align 8
  %80 = getelementptr inbounds %struct.sd, %struct.sd* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %73
  %88 = load %struct.sd*, %struct.sd** %2, align 8
  %89 = load i32, i32* @OV519_R12_X_OFFSETL, align 4
  %90 = call i32 @reg_w(%struct.sd* %88, i32 %89, i32 1)
  br label %95

91:                                               ; preds = %73, %68
  %92 = load %struct.sd*, %struct.sd** %2, align 8
  %93 = load i32, i32* @OV519_R12_X_OFFSETL, align 4
  %94 = call i32 @reg_w(%struct.sd* %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %64
  %97 = load %struct.sd*, %struct.sd** %2, align 8
  %98 = load i32, i32* @OV519_R13_X_OFFSETH, align 4
  %99 = call i32 @reg_w(%struct.sd* %97, i32 %98, i32 0)
  %100 = load %struct.sd*, %struct.sd** %2, align 8
  %101 = load i32, i32* @OV519_R14_Y_OFFSETL, align 4
  %102 = call i32 @reg_w(%struct.sd* %100, i32 %101, i32 0)
  %103 = load %struct.sd*, %struct.sd** %2, align 8
  %104 = load i32, i32* @OV519_R15_Y_OFFSETH, align 4
  %105 = call i32 @reg_w(%struct.sd* %103, i32 %104, i32 0)
  %106 = load %struct.sd*, %struct.sd** %2, align 8
  %107 = load i32, i32* @OV519_R16_DIVIDER, align 4
  %108 = call i32 @reg_w(%struct.sd* %106, i32 %107, i32 0)
  %109 = load %struct.sd*, %struct.sd** %2, align 8
  %110 = load i32, i32* @OV519_R25_FORMAT, align 4
  %111 = call i32 @reg_w(%struct.sd* %109, i32 %110, i32 3)
  %112 = load %struct.sd*, %struct.sd** %2, align 8
  %113 = call i32 @reg_w(%struct.sd* %112, i32 38, i32 0)
  %114 = load i64, i64* @frame_rate, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %96
  %117 = load i64, i64* @frame_rate, align 8
  %118 = load %struct.sd*, %struct.sd** %2, align 8
  %119 = getelementptr inbounds %struct.sd, %struct.sd* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %96
  %121 = load %struct.sd*, %struct.sd** %2, align 8
  %122 = getelementptr inbounds %struct.sd, %struct.sd* %121, i32 0, i32 2
  store i32 0, i32* %122, align 8
  %123 = load %struct.sd*, %struct.sd** %2, align 8
  %124 = getelementptr inbounds %struct.sd, %struct.sd* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %219 [
    i32 132, label %126
    i32 131, label %126
    i32 128, label %167
    i32 129, label %187
  ]

126:                                              ; preds = %120, %120
  %127 = load %struct.sd*, %struct.sd** %2, align 8
  %128 = getelementptr inbounds %struct.sd, %struct.sd* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  switch i64 %129, label %130 [
    i64 25, label %135
    i64 20, label %140
    i64 15, label %145
    i64 10, label %152
    i64 5, label %159
  ]

130:                                              ; preds = %126
  %131 = load %struct.sd*, %struct.sd** %2, align 8
  %132 = call i32 @reg_w(%struct.sd* %131, i32 164, i32 12)
  %133 = load %struct.sd*, %struct.sd** %2, align 8
  %134 = call i32 @reg_w(%struct.sd* %133, i32 35, i32 255)
  br label %166

135:                                              ; preds = %126
  %136 = load %struct.sd*, %struct.sd** %2, align 8
  %137 = call i32 @reg_w(%struct.sd* %136, i32 164, i32 12)
  %138 = load %struct.sd*, %struct.sd** %2, align 8
  %139 = call i32 @reg_w(%struct.sd* %138, i32 35, i32 31)
  br label %166

140:                                              ; preds = %126
  %141 = load %struct.sd*, %struct.sd** %2, align 8
  %142 = call i32 @reg_w(%struct.sd* %141, i32 164, i32 12)
  %143 = load %struct.sd*, %struct.sd** %2, align 8
  %144 = call i32 @reg_w(%struct.sd* %143, i32 35, i32 27)
  br label %166

145:                                              ; preds = %126
  %146 = load %struct.sd*, %struct.sd** %2, align 8
  %147 = call i32 @reg_w(%struct.sd* %146, i32 164, i32 4)
  %148 = load %struct.sd*, %struct.sd** %2, align 8
  %149 = call i32 @reg_w(%struct.sd* %148, i32 35, i32 255)
  %150 = load %struct.sd*, %struct.sd** %2, align 8
  %151 = getelementptr inbounds %struct.sd, %struct.sd* %150, i32 0, i32 2
  store i32 1, i32* %151, align 8
  br label %166

152:                                              ; preds = %126
  %153 = load %struct.sd*, %struct.sd** %2, align 8
  %154 = call i32 @reg_w(%struct.sd* %153, i32 164, i32 4)
  %155 = load %struct.sd*, %struct.sd** %2, align 8
  %156 = call i32 @reg_w(%struct.sd* %155, i32 35, i32 31)
  %157 = load %struct.sd*, %struct.sd** %2, align 8
  %158 = getelementptr inbounds %struct.sd, %struct.sd* %157, i32 0, i32 2
  store i32 1, i32* %158, align 8
  br label %166

159:                                              ; preds = %126
  %160 = load %struct.sd*, %struct.sd** %2, align 8
  %161 = call i32 @reg_w(%struct.sd* %160, i32 164, i32 4)
  %162 = load %struct.sd*, %struct.sd** %2, align 8
  %163 = call i32 @reg_w(%struct.sd* %162, i32 35, i32 27)
  %164 = load %struct.sd*, %struct.sd** %2, align 8
  %165 = getelementptr inbounds %struct.sd, %struct.sd* %164, i32 0, i32 2
  store i32 1, i32* %165, align 8
  br label %166

166:                                              ; preds = %159, %152, %145, %140, %135, %130
  br label %219

167:                                              ; preds = %120
  %168 = load %struct.sd*, %struct.sd** %2, align 8
  %169 = getelementptr inbounds %struct.sd, %struct.sd* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  switch i64 %170, label %171 [
    i64 10, label %176
    i64 5, label %181
  ]

171:                                              ; preds = %167
  %172 = load %struct.sd*, %struct.sd** %2, align 8
  %173 = call i32 @reg_w(%struct.sd* %172, i32 164, i32 6)
  %174 = load %struct.sd*, %struct.sd** %2, align 8
  %175 = call i32 @reg_w(%struct.sd* %174, i32 35, i32 255)
  br label %186

176:                                              ; preds = %167
  %177 = load %struct.sd*, %struct.sd** %2, align 8
  %178 = call i32 @reg_w(%struct.sd* %177, i32 164, i32 6)
  %179 = load %struct.sd*, %struct.sd** %2, align 8
  %180 = call i32 @reg_w(%struct.sd* %179, i32 35, i32 31)
  br label %186

181:                                              ; preds = %167
  %182 = load %struct.sd*, %struct.sd** %2, align 8
  %183 = call i32 @reg_w(%struct.sd* %182, i32 164, i32 6)
  %184 = load %struct.sd*, %struct.sd** %2, align 8
  %185 = call i32 @reg_w(%struct.sd* %184, i32 35, i32 27)
  br label %186

186:                                              ; preds = %181, %176, %171
  br label %219

187:                                              ; preds = %120
  %188 = load i32, i32* @D_STREAM, align 4
  %189 = load %struct.sd*, %struct.sd** %2, align 8
  %190 = getelementptr inbounds %struct.sd, %struct.sd* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %198

194:                                              ; preds = %187
  %195 = load %struct.sd*, %struct.sd** %2, align 8
  %196 = getelementptr inbounds %struct.sd, %struct.sd* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  br label %198

198:                                              ; preds = %194, %193
  %199 = phi i64 [ 15, %193 ], [ %197, %194 ]
  %200 = trunc i64 %199 to i32
  %201 = call i32 @PDEBUG(i32 %188, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %200)
  %202 = load %struct.sd*, %struct.sd** %2, align 8
  %203 = call i32 @reg_w(%struct.sd* %202, i32 164, i32 16)
  %204 = load %struct.sd*, %struct.sd** %2, align 8
  %205 = getelementptr inbounds %struct.sd, %struct.sd* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  switch i64 %206, label %213 [
    i64 30, label %207
    i64 20, label %210
  ]

207:                                              ; preds = %198
  %208 = load %struct.sd*, %struct.sd** %2, align 8
  %209 = call i32 @reg_w(%struct.sd* %208, i32 35, i32 255)
  br label %218

210:                                              ; preds = %198
  %211 = load %struct.sd*, %struct.sd** %2, align 8
  %212 = call i32 @reg_w(%struct.sd* %211, i32 35, i32 27)
  br label %218

213:                                              ; preds = %198
  %214 = load %struct.sd*, %struct.sd** %2, align 8
  %215 = call i32 @reg_w(%struct.sd* %214, i32 35, i32 255)
  %216 = load %struct.sd*, %struct.sd** %2, align 8
  %217 = getelementptr inbounds %struct.sd, %struct.sd* %216, i32 0, i32 2
  store i32 1, i32* %217, align 8
  br label %218

218:                                              ; preds = %213, %210, %207
  br label %219

219:                                              ; preds = %24, %120, %218, %186, %166
  ret void
}

declare dso_local i32 @write_regvals(%struct.sd*, %struct.ov_regvals*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ov_regvals*) #1

declare dso_local i32 @reg_w_mask(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
