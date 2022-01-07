; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov_create_sysfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov_create_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32 }

@dev_attr_custom_id = common dso_local global i32 0, align 4
@dev_attr_model = common dso_local global i32 0, align 4
@dev_attr_bridge = common dso_local global i32 0, align 4
@dev_attr_sensor = common dso_local global i32 0, align 4
@dev_attr_brightness = common dso_local global i32 0, align 4
@dev_attr_saturation = common dso_local global i32 0, align 4
@dev_attr_contrast = common dso_local global i32 0, align 4
@dev_attr_hue = common dso_local global i32 0, align 4
@dev_attr_exposure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_device*)* @ov_create_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov_create_sysfs(%struct.video_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca i32, align 4
  store %struct.video_device* %0, %struct.video_device** %3, align 8
  %5 = load %struct.video_device*, %struct.video_device** %3, align 8
  %6 = getelementptr inbounds %struct.video_device, %struct.video_device* %5, i32 0, i32 0
  %7 = call i32 @device_create_file(i32* %6, i32* @dev_attr_custom_id)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %100

11:                                               ; preds = %1
  %12 = load %struct.video_device*, %struct.video_device** %3, align 8
  %13 = getelementptr inbounds %struct.video_device, %struct.video_device* %12, i32 0, i32 0
  %14 = call i32 @device_create_file(i32* %13, i32* @dev_attr_model)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %96

18:                                               ; preds = %11
  %19 = load %struct.video_device*, %struct.video_device** %3, align 8
  %20 = getelementptr inbounds %struct.video_device, %struct.video_device* %19, i32 0, i32 0
  %21 = call i32 @device_create_file(i32* %20, i32* @dev_attr_bridge)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %92

25:                                               ; preds = %18
  %26 = load %struct.video_device*, %struct.video_device** %3, align 8
  %27 = getelementptr inbounds %struct.video_device, %struct.video_device* %26, i32 0, i32 0
  %28 = call i32 @device_create_file(i32* %27, i32* @dev_attr_sensor)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %88

32:                                               ; preds = %25
  %33 = load %struct.video_device*, %struct.video_device** %3, align 8
  %34 = getelementptr inbounds %struct.video_device, %struct.video_device* %33, i32 0, i32 0
  %35 = call i32 @device_create_file(i32* %34, i32* @dev_attr_brightness)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %84

39:                                               ; preds = %32
  %40 = load %struct.video_device*, %struct.video_device** %3, align 8
  %41 = getelementptr inbounds %struct.video_device, %struct.video_device* %40, i32 0, i32 0
  %42 = call i32 @device_create_file(i32* %41, i32* @dev_attr_saturation)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %80

46:                                               ; preds = %39
  %47 = load %struct.video_device*, %struct.video_device** %3, align 8
  %48 = getelementptr inbounds %struct.video_device, %struct.video_device* %47, i32 0, i32 0
  %49 = call i32 @device_create_file(i32* %48, i32* @dev_attr_contrast)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %76

53:                                               ; preds = %46
  %54 = load %struct.video_device*, %struct.video_device** %3, align 8
  %55 = getelementptr inbounds %struct.video_device, %struct.video_device* %54, i32 0, i32 0
  %56 = call i32 @device_create_file(i32* %55, i32* @dev_attr_hue)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %72

60:                                               ; preds = %53
  %61 = load %struct.video_device*, %struct.video_device** %3, align 8
  %62 = getelementptr inbounds %struct.video_device, %struct.video_device* %61, i32 0, i32 0
  %63 = call i32 @device_create_file(i32* %62, i32* @dev_attr_exposure)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %68

67:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %102

68:                                               ; preds = %66
  %69 = load %struct.video_device*, %struct.video_device** %3, align 8
  %70 = getelementptr inbounds %struct.video_device, %struct.video_device* %69, i32 0, i32 0
  %71 = call i32 @device_remove_file(i32* %70, i32* @dev_attr_hue)
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.video_device*, %struct.video_device** %3, align 8
  %74 = getelementptr inbounds %struct.video_device, %struct.video_device* %73, i32 0, i32 0
  %75 = call i32 @device_remove_file(i32* %74, i32* @dev_attr_contrast)
  br label %76

76:                                               ; preds = %72, %52
  %77 = load %struct.video_device*, %struct.video_device** %3, align 8
  %78 = getelementptr inbounds %struct.video_device, %struct.video_device* %77, i32 0, i32 0
  %79 = call i32 @device_remove_file(i32* %78, i32* @dev_attr_saturation)
  br label %80

80:                                               ; preds = %76, %45
  %81 = load %struct.video_device*, %struct.video_device** %3, align 8
  %82 = getelementptr inbounds %struct.video_device, %struct.video_device* %81, i32 0, i32 0
  %83 = call i32 @device_remove_file(i32* %82, i32* @dev_attr_brightness)
  br label %84

84:                                               ; preds = %80, %38
  %85 = load %struct.video_device*, %struct.video_device** %3, align 8
  %86 = getelementptr inbounds %struct.video_device, %struct.video_device* %85, i32 0, i32 0
  %87 = call i32 @device_remove_file(i32* %86, i32* @dev_attr_sensor)
  br label %88

88:                                               ; preds = %84, %31
  %89 = load %struct.video_device*, %struct.video_device** %3, align 8
  %90 = getelementptr inbounds %struct.video_device, %struct.video_device* %89, i32 0, i32 0
  %91 = call i32 @device_remove_file(i32* %90, i32* @dev_attr_bridge)
  br label %92

92:                                               ; preds = %88, %24
  %93 = load %struct.video_device*, %struct.video_device** %3, align 8
  %94 = getelementptr inbounds %struct.video_device, %struct.video_device* %93, i32 0, i32 0
  %95 = call i32 @device_remove_file(i32* %94, i32* @dev_attr_model)
  br label %96

96:                                               ; preds = %92, %17
  %97 = load %struct.video_device*, %struct.video_device** %3, align 8
  %98 = getelementptr inbounds %struct.video_device, %struct.video_device* %97, i32 0, i32 0
  %99 = call i32 @device_remove_file(i32* %98, i32* @dev_attr_custom_id)
  br label %100

100:                                              ; preds = %96, %10
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %67
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
