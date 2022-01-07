; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7343.c_adv7343_setoutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7343.c_adv7343_setoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7343_state = type { i32, i8, i8, i8 }

@ADV7343_SVIDEO_ID = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Invalid output type or output type not supported:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADV7343_COMPOSITE_ID = common dso_local global i64 0, align 8
@ADV7343_COMPOSITE_POWER_VALUE = common dso_local global i8 0, align 1
@ADV7343_COMPONENT_ID = common dso_local global i64 0, align 8
@ADV7343_COMPONENT_POWER_VALUE = common dso_local global i8 0, align 1
@ADV7343_SVIDEO_POWER_VALUE = common dso_local global i8 0, align 1
@ADV7343_POWER_MODE_REG = common dso_local global i32 0, align 4
@YUV_OUTPUT_SELECT = common dso_local global i8 0, align 1
@ADV7343_MODE_REG0 = common dso_local global i32 0, align 4
@SD_DAC_1_DI = common dso_local global i8 0, align 1
@SD_DAC_2_DI = common dso_local global i8 0, align 1
@ADV7343_SD_MODE_REG2 = common dso_local global i32 0, align 4
@HD_RGB_INPUT_DI = common dso_local global i8 0, align 1
@HD_DAC_SWAP_DI = common dso_local global i8 0, align 1
@ADV7343_HD_MODE_REG6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error setting output, write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64)* @adv7343_setoutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7343_setoutput(%struct.v4l2_subdev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.adv7343_state*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.adv7343_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.adv7343_state* %10, %struct.adv7343_state** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @ADV7343_SVIDEO_ID, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @debug, align 4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @v4l2_dbg(i32 1, i32 %15, %struct.v4l2_subdev* %16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %140

21:                                               ; preds = %2
  %22 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %23 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 3
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %7, align 1
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @ADV7343_COMPOSITE_ID, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load i8, i8* @ADV7343_COMPOSITE_POWER_VALUE, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %7, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %7, align 1
  br label %56

37:                                               ; preds = %21
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @ADV7343_COMPONENT_ID, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i8, i8* @ADV7343_COMPONENT_POWER_VALUE, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %45, %43
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %7, align 1
  br label %55

48:                                               ; preds = %37
  %49 = load i8, i8* @ADV7343_SVIDEO_POWER_VALUE, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %7, align 1
  br label %55

55:                                               ; preds = %48, %41
  br label %56

56:                                               ; preds = %55, %30
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %58 = load i32, i32* @ADV7343_POWER_MODE_REG, align 4
  %59 = load i8, i8* %7, align 1
  %60 = call i32 @adv7343_write(%struct.v4l2_subdev* %57, i32 %58, i8 zeroext %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %132

64:                                               ; preds = %56
  %65 = load i8, i8* %7, align 1
  %66 = zext i8 %65 to i32
  %67 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %68 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %70 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %69, i32 0, i32 1
  %71 = load i8, i8* %70, align 4
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @YUV_OUTPUT_SELECT, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %72, %74
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %7, align 1
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %78 = load i32, i32* @ADV7343_MODE_REG0, align 4
  %79 = load i8, i8* %7, align 1
  %80 = call i32 @adv7343_write(%struct.v4l2_subdev* %77, i32 %78, i8 zeroext %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %64
  br label %132

84:                                               ; preds = %64
  %85 = load i8, i8* %7, align 1
  %86 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %87 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %86, i32 0, i32 1
  store i8 %85, i8* %87, align 4
  %88 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %89 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %88, i32 0, i32 2
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @SD_DAC_1_DI, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @SD_DAC_2_DI, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %93, %95
  %97 = and i32 %91, %96
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %7, align 1
  %99 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %100 = load i32, i32* @ADV7343_SD_MODE_REG2, align 4
  %101 = load i8, i8* %7, align 1
  %102 = call i32 @adv7343_write(%struct.v4l2_subdev* %99, i32 %100, i8 zeroext %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %84
  br label %132

106:                                              ; preds = %84
  %107 = load i8, i8* %7, align 1
  %108 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %109 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %108, i32 0, i32 2
  store i8 %107, i8* %109, align 1
  %110 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %111 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %110, i32 0, i32 3
  %112 = load i8, i8* %111, align 2
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* @HD_RGB_INPUT_DI, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* @HD_DAC_SWAP_DI, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %115, %117
  %119 = and i32 %113, %118
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %7, align 1
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %122 = load i32, i32* @ADV7343_HD_MODE_REG6, align 4
  %123 = load i8, i8* %7, align 1
  %124 = call i32 @adv7343_write(%struct.v4l2_subdev* %121, i32 %122, i8 zeroext %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %106
  br label %132

128:                                              ; preds = %106
  %129 = load i8, i8* %7, align 1
  %130 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %131 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %130, i32 0, i32 3
  store i8 %129, i8* %131, align 2
  br label %132

132:                                              ; preds = %128, %127, %105, %83, %63
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %137 = call i32 @v4l2_err(%struct.v4l2_subdev* %136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %14
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.adv7343_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i64) #1

declare dso_local i32 @adv7343_write(%struct.v4l2_subdev*, i32, i8 zeroext) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
