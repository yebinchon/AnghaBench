; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_indycam.c_indycam_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_indycam.c_indycam_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.indycam = type { i32 }

@INDYCAM_REG_CONTROL = common dso_local global i32 0, align 4
@INDYCAM_CONTROL_AGCENA = common dso_local global i32 0, align 4
@INDYCAM_CONTROL_AWBCTL = common dso_local global i32 0, align 4
@INDYCAM_REG_SHUTTER = common dso_local global i32 0, align 4
@INDYCAM_REG_GAIN = common dso_local global i32 0, align 4
@INDYCAM_REG_RED_BALANCE = common dso_local global i32 0, align 4
@INDYCAM_REG_BLUE_BALANCE = common dso_local global i32 0, align 4
@INDYCAM_REG_RED_SATURATION = common dso_local global i32 0, align 4
@INDYCAM_REG_BLUE_SATURATION = common dso_local global i32 0, align 4
@CAMERA_VERSION_MOOSE = common dso_local global i32 0, align 4
@INDYCAM_REG_GAMMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @indycam_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @indycam_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_control*, align 8
  %5 = alloca %struct.indycam*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.indycam* @to_indycam(%struct.v4l2_subdev* %8)
  store %struct.indycam* %9, %struct.indycam** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %126 [
    i32 134, label %13
    i32 133, label %13
    i32 131, label %60
    i32 130, label %77
    i32 128, label %84
    i32 132, label %91
    i32 135, label %98
    i32 136, label %105
    i32 129, label %112
  ]

13:                                               ; preds = %2, %2
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %15 = load i32, i32* @INDYCAM_REG_CONTROL, align 4
  %16 = call i32 @indycam_read_reg(%struct.v4l2_subdev* %14, i32 %15, i32* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %129

20:                                               ; preds = %13
  %21 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 134
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @INDYCAM_CONTROL_AGCENA, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %39

34:                                               ; preds = %25
  %35 = load i32, i32* @INDYCAM_CONTROL_AGCENA, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %30
  br label %55

40:                                               ; preds = %20
  %41 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @INDYCAM_CONTROL_AWBCTL, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %54

49:                                               ; preds = %40
  %50 = load i32, i32* @INDYCAM_CONTROL_AWBCTL, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %49, %45
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %57 = load i32, i32* @INDYCAM_REG_CONTROL, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @indycam_write_reg(%struct.v4l2_subdev* %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  br label %129

60:                                               ; preds = %2
  %61 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 255
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %71

66:                                               ; preds = %60
  %67 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %68 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  br label %71

71:                                               ; preds = %66, %65
  %72 = phi i32 [ 0, %65 ], [ %70, %66 ]
  store i32 %72, i32* %6, align 4
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %74 = load i32, i32* @INDYCAM_REG_SHUTTER, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @indycam_write_reg(%struct.v4l2_subdev* %73, i32 %74, i32 %75)
  store i32 %76, i32* %7, align 4
  br label %129

77:                                               ; preds = %2
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %79 = load i32, i32* @INDYCAM_REG_GAIN, align 4
  %80 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %81 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @indycam_write_reg(%struct.v4l2_subdev* %78, i32 %79, i32 %82)
  store i32 %83, i32* %7, align 4
  br label %129

84:                                               ; preds = %2
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %86 = load i32, i32* @INDYCAM_REG_RED_BALANCE, align 4
  %87 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %88 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @indycam_write_reg(%struct.v4l2_subdev* %85, i32 %86, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %129

91:                                               ; preds = %2
  %92 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %93 = load i32, i32* @INDYCAM_REG_BLUE_BALANCE, align 4
  %94 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %95 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @indycam_write_reg(%struct.v4l2_subdev* %92, i32 %93, i32 %96)
  store i32 %97, i32* %7, align 4
  br label %129

98:                                               ; preds = %2
  %99 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %100 = load i32, i32* @INDYCAM_REG_RED_SATURATION, align 4
  %101 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %102 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @indycam_write_reg(%struct.v4l2_subdev* %99, i32 %100, i32 %103)
  store i32 %104, i32* %7, align 4
  br label %129

105:                                              ; preds = %2
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %107 = load i32, i32* @INDYCAM_REG_BLUE_SATURATION, align 4
  %108 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %109 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @indycam_write_reg(%struct.v4l2_subdev* %106, i32 %107, i32 %110)
  store i32 %111, i32* %7, align 4
  br label %129

112:                                              ; preds = %2
  %113 = load %struct.indycam*, %struct.indycam** %5, align 8
  %114 = getelementptr inbounds %struct.indycam, %struct.indycam* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CAMERA_VERSION_MOOSE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %120 = load i32, i32* @INDYCAM_REG_GAMMA, align 4
  %121 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %122 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @indycam_write_reg(%struct.v4l2_subdev* %119, i32 %120, i32 %123)
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %118, %112
  br label %129

126:                                              ; preds = %2
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %126, %125, %105, %98, %91, %84, %77, %71, %55, %19
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local %struct.indycam* @to_indycam(%struct.v4l2_subdev*) #1

declare dso_local i32 @indycam_read_reg(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @indycam_write_reg(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
