; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7343.c_adv7343_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7343.c_adv7343_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.adv7343_state = type { i32, i32, i32 }

@ADV7343_BRIGHTNESS_MIN = common dso_local global i32 0, align 4
@ADV7343_BRIGHTNESS_MAX = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"invalid brightness settings %d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@ADV7343_SD_BRIGHTNESS_WSS = common dso_local global i32 0, align 4
@ADV7343_HUE_MIN = common dso_local global i32 0, align 4
@ADV7343_HUE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid hue settings %d\0A\00", align 1
@ADV7343_SD_HUE_REG = common dso_local global i32 0, align 4
@ADV7343_GAIN_MIN = common dso_local global i32 0, align 4
@ADV7343_GAIN_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid gain settings %d\0A\00", align 1
@POSITIVE_GAIN_MAX = common dso_local global i32 0, align 4
@NEGATIVE_GAIN_MIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"gain settings not within the specified range\0A\00", align 1
@ADV7343_DAC2_OUTPUT_LEVEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to set the encoder controls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @adv7343_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7343_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.adv7343_state*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.adv7343_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.adv7343_state* %9, %struct.adv7343_state** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %130 [
    i32 130, label %13
    i32 128, label %46
    i32 129, label %79
  ]

13:                                               ; preds = %2
  %14 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ADV7343_BRIGHTNESS_MIN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ADV7343_BRIGHTNESS_MAX, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19, %13
  %26 = load i32, i32* @debug, align 4
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %28 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %26, %struct.v4l2_subdev* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ERANGE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %141

34:                                               ; preds = %19
  %35 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %39 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %41 = load i32, i32* @ADV7343_SD_BRIGHTNESS_WSS, align 4
  %42 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %43 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @adv7343_write(%struct.v4l2_subdev* %40, i32 %41, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %133

46:                                               ; preds = %2
  %47 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ADV7343_HUE_MIN, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ADV7343_HUE_MAX, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52, %46
  %59 = load i32, i32* @debug, align 4
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %61 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %59, %struct.v4l2_subdev* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ERANGE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %141

67:                                               ; preds = %52
  %68 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %72 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %74 = load i32, i32* @ADV7343_SD_HUE_REG, align 4
  %75 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %76 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @adv7343_write(%struct.v4l2_subdev* %73, i32 %74, i32 %77)
  store i32 %78, i32* %7, align 4
  br label %133

79:                                               ; preds = %2
  %80 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %81 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ADV7343_GAIN_MIN, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ADV7343_GAIN_MAX, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %85, %79
  %92 = load i32, i32* @debug, align 4
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %94 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %92, %struct.v4l2_subdev* %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @ERANGE, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %141

100:                                              ; preds = %85
  %101 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %102 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @POSITIVE_GAIN_MAX, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %108 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @NEGATIVE_GAIN_MIN, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i32, i32* @debug, align 4
  %114 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %115 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %113, %struct.v4l2_subdev* %114, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32, i32* @ERANGE, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %141

118:                                              ; preds = %106, %100
  %119 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %120 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %123 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %125 = load i32, i32* @ADV7343_DAC2_OUTPUT_LEVEL, align 4
  %126 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %127 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @adv7343_write(%struct.v4l2_subdev* %124, i32 %125, i32 %128)
  store i32 %129, i32* %7, align 4
  br label %133

130:                                              ; preds = %2
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %141

133:                                              ; preds = %118, %67, %34
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %138 = call i32 @v4l2_err(%struct.v4l2_subdev* %137, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %130, %112, %91, %58, %25
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.adv7343_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @adv7343_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
