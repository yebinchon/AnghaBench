; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.tvp514x_decoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid brightness setting %d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@REG_BRIGHTNESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid contrast setting %d\0A\00", align 1
@REG_CONTRAST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid saturation setting %d\0A\00", align 1
@REG_SATURATION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"invalid hue setting %d\0A\00", align 1
@REG_HUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"invalid auto gain setting %d\0A\00", align 1
@REG_AFE_GAIN_CTRL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"invalid control id %d\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Set Control: ID - %d - %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @tvp514x_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.tvp514x_decoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev* %9)
  store %struct.tvp514x_decoder* %10, %struct.tvp514x_decoder** %6, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %14 = icmp eq %struct.v4l2_control* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %220

17:                                               ; preds = %2
  %18 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %202 [
    i32 131, label %24
    i32 130, label %59
    i32 128, label %94
    i32 129, label %129
    i32 132, label %168
  ]

24:                                               ; preds = %17
  %25 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 255
  br i1 %33, label %34, label %42

34:                                               ; preds = %29, %24
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %36 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @v4l2_err(%struct.v4l2_subdev* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ERANGE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %220

42:                                               ; preds = %29
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %44 = load i64, i64* @REG_BRIGHTNESS, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @tvp514x_write_reg(%struct.v4l2_subdev* %43, i64 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %220

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %54 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* @REG_BRIGHTNESS, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %52, i32* %58, align 4
  br label %209

59:                                               ; preds = %17
  %60 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 255
  br i1 %68, label %69, label %77

69:                                               ; preds = %64, %59
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %71 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @v4l2_err(%struct.v4l2_subdev* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ERANGE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %220

77:                                               ; preds = %64
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %79 = load i64, i64* @REG_CONTRAST, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @tvp514x_write_reg(%struct.v4l2_subdev* %78, i64 %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %220

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %89 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i64, i64* @REG_CONTRAST, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %87, i32* %93, align 4
  br label %209

94:                                               ; preds = %17
  %95 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %101 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 255
  br i1 %103, label %104, label %112

104:                                              ; preds = %99, %94
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %106 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %107 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @v4l2_err(%struct.v4l2_subdev* %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @ERANGE, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %220

112:                                              ; preds = %99
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %114 = load i64, i64* @REG_SATURATION, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @tvp514x_write_reg(%struct.v4l2_subdev* %113, i64 %114, i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %3, align 4
  br label %220

121:                                              ; preds = %112
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %124 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i64, i64* @REG_SATURATION, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 %122, i32* %128, align 4
  br label %209

129:                                              ; preds = %17
  %130 = load i32, i32* %8, align 4
  %131 = icmp eq i32 %130, 180
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 127, i32* %8, align 4
  br label %151

133:                                              ; preds = %129
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %134, -180
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 128, i32* %8, align 4
  br label %150

137:                                              ; preds = %133
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 0, i32* %8, align 4
  br label %149

141:                                              ; preds = %137
  %142 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %143 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %144 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @v4l2_err(%struct.v4l2_subdev* %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @ERANGE, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %220

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %136
  br label %151

151:                                              ; preds = %150, %132
  %152 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %153 = load i64, i64* @REG_HUE, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @tvp514x_write_reg(%struct.v4l2_subdev* %152, i64 %153, i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %3, align 4
  br label %220

160:                                              ; preds = %151
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %163 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %162, i32 0, i32 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = load i64, i64* @REG_HUE, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  store i32 %161, i32* %167, align 4
  br label %209

168:                                              ; preds = %17
  %169 = load i32, i32* %8, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 15, i32* %8, align 4
  br label %185

172:                                              ; preds = %168
  %173 = load i32, i32* %8, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 12, i32* %8, align 4
  br label %184

176:                                              ; preds = %172
  %177 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %178 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %179 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @v4l2_err(%struct.v4l2_subdev* %177, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @ERANGE, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %220

184:                                              ; preds = %175
  br label %185

185:                                              ; preds = %184, %171
  %186 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %187 = load i64, i64* @REG_AFE_GAIN_CTRL, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @tvp514x_write_reg(%struct.v4l2_subdev* %186, i64 %187, i32 %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %3, align 4
  br label %220

194:                                              ; preds = %185
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %197 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %196, i32 0, i32 0
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = load i64, i64* @REG_AFE_GAIN_CTRL, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  store i32 %195, i32* %201, align 4
  br label %209

202:                                              ; preds = %17
  %203 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %204 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %205 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @v4l2_err(%struct.v4l2_subdev* %203, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* %7, align 4
  store i32 %208, i32* %3, align 4
  br label %220

209:                                              ; preds = %194, %160, %121, %86, %51
  %210 = load i32, i32* @debug, align 4
  %211 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %212 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %213 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %216 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @v4l2_dbg(i32 1, i32 %210, %struct.v4l2_subdev* %211, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %214, i32 %217)
  %219 = load i32, i32* %7, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %209, %202, %192, %176, %158, %141, %119, %104, %84, %69, %49, %34, %15
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @tvp514x_write_reg(%struct.v4l2_subdev*, i64, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
