; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_mi0360.c_mi0360_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_mi0360.c_mi0360_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.sn9c102_sensor = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @mi0360_get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi0360_get_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.sn9c102_sensor*, align 8
  %7 = alloca [2 x i32], align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %8 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %9 = call %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device* %8)
  store %struct.sn9c102_sensor* %9, %struct.sn9c102_sensor** %6, align 8
  %10 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %140 [
    i32 132, label %13
    i32 131, label %30
    i32 129, label %47
    i32 133, label %64
    i32 134, label %81
    i32 130, label %98
    i32 128, label %119
  ]

13:                                               ; preds = %2
  %14 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %15 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %16 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %17 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %20 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %14, %struct.sn9c102_sensor* %15, i32 %18, i32 9, i32 2, i32* %19)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %143

25:                                               ; preds = %13
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %143

30:                                               ; preds = %2
  %31 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %32 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %33 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %34 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %37 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %31, %struct.sn9c102_sensor* %32, i32 %35, i32 53, i32 2, i32* %36)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %143

42:                                               ; preds = %30
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %143

47:                                               ; preds = %2
  %48 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %49 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %50 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %51 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %54 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %48, %struct.sn9c102_sensor* %49, i32 %52, i32 44, i32 2, i32* %53)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %143

59:                                               ; preds = %47
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %143

64:                                               ; preds = %2
  %65 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %66 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %67 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %68 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %71 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %65, %struct.sn9c102_sensor* %66, i32 %69, i32 45, i32 2, i32* %70)
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %143

76:                                               ; preds = %64
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %3, align 4
  br label %143

81:                                               ; preds = %2
  %82 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %83 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %84 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %85 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %88 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %82, %struct.sn9c102_sensor* %83, i32 %86, i32 46, i32 2, i32* %87)
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %143

93:                                               ; preds = %81
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %97 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  store i32 0, i32* %3, align 4
  br label %143

98:                                               ; preds = %2
  %99 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %100 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %101 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %102 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %105 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %99, %struct.sn9c102_sensor* %100, i32 %103, i32 32, i32 2, i32* %104)
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %143

110:                                              ; preds = %98
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 32
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 1, i32 0
  %117 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %118 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  store i32 0, i32* %3, align 4
  br label %143

119:                                              ; preds = %2
  %120 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %121 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %122 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %123 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %126 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %120, %struct.sn9c102_sensor* %121, i32 %124, i32 32, i32 2, i32* %125)
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %119
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %143

131:                                              ; preds = %119
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 128
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 1, i32 0
  %138 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %139 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  store i32 0, i32* %3, align 4
  br label %143

140:                                              ; preds = %2
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %140, %131, %128, %110, %107, %93, %90, %76, %73, %59, %56, %42, %39, %25, %22
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device*) #1

declare dso_local i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device*, %struct.sn9c102_sensor*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
