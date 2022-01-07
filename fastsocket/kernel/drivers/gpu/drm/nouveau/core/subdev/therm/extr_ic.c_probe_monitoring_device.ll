; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_ic.c_probe_monitoring_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_ic.c_probe_monitoring_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_i2c_port = type { i32 }
%struct.i2c_board_info = type { i32, i32 }
%struct.nouveau_therm_priv = type { %struct.i2c_client*, %struct.nvbios_therm_sensor }
%struct.i2c_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* }
%struct.nvbios_therm_sensor = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@I2C_MODULE_PREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"Found an %s at address 0x%x (controlled by lm_sensors, temp offset %+i C)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_i2c_port*, %struct.i2c_board_info*)* @probe_monitoring_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_monitoring_device(%struct.nouveau_i2c_port* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_i2c_port*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.nouveau_therm_priv*, align 8
  %7 = alloca %struct.nvbios_therm_sensor*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  store %struct.nouveau_i2c_port* %0, %struct.nouveau_i2c_port** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %9 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %4, align 8
  %10 = call i64 @nouveau_therm(%struct.nouveau_i2c_port* %9)
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %12, %struct.nouveau_therm_priv** %6, align 8
  %13 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %14 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %13, i32 0, i32 1
  store %struct.nvbios_therm_sensor* %14, %struct.nvbios_therm_sensor** %7, align 8
  %15 = load i32, i32* @I2C_MODULE_PREFIX, align 4
  %16 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @request_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %4, align 8
  %21 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %20, i32 0, i32 0
  %22 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %23 = call %struct.i2c_client* @i2c_new_device(i32* %21, %struct.i2c_board_info* %22)
  store %struct.i2c_client* %23, %struct.i2c_client** %8, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %25 = icmp ne %struct.i2c_client* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

27:                                               ; preds = %2
  %28 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64 (%struct.i2c_client*, i32, %struct.i2c_board_info*)*, i64 (%struct.i2c_client*, i32, %struct.i2c_board_info*)** %36, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %39 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %40 = call i64 %37(%struct.i2c_client* %38, i32 -1, %struct.i2c_board_info* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32, %27
  %43 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %44 = call i32 @i2c_unregister_device(%struct.i2c_client* %43)
  store i32 0, i32* %3, align 4
  br label %60

45:                                               ; preds = %32
  %46 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %47 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %48 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %7, align 8
  %54 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nv_info(%struct.nouveau_therm_priv* %46, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52, i32 %55)
  %57 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %58 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %59 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %58, i32 0, i32 0
  store %struct.i2c_client* %57, %struct.i2c_client** %59, align 8
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %45, %42, %26
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @nouveau_therm(%struct.nouveau_i2c_port*) #1

declare dso_local i32 @request_module(i8*, i32, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(i32*, %struct.i2c_board_info*) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @nv_info(%struct.nouveau_therm_priv*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
