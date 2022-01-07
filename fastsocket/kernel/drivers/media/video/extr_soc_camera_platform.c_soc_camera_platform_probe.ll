; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera_platform.c_soc_camera_platform_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera_platform.c_soc_camera_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.soc_camera_platform_info* }
%struct.soc_camera_platform_info = type { i32 }
%struct.soc_camera_host = type { i32 }
%struct.soc_camera_platform_priv = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.soc_camera_device = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Platform has not set soc_camera_device pointer!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@soc_camera_platform_ops = common dso_local global i32 0, align 4
@platform_subdev_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @soc_camera_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.soc_camera_host*, align 8
  %5 = alloca %struct.soc_camera_platform_priv*, align 8
  %6 = alloca %struct.soc_camera_platform_info*, align 8
  %7 = alloca %struct.soc_camera_device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.soc_camera_platform_info*, %struct.soc_camera_platform_info** %11, align 8
  store %struct.soc_camera_platform_info* %12, %struct.soc_camera_platform_info** %6, align 8
  %13 = load %struct.soc_camera_platform_info*, %struct.soc_camera_platform_info** %6, align 8
  %14 = icmp ne %struct.soc_camera_platform_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %92

18:                                               ; preds = %1
  %19 = load %struct.soc_camera_platform_info*, %struct.soc_camera_platform_info** %6, align 8
  %20 = getelementptr inbounds %struct.soc_camera_platform_info, %struct.soc_camera_platform_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(%struct.TYPE_11__* %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %92

29:                                               ; preds = %18
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.soc_camera_platform_priv* @kzalloc(i32 4, i32 %30)
  store %struct.soc_camera_platform_priv* %31, %struct.soc_camera_platform_priv** %5, align 8
  %32 = load %struct.soc_camera_platform_priv*, %struct.soc_camera_platform_priv** %5, align 8
  %33 = icmp ne %struct.soc_camera_platform_priv* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %92

37:                                               ; preds = %29
  %38 = load %struct.soc_camera_platform_info*, %struct.soc_camera_platform_info** %6, align 8
  %39 = getelementptr inbounds %struct.soc_camera_platform_info, %struct.soc_camera_platform_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.soc_camera_device* @to_soc_camera_dev(i32 %40)
  store %struct.soc_camera_device* %41, %struct.soc_camera_device** %7, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.soc_camera_platform_priv*, %struct.soc_camera_platform_priv** %5, align 8
  %44 = getelementptr inbounds %struct.soc_camera_platform_priv, %struct.soc_camera_platform_priv* %43, i32 0, i32 0
  %45 = call i32 @platform_set_drvdata(%struct.platform_device* %42, %struct.TYPE_9__* %44)
  %46 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %47 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %46, i32 0, i32 1
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_set_drvdata(%struct.TYPE_10__* %47, %struct.TYPE_11__* %49)
  %51 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %52 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %51, i32 0, i32 0
  store i32* @soc_camera_platform_ops, i32** %52, align 8
  %53 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %54 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %56)
  store %struct.soc_camera_host* %57, %struct.soc_camera_host** %4, align 8
  %58 = load %struct.soc_camera_platform_priv*, %struct.soc_camera_platform_priv** %5, align 8
  %59 = getelementptr inbounds %struct.soc_camera_platform_priv, %struct.soc_camera_platform_priv* %58, i32 0, i32 0
  %60 = call i32 @v4l2_subdev_init(%struct.TYPE_9__* %59, i32* @platform_subdev_ops)
  %61 = load %struct.soc_camera_platform_priv*, %struct.soc_camera_platform_priv** %5, align 8
  %62 = getelementptr inbounds %struct.soc_camera_platform_priv, %struct.soc_camera_platform_priv* %61, i32 0, i32 0
  %63 = load %struct.soc_camera_platform_info*, %struct.soc_camera_platform_info** %6, align 8
  %64 = call i32 @v4l2_set_subdevdata(%struct.TYPE_9__* %62, %struct.soc_camera_platform_info* %63)
  %65 = load %struct.soc_camera_platform_priv*, %struct.soc_camera_platform_priv** %5, align 8
  %66 = getelementptr inbounds %struct.soc_camera_platform_priv, %struct.soc_camera_platform_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_name(%struct.TYPE_11__* %70)
  %72 = load i32, i32* @V4L2_SUBDEV_NAME_SIZE, align 4
  %73 = call i32 @strncpy(i32 %68, i32 %71, i32 %72)
  %74 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %75 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %74, i32 0, i32 0
  %76 = load %struct.soc_camera_platform_priv*, %struct.soc_camera_platform_priv** %5, align 8
  %77 = getelementptr inbounds %struct.soc_camera_platform_priv, %struct.soc_camera_platform_priv* %76, i32 0, i32 0
  %78 = call i32 @v4l2_device_register_subdev(i32* %75, %struct.TYPE_9__* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %37
  br label %84

82:                                               ; preds = %37
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %92

84:                                               ; preds = %81
  %85 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %86 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = call i32 @platform_set_drvdata(%struct.platform_device* %87, %struct.TYPE_9__* null)
  %89 = load %struct.soc_camera_platform_priv*, %struct.soc_camera_platform_priv** %5, align 8
  %90 = call i32 @kfree(%struct.soc_camera_platform_priv* %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %84, %82, %34, %23, %15
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.soc_camera_platform_priv* @kzalloc(i32, i32) #1

declare dso_local %struct.soc_camera_device* @to_soc_camera_dev(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.TYPE_9__*, %struct.soc_camera_platform_info*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @v4l2_device_register_subdev(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.soc_camera_platform_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
