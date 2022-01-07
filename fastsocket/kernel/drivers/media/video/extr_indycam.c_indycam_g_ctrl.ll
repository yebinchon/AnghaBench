; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_indycam.c_indycam_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_indycam.c_indycam_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.indycam = type { i32 }

@INDYCAM_REG_CONTROL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
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
@INDYCAM_GAMMA_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @indycam_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @indycam_g_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.indycam*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.indycam* @to_indycam(%struct.v4l2_subdev* %9)
  store %struct.indycam* %10, %struct.indycam** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %156 [
    i32 134, label %14
    i32 133, label %14
    i32 131, label %47
    i32 130, label %67
    i32 128, label %80
    i32 132, label %93
    i32 135, label %106
    i32 136, label %119
    i32 129, label %132
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = load i32, i32* @INDYCAM_REG_CONTROL, align 4
  %17 = call i32 @indycam_read_reg(%struct.v4l2_subdev* %15, i32 %16, i32* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %161

23:                                               ; preds = %14
  %24 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 134
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @INDYCAM_CONTROL_AGCENA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %46

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @INDYCAM_CONTROL_AWBCTL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %28
  br label %159

47:                                               ; preds = %2
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %49 = load i32, i32* @INDYCAM_REG_SHUTTER, align 4
  %50 = call i32 @indycam_read_reg(%struct.v4l2_subdev* %48, i32 %49, i32* %7)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %161

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  br label %63

63:                                               ; preds = %60, %59
  %64 = phi i32 [ 255, %59 ], [ %62, %60 ]
  %65 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %159

67:                                               ; preds = %2
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %69 = load i32, i32* @INDYCAM_REG_GAIN, align 4
  %70 = call i32 @indycam_read_reg(%struct.v4l2_subdev* %68, i32 %69, i32* %7)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %161

76:                                               ; preds = %67
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %159

80:                                               ; preds = %2
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %82 = load i32, i32* @INDYCAM_REG_RED_BALANCE, align 4
  %83 = call i32 @indycam_read_reg(%struct.v4l2_subdev* %81, i32 %82, i32* %7)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %161

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %92 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %159

93:                                               ; preds = %2
  %94 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %95 = load i32, i32* @INDYCAM_REG_BLUE_BALANCE, align 4
  %96 = call i32 @indycam_read_reg(%struct.v4l2_subdev* %94, i32 %95, i32* %7)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %161

102:                                              ; preds = %93
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %105 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %159

106:                                              ; preds = %2
  %107 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %108 = load i32, i32* @INDYCAM_REG_RED_SATURATION, align 4
  %109 = call i32 @indycam_read_reg(%struct.v4l2_subdev* %107, i32 %108, i32* %7)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %161

115:                                              ; preds = %106
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %118 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  br label %159

119:                                              ; preds = %2
  %120 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %121 = load i32, i32* @INDYCAM_REG_BLUE_SATURATION, align 4
  %122 = call i32 @indycam_read_reg(%struct.v4l2_subdev* %120, i32 %121, i32* %7)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %161

128:                                              ; preds = %119
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %131 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %159

132:                                              ; preds = %2
  %133 = load %struct.indycam*, %struct.indycam** %6, align 8
  %134 = getelementptr inbounds %struct.indycam, %struct.indycam* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CAMERA_VERSION_MOOSE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %140 = load i32, i32* @INDYCAM_REG_GAMMA, align 4
  %141 = call i32 @indycam_read_reg(%struct.v4l2_subdev* %139, i32 %140, i32* %7)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* @EIO, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %161

147:                                              ; preds = %138
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %150 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %155

151:                                              ; preds = %132
  %152 = load i32, i32* @INDYCAM_GAMMA_DEFAULT, align 4
  %153 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %154 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %151, %147
  br label %159

156:                                              ; preds = %2
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %156, %155, %128, %115, %102, %89, %76, %63, %46
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %144, %125, %112, %99, %86, %73, %53, %20
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.indycam* @to_indycam(%struct.v4l2_subdev*) #1

declare dso_local i32 @indycam_read_reg(%struct.v4l2_subdev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
