; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_set_bus_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_set_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32 }
%struct.i2c_client = type { i32 }

@MT9T031_BUS_PARAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SOCAM_PCLK_SAMPLE_FALLING = common dso_local global i64 0, align 8
@MT9T031_PIXEL_CLOCK_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, i64)* @mt9t031_set_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_set_bus_param(%struct.soc_camera_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %8 = call i32 @to_soc_camera_control(%struct.soc_camera_device* %7)
  %9 = call %struct.i2c_client* @to_i2c_client(i32 %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @MT9T031_BUS_PARAM, align 8
  %12 = xor i64 %11, -1
  %13 = and i64 %10, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %25 = load i32, i32* @MT9T031_PIXEL_CLOCK_CONTROL, align 4
  %26 = call i32 @reg_clear(%struct.i2c_client* %24, i32 %25, i32 32768)
  br label %31

27:                                               ; preds = %18
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = load i32, i32* @MT9T031_PIXEL_CLOCK_CONTROL, align 4
  %30 = call i32 @reg_set(%struct.i2c_client* %28, i32 %29, i32 32768)
  br label %31

31:                                               ; preds = %27, %23
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @to_soc_camera_control(%struct.soc_camera_device*) #1

declare dso_local i32 @reg_clear(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @reg_set(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
