; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_g_modulator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_g_modulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_modulator = type { i64, i32, i32, i8*, i8*, i32 }
%struct.si4713_device = type { i32, %struct.TYPE_2__, i8*, i64 }
%struct.TYPE_2__ = type { i8* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"FM Modulator\00", align 1
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS = common dso_local global i32 0, align 4
@FREQ_RANGE_LOW = common dso_local global i32 0, align 4
@FREQ_RANGE_HIGH = common dso_local global i32 0, align 4
@SI4713_TX_COMPONENT_ENABLE = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_RDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)* @si4713_g_modulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_g_modulator(%struct.v4l2_subdev* %0, %struct.v4l2_modulator* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_modulator*, align 8
  %5 = alloca %struct.si4713_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_modulator* %1, %struct.v4l2_modulator** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev* %8)
  store %struct.si4713_device* %9, %struct.si4713_device** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.si4713_device*, %struct.si4713_device** %5, align 8
  %11 = icmp ne %struct.si4713_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  br label %104

15:                                               ; preds = %2
  %16 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %104

23:                                               ; preds = %15
  %24 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @strncpy(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 32)
  %28 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %29 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @V4L2_TUNER_CAP_RDS, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @FREQ_RANGE_LOW, align 4
  %36 = call i8* @si4713_to_v4l2(i32 %35)
  %37 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @FREQ_RANGE_HIGH, align 4
  %40 = call i8* @si4713_to_v4l2(i32 %39)
  %41 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.si4713_device*, %struct.si4713_device** %5, align 8
  %44 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.si4713_device*, %struct.si4713_device** %5, align 8
  %47 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  %51 = load %struct.si4713_device*, %struct.si4713_device** %5, align 8
  %52 = load i32, i32* @SI4713_TX_COMPONENT_ENABLE, align 4
  %53 = call i32 @si4713_read_property(%struct.si4713_device* %51, i32 %52, i32* %7)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %100

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @get_status_bit(i32 %58, i32 1, i32 2)
  %60 = load %struct.si4713_device*, %struct.si4713_device** %5, align 8
  %61 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i8* @get_status_bit(i32 %62, i32 2, i32 4)
  %64 = load %struct.si4713_device*, %struct.si4713_device** %5, align 8
  %65 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  br label %67

67:                                               ; preds = %57, %23
  %68 = load %struct.si4713_device*, %struct.si4713_device** %5, align 8
  %69 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %74 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %4, align 8
  %75 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %80

76:                                               ; preds = %67
  %77 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %78 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %4, align 8
  %79 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load %struct.si4713_device*, %struct.si4713_device** %5, align 8
  %82 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %88 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %4, align 8
  %89 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %99

92:                                               ; preds = %80
  %93 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %4, align 8
  %96 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %92, %86
  br label %100

100:                                              ; preds = %99, %56
  %101 = load %struct.si4713_device*, %struct.si4713_device** %5, align 8
  %102 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  br label %104

104:                                              ; preds = %100, %20, %12
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i8* @si4713_to_v4l2(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @si4713_read_property(%struct.si4713_device*, i32, i32*) #1

declare dso_local i8* @get_status_bit(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
