; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_query_bus_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_query_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.tw9910_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.soc_camera_link = type { i32 }

@SOCAM_PCLK_SAMPLE_RISING = common dso_local global i64 0, align 8
@SOCAM_MASTER = common dso_local global i64 0, align 8
@SOCAM_VSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_HSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@SOCAM_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@SOCAM_DATA_ACTIVE_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.soc_camera_device*)* @tw9910_query_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tw9910_query_bus_param(%struct.soc_camera_device* %0) #0 {
  %2 = alloca %struct.soc_camera_device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.tw9910_priv*, align 8
  %5 = alloca %struct.soc_camera_link*, align 8
  %6 = alloca i64, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %2, align 8
  %7 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %8 = call i32 @to_soc_camera_control(%struct.soc_camera_device* %7)
  %9 = call %struct.i2c_client* @to_i2c_client(i32 %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.tw9910_priv* @to_tw9910(%struct.i2c_client* %10)
  store %struct.tw9910_priv* %11, %struct.tw9910_priv** %4, align 8
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %13 = call %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device* %12)
  store %struct.soc_camera_link* %13, %struct.soc_camera_link** %5, align 8
  %14 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %15 = load i64, i64* @SOCAM_MASTER, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @SOCAM_HSYNC_ACTIVE_HIGH, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @SOCAM_DATA_ACTIVE_HIGH, align 8
  %26 = or i64 %24, %25
  %27 = load %struct.tw9910_priv*, %struct.tw9910_priv** %4, align 8
  %28 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = or i64 %26, %31
  store i64 %32, i64* %6, align 8
  %33 = load %struct.soc_camera_link*, %struct.soc_camera_link** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @soc_camera_apply_sensor_flags(%struct.soc_camera_link* %33, i64 %34)
  ret i64 %35
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @to_soc_camera_control(%struct.soc_camera_device*) #1

declare dso_local %struct.tw9910_priv* @to_tw9910(%struct.i2c_client*) #1

declare dso_local %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device*) #1

declare dso_local i64 @soc_camera_apply_sensor_flags(%struct.soc_camera_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
