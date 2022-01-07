; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_decoder.c_au8522_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_decoder.c_au8522_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.au8522_state = type { i32, i32, i32, i32 }

@AU8522_TVDEC_BRIGHTNESS_REG00AH = common dso_local global i32 0, align 4
@AU8522_TVDEC_CONTRAST_REG00BH = common dso_local global i32 0, align 4
@AU8522_TVDEC_SATURATION_CB_REG00CH = common dso_local global i32 0, align 4
@AU8522_TVDEC_SATURATION_CR_REG00DH = common dso_local global i32 0, align 4
@AU8522_TVDEC_HUE_H_REG00EH = common dso_local global i32 0, align 4
@AU8522_TVDEC_HUE_L_REG00FH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @au8522_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au8522_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.au8522_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.au8522_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.au8522_state* %8, %struct.au8522_state** %6, align 8
  %9 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %76 [
    i32 131, label %12
    i32 130, label %25
    i32 128, label %37
    i32 129, label %55
    i32 132, label %75
    i32 135, label %75
    i32 133, label %75
    i32 136, label %75
    i32 134, label %75
  ]

12:                                               ; preds = %2
  %13 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %17 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %19 = load i32, i32* @AU8522_TVDEC_BRIGHTNESS_REG00AH, align 4
  %20 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 128
  %24 = call i32 @au8522_writereg(%struct.au8522_state* %18, i32 %19, i32 %23)
  br label %79

25:                                               ; preds = %2
  %26 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %30 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %32 = load i32, i32* @AU8522_TVDEC_CONTRAST_REG00BH, align 4
  %33 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @au8522_writereg(%struct.au8522_state* %31, i32 %32, i32 %35)
  br label %79

37:                                               ; preds = %2
  %38 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %42 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %44 = load i32, i32* @AU8522_TVDEC_SATURATION_CB_REG00CH, align 4
  %45 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @au8522_writereg(%struct.au8522_state* %43, i32 %44, i32 %47)
  %49 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %50 = load i32, i32* @AU8522_TVDEC_SATURATION_CR_REG00DH, align 4
  %51 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @au8522_writereg(%struct.au8522_state* %49, i32 %50, i32 %53)
  br label %79

55:                                               ; preds = %2
  %56 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %60 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %62 = load i32, i32* @AU8522_TVDEC_HUE_H_REG00EH, align 4
  %63 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 8
  %67 = call i32 @au8522_writereg(%struct.au8522_state* %61, i32 %62, i32 %66)
  %68 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %69 = load i32, i32* @AU8522_TVDEC_HUE_L_REG00FH, align 4
  %70 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 255
  %74 = call i32 @au8522_writereg(%struct.au8522_state* %68, i32 %69, i32 %73)
  br label %79

75:                                               ; preds = %2, %2, %2, %2, %2
  br label %76

76:                                               ; preds = %2, %75
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %55, %37, %25, %12
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.au8522_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @au8522_writereg(%struct.au8522_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
