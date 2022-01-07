; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.camera_data = type { i32 }
%struct.v4l2_control = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"Set control id:%d, value:%d\0A\00", align 1
@NUM_CONTROLS = common dso_local global i32 0, align 4
@controls = common dso_local global %struct.TYPE_8__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@flicker_controls = common dso_local global %struct.TYPE_7__* null, align 8
@framerate_controls = common dso_local global %struct.TYPE_6__* null, align 8
@lights_controls = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_s_ctrl(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca %struct.v4l2_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.camera_data* %1, %struct.camera_data** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.v4l2_control*
  store %struct.v4l2_control* %10, %struct.v4l2_control** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %60, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NUM_CONTROLS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @controls, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %22
  %34 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @controls, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %36, %42
  br i1 %43, label %55, label %44

44:                                               ; preds = %33
  %45 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @controls, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %47, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %44, %33
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %164

58:                                               ; preds = %44
  br label %63

59:                                               ; preds = %22
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %18

63:                                               ; preds = %58, %18
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @NUM_CONTROLS, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %164

70:                                               ; preds = %63
  %71 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %72 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %159 [
    i32 132, label %74
    i32 131, label %80
    i32 129, label %86
    i32 130, label %92
    i32 128, label %98
    i32 134, label %104
    i32 137, label %110
    i32 139, label %116
    i32 138, label %126
    i32 133, label %136
    i32 136, label %142
    i32 135, label %152
  ]

74:                                               ; preds = %70
  %75 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %76 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %77 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @cpia2_set_brightness(%struct.camera_data* %75, i64 %78)
  br label %162

80:                                               ; preds = %70
  %81 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %82 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %83 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @cpia2_set_contrast(%struct.camera_data* %81, i64 %84)
  br label %162

86:                                               ; preds = %70
  %87 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %88 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %89 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @cpia2_set_saturation(%struct.camera_data* %87, i64 %90)
  br label %162

92:                                               ; preds = %70
  %93 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %94 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %95 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @cpia2_set_property_mirror(%struct.camera_data* %93, i64 %96)
  br label %162

98:                                               ; preds = %70
  %99 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %100 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %101 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @cpia2_set_property_flip(%struct.camera_data* %99, i64 %102)
  br label %162

104:                                              ; preds = %70
  %105 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %106 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %107 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @cpia2_set_target_kb(%struct.camera_data* %105, i64 %108)
  store i32 %109, i32* %8, align 4
  br label %162

110:                                              ; preds = %70
  %111 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %112 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %113 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @cpia2_set_gpio(%struct.camera_data* %111, i64 %114)
  store i32 %115, i32* %8, align 4
  br label %162

116:                                              ; preds = %70
  %117 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** @flicker_controls, align 8
  %119 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %120 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @cpia2_set_flicker_mode(%struct.camera_data* %117, i32 %124)
  store i32 %125, i32* %8, align 4
  br label %162

126:                                              ; preds = %70
  %127 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** @framerate_controls, align 8
  %129 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %130 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @cpia2_set_fps(%struct.camera_data* %127, i32 %134)
  store i32 %135, i32* %8, align 4
  br label %162

136:                                              ; preds = %70
  %137 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %138 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %139 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @cpia2_usb_change_streaming_alternate(%struct.camera_data* %137, i64 %140)
  store i32 %141, i32* %8, align 4
  br label %162

142:                                              ; preds = %70
  %143 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lights_controls, align 8
  %145 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %146 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @cpia2_set_gpio(%struct.camera_data* %143, i64 %150)
  store i32 %151, i32* %8, align 4
  br label %162

152:                                              ; preds = %70
  %153 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %154 = call i32 @cpia2_usb_stream_pause(%struct.camera_data* %153)
  %155 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %156 = call i32 @cpia2_reset_camera(%struct.camera_data* %155)
  %157 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %158 = call i32 @cpia2_usb_stream_resume(%struct.camera_data* %157)
  br label %162

159:                                              ; preds = %70
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %159, %152, %142, %136, %126, %116, %110, %104, %98, %92, %86, %80, %74
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %67, %55
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @DBG(i8*, i32, i64) #1

declare dso_local i32 @cpia2_set_brightness(%struct.camera_data*, i64) #1

declare dso_local i32 @cpia2_set_contrast(%struct.camera_data*, i64) #1

declare dso_local i32 @cpia2_set_saturation(%struct.camera_data*, i64) #1

declare dso_local i32 @cpia2_set_property_mirror(%struct.camera_data*, i64) #1

declare dso_local i32 @cpia2_set_property_flip(%struct.camera_data*, i64) #1

declare dso_local i32 @cpia2_set_target_kb(%struct.camera_data*, i64) #1

declare dso_local i32 @cpia2_set_gpio(%struct.camera_data*, i64) #1

declare dso_local i32 @cpia2_set_flicker_mode(%struct.camera_data*, i32) #1

declare dso_local i32 @cpia2_set_fps(%struct.camera_data*, i32) #1

declare dso_local i32 @cpia2_usb_change_streaming_alternate(%struct.camera_data*, i64) #1

declare dso_local i32 @cpia2_usb_stream_pause(%struct.camera_data*) #1

declare dso_local i32 @cpia2_reset_camera(%struct.camera_data*) #1

declare dso_local i32 @cpia2_usb_stream_resume(%struct.camera_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
