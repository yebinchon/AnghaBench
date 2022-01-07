; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_tcm825x_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_tcm825x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm825x_sensor = type { i32*, %struct.TYPE_7__, %struct.i2c_client*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (...)* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.i2c_device_id = type { i32 }

@tcm825x = common dso_local global %struct.tcm825x_sensor zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@tcm825x_int_device = common dso_local global i32 0, align 4
@tcm825x_sizes = common dso_local global %struct.TYPE_8__* null, align 8
@QVGA = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_RGB565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tcm825x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm825x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tcm825x_sensor*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store %struct.tcm825x_sensor* @tcm825x, %struct.tcm825x_sensor** %6, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = call i64 @i2c_get_clientdata(%struct.i2c_client* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %20 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %19, i32 0, i32 3
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %20, align 8
  %21 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %22 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %14
  %26 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %27 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32 (...)*, i32 (...)** %29, align 8
  %31 = call i32 (...) %30()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25, %14
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %76

36:                                               ; preds = %25
  %37 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %38 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %37, i32 0, i32 0
  store i32* @tcm825x_int_device, i32** %38, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %41 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %40, i32 0, i32 2
  store %struct.i2c_client* %39, %struct.i2c_client** %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %44 = call i32 @i2c_set_clientdata(%struct.i2c_client* %42, %struct.tcm825x_sensor* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tcm825x_sizes, align 8
  %46 = load i64, i64* @QVGA, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %51 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tcm825x_sizes, align 8
  %54 = load i64, i64* @QVGA, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %59 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @V4L2_PIX_FMT_RGB565, align 4
  %62 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %63 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %66 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @v4l2_int_device_register(i32* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %36
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = call i32 @i2c_set_clientdata(%struct.i2c_client* %72, %struct.tcm825x_sensor* null)
  br label %74

74:                                               ; preds = %71, %36
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %33, %11
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tcm825x_sensor*) #1

declare dso_local i32 @v4l2_int_device_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
