; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_mi0343.c_mi0343_set_pix_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_mi0343.c_mi0343_set_pix_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_pix_format = type { i64 }
%struct.sn9c102_sensor = type { i32 }

@V4L2_PIX_FMT_SN9C10X = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_pix_format*)* @mi0343_set_pix_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi0343_set_pix_format(%struct.sn9c102_device* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.sn9c102_device*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  %5 = alloca %struct.sn9c102_sensor*, align 8
  %6 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  %7 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %8 = call %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device* %7)
  store %struct.sn9c102_sensor* %8, %struct.sn9c102_sensor** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_PIX_FMT_SN9C10X, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %16 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %5, align 8
  %17 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %5, align 8
  %18 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %15, %struct.sn9c102_sensor* %16, i32 4, i32 %19, i32 10, i32 0, i32 3, i32 0, i32 0)
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %26 = call i64 @sn9c102_write_reg(%struct.sn9c102_device* %25, i32 32, i32 25)
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  br label %48

31:                                               ; preds = %2
  %32 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %33 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %5, align 8
  %34 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %5, align 8
  %35 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device* %32, %struct.sn9c102_sensor* %33, i32 4, i32 %36, i32 10, i32 0, i32 5, i32 0, i32 0)
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %43 = call i64 @sn9c102_write_reg(%struct.sn9c102_device* %42, i32 160, i32 25)
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %31, %14
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device*) #1

declare dso_local i64 @sn9c102_i2c_try_raw_write(%struct.sn9c102_device*, %struct.sn9c102_sensor*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @sn9c102_write_reg(%struct.sn9c102_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
