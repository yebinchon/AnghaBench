; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_mi0343.c_mi0343_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_mi0343.c_mi0343_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.sn9c102_sensor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @mi0343_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi0343_set_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.sn9c102_sensor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %9 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %10 = call %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device* %9)
  store %struct.sn9c102_sensor* %10, %struct.sn9c102_sensor** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %44 [
    i32 131, label %14
    i32 129, label %14
    i32 133, label %14
    i32 134, label %14
  ]

14:                                               ; preds = %2, %2, %2, %2
  %15 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 47
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 16, %22
  store i32 %23, i32* %7, align 4
  br label %43

24:                                               ; preds = %14
  %25 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %27, 78
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 47
  %34 = add nsw i32 96, %33
  store i32 %34, i32* %7, align 4
  br label %42

35:                                               ; preds = %24
  %36 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 47
  %40 = sub nsw i32 %39, 31
  %41 = add nsw i32 224, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %35, %29
  br label %43

43:                                               ; preds = %42, %19
  br label %44

44:                                               ; preds = %2, %43
  %45 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %166 [
    i32 132, label %48
    i32 131, label %60
    i32 130, label %73
    i32 128, label %94
    i32 129, label %115
    i32 133, label %128
    i32 134, label %141
  ]

48:                                               ; preds = %44
  %49 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %50 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %51 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %52 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %49, %struct.sn9c102_sensor* %50, i32 4, i32 %53, i32 9, i32 %56, i32 0, i32 0, i32 0)
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %169

60:                                               ; preds = %44
  %61 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %62 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %63 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %64 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 8
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 255
  %70 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %61, %struct.sn9c102_sensor* %62, i32 4, i32 %65, i32 53, i32 %67, i32 %69, i32 0, i32 0)
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %169

73:                                               ; preds = %44
  %74 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %75 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %76 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %77 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 64, i32 0
  %85 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %86 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 32, i32 0
  %91 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %74, %struct.sn9c102_sensor* %75, i32 4, i32 %78, i32 32, i32 %84, i32 %90, i32 0, i32 0)
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %169

94:                                               ; preds = %44
  %95 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %96 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %97 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %98 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %101 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 128, i32 0
  %106 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %107 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 128, i32 0
  %112 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %95, %struct.sn9c102_sensor* %96, i32 4, i32 %99, i32 32, i32 %105, i32 %111, i32 0, i32 0)
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %169

115:                                              ; preds = %44
  %116 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %117 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %118 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %119 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = ashr i32 %121, 8
  %123 = load i32, i32* %7, align 4
  %124 = and i32 %123, 255
  %125 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %116, %struct.sn9c102_sensor* %117, i32 4, i32 %120, i32 45, i32 %122, i32 %124, i32 0, i32 0)
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %169

128:                                              ; preds = %44
  %129 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %130 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %131 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %132 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = ashr i32 %134, 8
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, 255
  %138 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %129, %struct.sn9c102_sensor* %130, i32 4, i32 %133, i32 44, i32 %135, i32 %137, i32 0, i32 0)
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %8, align 4
  br label %169

141:                                              ; preds = %44
  %142 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %143 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %144 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %145 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %7, align 4
  %148 = ashr i32 %147, 8
  %149 = load i32, i32* %7, align 4
  %150 = and i32 %149, 255
  %151 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %142, %struct.sn9c102_sensor* %143, i32 4, i32 %146, i32 43, i32 %148, i32 %150, i32 0, i32 0)
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %8, align 4
  %154 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %155 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %156 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %157 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %7, align 4
  %160 = ashr i32 %159, 8
  %161 = load i32, i32* %7, align 4
  %162 = and i32 %161, 255
  %163 = call i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %154, %struct.sn9c102_sensor* %155, i32 4, i32 %158, i32 46, i32 %160, i32 %162, i32 0, i32 0)
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %8, align 4
  br label %169

166:                                              ; preds = %44
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %178

169:                                              ; preds = %141, %128, %115, %94, %73, %60, %48
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  br label %176

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175, %172
  %177 = phi i32 [ %174, %172 ], [ 0, %175 ]
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %166
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device*) #1

declare dso_local i32 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device*, %struct.sn9c102_sensor*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
