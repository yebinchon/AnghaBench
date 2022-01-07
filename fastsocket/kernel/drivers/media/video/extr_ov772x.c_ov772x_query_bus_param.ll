; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_query_bus_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_query_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ov772x_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.soc_camera_link = type { i32 }

@SOCAM_PCLK_SAMPLE_RISING = common dso_local global i64 0, align 8
@SOCAM_MASTER = common dso_local global i64 0, align 8
@SOCAM_VSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_HSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_DATA_ACTIVE_HIGH = common dso_local global i64 0, align 8
@OV772X_FLAG_8BIT = common dso_local global i32 0, align 4
@SOCAM_DATAWIDTH_8 = common dso_local global i64 0, align 8
@SOCAM_DATAWIDTH_10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.soc_camera_device*)* @ov772x_query_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ov772x_query_bus_param(%struct.soc_camera_device* %0) #0 {
  %2 = alloca %struct.soc_camera_device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ov772x_priv*, align 8
  %5 = alloca %struct.soc_camera_link*, align 8
  %6 = alloca i64, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %2, align 8
  %7 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %8 = call i32 @to_soc_camera_control(%struct.soc_camera_device* %7)
  %9 = call %struct.i2c_client* @to_i2c_client(i32 %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.ov772x_priv* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.ov772x_priv* %11, %struct.ov772x_priv** %4, align 8
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
  %21 = load i64, i64* @SOCAM_DATA_ACTIVE_HIGH, align 8
  %22 = or i64 %20, %21
  store i64 %22, i64* %6, align 8
  %23 = load %struct.ov772x_priv*, %struct.ov772x_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OV772X_FLAG_8BIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i64, i64* @SOCAM_DATAWIDTH_8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %6, align 8
  br label %39

35:                                               ; preds = %1
  %36 = load i64, i64* @SOCAM_DATAWIDTH_10, align 8
  %37 = load i64, i64* %6, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.soc_camera_link*, %struct.soc_camera_link** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @soc_camera_apply_sensor_flags(%struct.soc_camera_link* %40, i64 %41)
  ret i64 %42
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @to_soc_camera_control(%struct.soc_camera_device*) #1

declare dso_local %struct.ov772x_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device*) #1

declare dso_local i64 @soc_camera_apply_sensor_flags(%struct.soc_camera_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
