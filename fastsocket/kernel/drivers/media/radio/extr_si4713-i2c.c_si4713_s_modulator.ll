; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_s_modulator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_s_modulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_modulator = type { i64, i32 }
%struct.si4713_device = type { i32, %struct.TYPE_2__, i8*, i64 }
%struct.TYPE_2__ = type { i8* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_RDS = common dso_local global i32 0, align 4
@SI4713_TX_COMPONENT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)* @si4713_s_modulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_s_modulator(%struct.v4l2_subdev* %0, %struct.v4l2_modulator* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_modulator*, align 8
  %6 = alloca %struct.si4713_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_modulator* %1, %struct.v4l2_modulator** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev* %11)
  store %struct.si4713_device* %12, %struct.si4713_device** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %14 = icmp ne %struct.si4713_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %100

18:                                               ; preds = %2
  %19 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %100

26:                                               ; preds = %18
  %27 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i8* inttoptr (i64 1 to i8*), i8** %8, align 8
  br label %46

34:                                               ; preds = %26
  %35 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i8* null, i8** %8, align 8
  br label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %100

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %33
  %47 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %9, align 8
  %58 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %59 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %62 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %46
  %66 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %67 = load i32, i32* @SI4713_TX_COMPONENT_ENABLE, align 4
  %68 = call i32 @si4713_read_property(%struct.si4713_device* %66, i32 %67, i32* %10)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %95

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @set_bits(i32 %73, i8* %74, i32 1, i32 2)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @set_bits(i32 %76, i8* %77, i32 2, i32 4)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %80 = load i32, i32* @SI4713_TX_COMPONENT_ENABLE, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @si4713_write_property(%struct.si4713_device* %79, i32 %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %95

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86, %46
  %88 = load i8*, i8** %8, align 8
  %89 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %90 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %93 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  br label %95

95:                                               ; preds = %87, %85, %71
  %96 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %97 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %42, %23, %15
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @si4713_read_property(%struct.si4713_device*, i32, i32*) #1

declare dso_local i32 @set_bits(i32, i8*, i32, i32) #1

declare dso_local i32 @si4713_write_property(%struct.si4713_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
