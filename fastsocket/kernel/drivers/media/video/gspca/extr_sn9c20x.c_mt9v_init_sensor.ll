; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_mt9v_init_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_mt9v_init_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32, i32 }

@mt9v011_init = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"MT9V011 sensor initialization failed\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SENSOR_MT9V011 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"MT9V011 sensor detected\00", align 1
@mt9v111_init = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"MT9V111 sensor initialization failed\00", align 1
@EXPOSURE_IDX = common dso_local global i32 0, align 4
@AUTOGAIN_IDX = common dso_local global i32 0, align 4
@GAIN_IDX = common dso_local global i32 0, align 4
@SENSOR_MT9V111 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"MT9V111 sensor detected\00", align 1
@mt9v112_init = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"MT9V112 sensor initialization failed\00", align 1
@SENSOR_MT9V112 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"MT9V112 sensor detected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @mt9v_init_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v_init_sensor(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %4, align 8
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  store i32 93, i32* %11, align 4
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = call i32 @i2c_r2(%struct.gspca_dev* %12, i32 255, i32* %6)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 33347
  br i1 %18, label %19, label %58

19:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %46, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt9v011_init, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt9v011_init, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt9v011_init, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @i2c_w2(%struct.gspca_dev* %26, i32 %32, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %25
  %42 = call i32 @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %182

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %20

49:                                               ; preds = %20
  %50 = load %struct.sd*, %struct.sd** %4, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 1
  store i32 2, i32* %51, align 4
  %52 = load %struct.sd*, %struct.sd** %4, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 2
  store i32 2, i32* %53, align 4
  %54 = load i32, i32* @SENSOR_MT9V011, align 4
  %55 = load %struct.sd*, %struct.sd** %4, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = call i32 @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %182

58:                                               ; preds = %16, %1
  %59 = load %struct.sd*, %struct.sd** %4, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 0
  store i32 92, i32* %60, align 4
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %62 = call i64 @i2c_w2(%struct.gspca_dev* %61, i32 1, i32 4)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %64 = call i32 @i2c_r2(%struct.gspca_dev* %63, i32 255, i32* %6)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %119

67:                                               ; preds = %58
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 33338
  br i1 %69, label %70, label %119

70:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %97, %70
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt9v111_init, align 8
  %74 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %73)
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt9v111_init, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt9v111_init, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @i2c_w2(%struct.gspca_dev* %77, i32 %83, i32 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %76
  %93 = call i32 @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %182

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %71

100:                                              ; preds = %71
  %101 = load i32, i32* @EXPOSURE_IDX, align 4
  %102 = shl i32 1, %101
  %103 = load i32, i32* @AUTOGAIN_IDX, align 4
  %104 = shl i32 1, %103
  %105 = or i32 %102, %104
  %106 = load i32, i32* @GAIN_IDX, align 4
  %107 = shl i32 1, %106
  %108 = or i32 %105, %107
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %110 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.sd*, %struct.sd** %4, align 8
  %112 = getelementptr inbounds %struct.sd, %struct.sd* %111, i32 0, i32 1
  store i32 2, i32* %112, align 4
  %113 = load %struct.sd*, %struct.sd** %4, align 8
  %114 = getelementptr inbounds %struct.sd, %struct.sd* %113, i32 0, i32 2
  store i32 2, i32* %114, align 4
  %115 = load i32, i32* @SENSOR_MT9V111, align 4
  %116 = load %struct.sd*, %struct.sd** %4, align 8
  %117 = getelementptr inbounds %struct.sd, %struct.sd* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = call i32 @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %182

119:                                              ; preds = %67, %58
  %120 = load %struct.sd*, %struct.sd** %4, align 8
  %121 = getelementptr inbounds %struct.sd, %struct.sd* %120, i32 0, i32 0
  store i32 93, i32* %121, align 4
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %123 = call i64 @i2c_w2(%struct.gspca_dev* %122, i32 240, i32 0)
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %119
  %128 = load %struct.sd*, %struct.sd** %4, align 8
  %129 = getelementptr inbounds %struct.sd, %struct.sd* %128, i32 0, i32 0
  store i32 72, i32* %129, align 4
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %131 = call i64 @i2c_w2(%struct.gspca_dev* %130, i32 240, i32 0)
  br label %132

132:                                              ; preds = %127, %119
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %134 = call i32 @i2c_r2(%struct.gspca_dev* %133, i32 0, i32* %6)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %179

137:                                              ; preds = %132
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %138, 4649
  br i1 %139, label %140, label %179

140:                                              ; preds = %137
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %167, %140
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt9v112_init, align 8
  %144 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %143)
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %170

146:                                              ; preds = %141
  %147 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt9v112_init, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt9v112_init, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @i2c_w2(%struct.gspca_dev* %147, i32 %153, i32 %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %146
  %163 = call i32 @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %164 = load i32, i32* @ENODEV, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %2, align 4
  br label %182

166:                                              ; preds = %146
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %141

170:                                              ; preds = %141
  %171 = load %struct.sd*, %struct.sd** %4, align 8
  %172 = getelementptr inbounds %struct.sd, %struct.sd* %171, i32 0, i32 1
  store i32 6, i32* %172, align 4
  %173 = load %struct.sd*, %struct.sd** %4, align 8
  %174 = getelementptr inbounds %struct.sd, %struct.sd* %173, i32 0, i32 2
  store i32 2, i32* %174, align 4
  %175 = load i32, i32* @SENSOR_MT9V112, align 4
  %176 = load %struct.sd*, %struct.sd** %4, align 8
  %177 = getelementptr inbounds %struct.sd, %struct.sd* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = call i32 @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %182

179:                                              ; preds = %137, %132
  %180 = load i32, i32* @ENODEV, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %179, %170, %162, %100, %92, %49, %41
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @i2c_r2(%struct.gspca_dev*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @i2c_w2(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
