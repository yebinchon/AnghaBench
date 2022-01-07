; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hdpvr_fh* }
%struct.hdpvr_fh = type { %struct.hdpvr_device* }
%struct.hdpvr_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.v4l2_control = type { i32, i32 }

@CTRL_BRIGHTNESS = common dso_local global i32 0, align 4
@CTRL_CONTRAST = common dso_local global i32 0, align 4
@CTRL_SATURATION = common dso_local global i32 0, align 4
@CTRL_HUE = common dso_local global i32 0, align 4
@CTRL_SHARPNESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.hdpvr_fh*, align 8
  %9 = alloca %struct.hdpvr_device*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %12, align 8
  store %struct.hdpvr_fh* %13, %struct.hdpvr_fh** %8, align 8
  %14 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %8, align 8
  %15 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %14, i32 0, i32 0
  %16 = load %struct.hdpvr_device*, %struct.hdpvr_device** %15, align 8
  store %struct.hdpvr_device* %16, %struct.hdpvr_device** %9, align 8
  %17 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %105 [
    i32 132, label %20
    i32 131, label %37
    i32 129, label %54
    i32 130, label %71
    i32 128, label %88
  ]

20:                                               ; preds = %3
  %21 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %22 = load i32, i32* @CTRL_BRIGHTNESS, align 4
  %23 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %21, i32 %22, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %20
  %30 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %34 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %20
  br label %108

37:                                               ; preds = %3
  %38 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %39 = load i32, i32* @CTRL_CONTRAST, align 4
  %40 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %38, i32 %39, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %37
  %47 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %51 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %37
  br label %108

54:                                               ; preds = %3
  %55 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %56 = load i32, i32* @CTRL_SATURATION, align 4
  %57 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %55, i32 %56, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %54
  %64 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %68 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %54
  br label %108

71:                                               ; preds = %3
  %72 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %73 = load i32, i32* @CTRL_HUE, align 4
  %74 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %72, i32 %73, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %71
  %81 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %85 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %71
  br label %108

88:                                               ; preds = %3
  %89 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %90 = load i32, i32* @CTRL_SHARPNESS, align 4
  %91 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %89, i32 %90, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %88
  %98 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hdpvr_device*, %struct.hdpvr_device** %9, align 8
  %102 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %88
  br label %108

105:                                              ; preds = %3
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %110

108:                                              ; preds = %104, %87, %70, %53, %36
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @hdpvr_config_call(%struct.hdpvr_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
