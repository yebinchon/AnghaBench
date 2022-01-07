; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.vino_channel_settings = type { i32 }

@vino_drvdata = common dso_local global %struct.TYPE_6__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VINO_INDYCAM_V4L2_CONTROL_COUNT = common dso_local global i32 0, align 4
@vino_indycam_v4l2_controls = common dso_local global %struct.TYPE_5__* null, align 8
@ERANGE = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_ctrl = common dso_local global i32 0, align 4
@VINO_SAA7191_V4L2_CONTROL_COUNT = common dso_local global i32 0, align 4
@vino_saa7191_v4l2_controls = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vino_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_control*, align 8
  %7 = alloca %struct.vino_channel_settings*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %11)
  store %struct.vino_channel_settings* %12, %struct.vino_channel_settings** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vino_drvdata, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %18 = call i32 @vino_is_input_owner(%struct.vino_channel_settings* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  br label %157

23:                                               ; preds = %3
  %24 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %25 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %153 [
    i32 129, label %27
    i32 130, label %90
    i32 128, label %90
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %47, %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @VINO_INDYCAM_V4L2_CONTROL_COUNT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vino_indycam_v4l2_controls, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %50

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %30

50:                                               ; preds = %45, %30
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %157

54:                                               ; preds = %50
  %55 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vino_indycam_v4l2_controls, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %57, %63
  br i1 %64, label %76, label %65

65:                                               ; preds = %54
  %66 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %67 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vino_indycam_v4l2_controls, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %68, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %65, %54
  %77 = load i32, i32* @ERANGE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %157

79:                                               ; preds = %65
  %80 = load i32, i32* @core, align 4
  %81 = load i32, i32* @s_ctrl, align 4
  %82 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %83 = call i32 @camera_call(i32 %80, i32 %81, %struct.v4l2_control* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %86, %79
  br label %156

90:                                               ; preds = %23, %23
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %110, %90
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @VINO_SAA7191_V4L2_CONTROL_COUNT, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vino_saa7191_v4l2_controls, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %105 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  br label %113

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %93

113:                                              ; preds = %108, %93
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %157

117:                                              ; preds = %113
  %118 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %119 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vino_saa7191_v4l2_controls, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %120, %126
  br i1 %127, label %139, label %128

128:                                              ; preds = %117
  %129 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %130 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vino_saa7191_v4l2_controls, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %131, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %128, %117
  %140 = load i32, i32* @ERANGE, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %10, align 4
  br label %157

142:                                              ; preds = %128
  %143 = load i32, i32* @core, align 4
  %144 = load i32, i32* @s_ctrl, align 4
  %145 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %146 = call i32 @decoder_call(i32 %143, i32 %144, %struct.v4l2_control* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %149, %142
  br label %156

153:                                              ; preds = %23
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %153, %152, %89
  br label %157

157:                                              ; preds = %156, %139, %116, %76, %53, %20
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vino_drvdata, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i64, i64* %8, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* %159, i64 %160)
  %162 = load i32, i32* %10, align 4
  ret i32 %162
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vino_is_input_owner(%struct.vino_channel_settings*) #1

declare dso_local i32 @camera_call(i32, i32, %struct.v4l2_control*) #1

declare dso_local i32 @decoder_call(i32, i32, %struct.v4l2_control*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
