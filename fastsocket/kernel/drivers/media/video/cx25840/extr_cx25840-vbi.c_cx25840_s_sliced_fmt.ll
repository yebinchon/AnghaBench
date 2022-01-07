; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-vbi.c_cx25840_s_sliced_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-vbi.c_cx25840_s_sliced_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_format = type { i32** }
%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_s_sliced_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_format* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.cx25840_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [24 x i32], align 16
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_sliced_vbi_format* %1, %struct.v4l2_sliced_vbi_format** %4, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %5, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %15 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %14)
  store %struct.cx25840_state* %15, %struct.cx25840_state** %6, align 8
  %16 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %17 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @V4L2_STD_525_60, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %35, %2
  %29 = load i32, i32* %10, align 4
  %30 = icmp sle i32 %29, 23
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %33
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %28

38:                                               ; preds = %28
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = call i32 @cx25840_std_setup(%struct.i2c_client* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %42 = call i32 @cx25840_write(%struct.i2c_client* %41, i32 1028, i32 50)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %44 = call i32 @cx25840_write(%struct.i2c_client* %43, i32 1030, i32 19)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @cx25840_write(%struct.i2c_client* %45, i32 1151, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i32, i32* %9, align 4
  %53 = icmp sle i32 %52, 6
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %56 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 0, i32* %62, align 4
  %63 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %64 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %51

74:                                               ; preds = %51
  br label %124

75:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %96, %75
  %77 = load i32, i32* %9, align 4
  %78 = icmp sle i32 %77, 9
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  %80 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %81 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %80, i32 0, i32 0
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 0, i32* %87, align 4
  %88 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %89 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %79
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %76

99:                                               ; preds = %76
  store i32 22, i32* %9, align 4
  br label %100

100:                                              ; preds = %120, %99
  %101 = load i32, i32* %9, align 4
  %102 = icmp sle i32 %101, 23
  br i1 %102, label %103, label %123

103:                                              ; preds = %100
  %104 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %105 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 0, i32* %111, align 4
  %112 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %113 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %112, i32 0, i32 0
  %114 = load i32**, i32*** %113, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %103
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %100

123:                                              ; preds = %100
  br label %124

124:                                              ; preds = %123, %74
  store i32 7, i32* %9, align 4
  br label %125

125:                                              ; preds = %186, %124
  %126 = load i32, i32* %9, align 4
  %127 = icmp sle i32 %126, 23
  br i1 %127, label %128, label %189

128:                                              ; preds = %125
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %182, %128
  %130 = load i32, i32* %10, align 4
  %131 = icmp sle i32 %130, 1
  br i1 %131, label %132, label %185

132:                                              ; preds = %129
  %133 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %134 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %133, i32 0, i32 0
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sub nsw i32 1, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %135, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %181 [
    i32 130, label %145
    i32 128, label %154
    i32 131, label %163
    i32 129, label %172
  ]

145:                                              ; preds = %132
  %146 = load i32, i32* %10, align 4
  %147 = mul nsw i32 4, %146
  %148 = shl i32 1, %147
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %148
  store i32 %153, i32* %151, align 4
  br label %181

154:                                              ; preds = %132
  %155 = load i32, i32* %10, align 4
  %156 = mul nsw i32 4, %155
  %157 = shl i32 4, %156
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %157
  store i32 %162, i32* %160, align 4
  br label %181

163:                                              ; preds = %132
  %164 = load i32, i32* %10, align 4
  %165 = mul nsw i32 4, %164
  %166 = shl i32 6, %165
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %166
  store i32 %171, i32* %169, align 4
  br label %181

172:                                              ; preds = %132
  %173 = load i32, i32* %10, align 4
  %174 = mul nsw i32 4, %173
  %175 = shl i32 9, %174
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %175
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %132, %172, %163, %154, %145
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  br label %129

185:                                              ; preds = %129
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %125

189:                                              ; preds = %125
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %211

192:                                              ; preds = %189
  store i32 1, i32* %10, align 4
  store i32 1060, i32* %9, align 4
  br label %193

193:                                              ; preds = %205, %192
  %194 = load i32, i32* %9, align 4
  %195 = icmp sle i32 %194, 1076
  br i1 %195, label %196, label %210

196:                                              ; preds = %193
  %197 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 6, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @cx25840_write(%struct.i2c_client* %197, i32 %198, i32 %203)
  br label %205

205:                                              ; preds = %196
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %193

210:                                              ; preds = %193
  br label %241

211:                                              ; preds = %189
  store i32 1, i32* %10, align 4
  store i32 1060, i32* %9, align 4
  br label %212

212:                                              ; preds = %224, %211
  %213 = load i32, i32* %9, align 4
  %214 = icmp sle i32 %213, 1072
  br i1 %214, label %215, label %229

215:                                              ; preds = %212
  %216 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 9, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @cx25840_write(%struct.i2c_client* %216, i32 %217, i32 %222)
  br label %224

224:                                              ; preds = %215
  %225 = load i32, i32* %9, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %10, align 4
  br label %212

229:                                              ; preds = %212
  store i32 1073, i32* %9, align 4
  br label %230

230:                                              ; preds = %237, %229
  %231 = load i32, i32* %9, align 4
  %232 = icmp sle i32 %231, 1076
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @cx25840_write(%struct.i2c_client* %234, i32 %235, i32 0)
  br label %237

237:                                              ; preds = %233
  %238 = load i32, i32* %9, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %9, align 4
  br label %230

240:                                              ; preds = %230
  br label %241

241:                                              ; preds = %240, %210
  %242 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %243 = call i32 @cx25840_write(%struct.i2c_client* %242, i32 1084, i32 22)
  %244 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %245 = load i32, i32* %7, align 4
  %246 = icmp ne i32 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i32 42, i32 34
  %249 = call i32 @cx25840_write(%struct.i2c_client* %244, i32 1140, i32 %248)
  ret i32 0
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_std_setup(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
