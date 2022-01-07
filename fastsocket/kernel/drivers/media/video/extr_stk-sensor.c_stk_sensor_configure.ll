; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-sensor.c_stk_sensor_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-sensor.c_stk_sensor_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regval = type { i32 }
%struct.stk_camera = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@COM7_FMT_QCIF = common dso_local global i32 0, align 4
@COM7_FMT_QVGA = common dso_local global i32 0, align 4
@COM7_FMT_CIF = common dso_local global i32 0, align 4
@COM7_FMT_VGA = common dso_local global i32 0, align 4
@COM7_FMT_SXGA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unsupported mode %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@COM7_YUV = common dso_local global i32 0, align 4
@ov_fmt_uyvy = common dso_local global %struct.regval* null, align 8
@ov_fmt_yuyv = common dso_local global %struct.regval* null, align 8
@COM7_RGB = common dso_local global i32 0, align 4
@ov_fmt_rgbp = common dso_local global %struct.regval* null, align 8
@ov_fmt_rgbr = common dso_local global %struct.regval* null, align 8
@COM7_PBAYER = common dso_local global i32 0, align 4
@ov_fmt_bayer = common dso_local global %struct.regval* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported colorspace\0A\00", align 1
@REG_COM7 = common dso_local global i32 0, align 4
@MVFP_FLIP = common dso_local global i32 0, align 4
@MVFP_MIRROR = common dso_local global i32 0, align 4
@REG_MVFP = common dso_local global i32 0, align 4
@REG_TSLB = common dso_local global i32 0, align 4
@REG_ADVFH = common dso_local global i32 0, align 4
@REG_ADVFL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"stk_sensor_set_hw failed (VGA)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stk_sensor_configure(%struct.stk_camera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk_camera*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regval*, align 8
  store %struct.stk_camera* %0, %struct.stk_camera** %3, align 8
  %8 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %9 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %22 [
    i32 136, label %12
    i32 135, label %14
    i32 137, label %16
    i32 133, label %18
    i32 134, label %20
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @COM7_FMT_QCIF, align 4
  store i32 %13, i32* %4, align 4
  store i32 604, i32* %5, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load i32, i32* @COM7_FMT_QVGA, align 4
  store i32 %15, i32* %4, align 4
  store i32 267, i32* %5, align 4
  br label %30

16:                                               ; preds = %1
  %17 = load i32, i32* @COM7_FMT_CIF, align 4
  store i32 %17, i32* %4, align 4
  store i32 412, i32* %5, align 4
  br label %30

18:                                               ; preds = %1
  %19 = load i32, i32* @COM7_FMT_VGA, align 4
  store i32 %19, i32* %4, align 4
  store i32 11, i32* %5, align 4
  br label %30

20:                                               ; preds = %1
  %21 = load i32, i32* @COM7_FMT_SXGA, align 4
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %24 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @STK_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EFAULT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %139

30:                                               ; preds = %20, %18, %16, %14, %12
  %31 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %32 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %60 [
    i32 129, label %35
    i32 128, label %40
    i32 132, label %45
    i32 131, label %50
    i32 130, label %55
  ]

35:                                               ; preds = %30
  %36 = load i32, i32* @COM7_YUV, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.regval*, %struct.regval** @ov_fmt_uyvy, align 8
  store %struct.regval* %39, %struct.regval** %7, align 8
  br label %64

40:                                               ; preds = %30
  %41 = load i32, i32* @COM7_YUV, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.regval*, %struct.regval** @ov_fmt_yuyv, align 8
  store %struct.regval* %44, %struct.regval** %7, align 8
  br label %64

45:                                               ; preds = %30
  %46 = load i32, i32* @COM7_RGB, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load %struct.regval*, %struct.regval** @ov_fmt_rgbp, align 8
  store %struct.regval* %49, %struct.regval** %7, align 8
  br label %64

50:                                               ; preds = %30
  %51 = load i32, i32* @COM7_RGB, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load %struct.regval*, %struct.regval** @ov_fmt_rgbr, align 8
  store %struct.regval* %54, %struct.regval** %7, align 8
  br label %64

55:                                               ; preds = %30
  %56 = load i32, i32* @COM7_PBAYER, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load %struct.regval*, %struct.regval** @ov_fmt_bayer, align 8
  store %struct.regval* %59, %struct.regval** %7, align 8
  br label %64

60:                                               ; preds = %30
  %61 = call i32 (i8*, ...) @STK_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EFAULT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %139

64:                                               ; preds = %55, %50, %45, %40, %35
  %65 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %66 = load i32, i32* @REG_COM7, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @stk_sensor_outb(%struct.stk_camera* %65, i32 %66, i32 %67)
  %69 = call i32 @msleep(i32 50)
  %70 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %71 = load %struct.regval*, %struct.regval** %7, align 8
  %72 = call i32 @stk_sensor_write_regvals(%struct.stk_camera* %70, %struct.regval* %71)
  %73 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %74 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %64
  %79 = load i32, i32* @MVFP_FLIP, align 4
  br label %81

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  %83 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %84 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @MVFP_MIRROR, align 4
  br label %91

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ 0, %90 ]
  %93 = or i32 %82, %92
  store i32 %93, i32* %6, align 4
  %94 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %95 = load i32, i32* @REG_MVFP, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @stk_sensor_outb(%struct.stk_camera* %94, i32 %95, i32 %96)
  %98 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %99 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 130
  br i1 %102, label %103, label %113

103:                                              ; preds = %91
  %104 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %105 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %111 = load i32, i32* @REG_TSLB, align 4
  %112 = call i32 @stk_sensor_outb(%struct.stk_camera* %110, i32 %111, i32 8)
  br label %113

113:                                              ; preds = %109, %103, %91
  %114 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %115 = load i32, i32* @REG_ADVFH, align 4
  %116 = load i32, i32* %5, align 4
  %117 = lshr i32 %116, 8
  %118 = call i32 @stk_sensor_outb(%struct.stk_camera* %114, i32 %115, i32 %117)
  %119 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %120 = load i32, i32* @REG_ADVFL, align 4
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, 255
  %123 = call i32 @stk_sensor_outb(%struct.stk_camera* %119, i32 %120, i32 %122)
  %124 = call i32 @msleep(i32 50)
  %125 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %126 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  switch i32 %128, label %137 [
    i32 133, label %129
    i32 134, label %136
    i32 137, label %136
    i32 135, label %136
    i32 136, label %136
  ]

129:                                              ; preds = %113
  %130 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %131 = call i32 @stk_sensor_set_hw(%struct.stk_camera* %130, i32 302, i32 1582, i32 6, i32 486)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 (i8*, ...) @STK_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %129
  br label %137

136:                                              ; preds = %113, %113, %113, %113
  br label %137

137:                                              ; preds = %113, %136, %135
  %138 = call i32 @msleep(i32 10)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %137, %60, %22
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @STK_ERROR(i8*, ...) #1

declare dso_local i32 @stk_sensor_outb(%struct.stk_camera*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stk_sensor_write_regvals(%struct.stk_camera*, %struct.regval*) #1

declare dso_local i32 @stk_sensor_set_hw(%struct.stk_camera*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
