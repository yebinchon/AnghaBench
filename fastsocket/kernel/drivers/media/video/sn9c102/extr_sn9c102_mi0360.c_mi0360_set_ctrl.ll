; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_mi0360.c_mi0360_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_mi0360.c_mi0360_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.sn9c102_sensor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @mi0360_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi0360_set_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.sn9c102_sensor*, align 8
  %7 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %8 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %9 = call %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device* %8)
  store %struct.sn9c102_sensor* %9, %struct.sn9c102_sensor** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %126 [
    i32 132, label %13
    i32 131, label %25
    i32 129, label %37
    i32 133, label %49
    i32 134, label %61
    i32 130, label %84
    i32 128, label %105
  ]

13:                                               ; preds = %2
  %14 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %15 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %16 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %17 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %14, %struct.sn9c102_sensor* %15, i32 4, i32 %18, i32 9, i32 %21, i32 0, i32 0, i32 0)
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %129

25:                                               ; preds = %2
  %26 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %27 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %28 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %29 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %26, %struct.sn9c102_sensor* %27, i32 4, i32 %30, i32 53, i32 3, i32 %33, i32 0, i32 0)
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %129

37:                                               ; preds = %2
  %38 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %39 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %40 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %41 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %38, %struct.sn9c102_sensor* %39, i32 4, i32 %42, i32 44, i32 3, i32 %45, i32 0, i32 0)
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %129

49:                                               ; preds = %2
  %50 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %51 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %52 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %53 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %50, %struct.sn9c102_sensor* %51, i32 4, i32 %54, i32 45, i32 3, i32 %57, i32 0, i32 0)
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %129

61:                                               ; preds = %2
  %62 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %63 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %64 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %65 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %62, %struct.sn9c102_sensor* %63, i32 4, i32 %66, i32 43, i32 3, i32 %69, i32 0, i32 0)
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %74 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %75 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %76 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %73, %struct.sn9c102_sensor* %74, i32 4, i32 %77, i32 46, i32 3, i32 %80, i32 0, i32 0)
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %129

84:                                               ; preds = %2
  %85 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %86 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %87 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %88 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 64, i32 0
  %96 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %97 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 32, i32 0
  %102 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %85, %struct.sn9c102_sensor* %86, i32 4, i32 %89, i32 32, i32 %95, i32 %101, i32 0, i32 0)
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %129

105:                                              ; preds = %2
  %106 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %107 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %108 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %109 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %112 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 128, i32 0
  %117 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %118 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 128, i32 0
  %123 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %106, %struct.sn9c102_sensor* %107, i32 4, i32 %110, i32 32, i32 %116, i32 %122, i32 0, i32 0)
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %129

126:                                              ; preds = %2
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %138

129:                                              ; preds = %105, %84, %61, %49, %37, %25, %13
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  br label %136

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %132
  %137 = phi i32 [ %134, %132 ], [ 0, %135 ]
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %126
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device*) #1

declare dso_local i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device*, %struct.sn9c102_sensor*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
