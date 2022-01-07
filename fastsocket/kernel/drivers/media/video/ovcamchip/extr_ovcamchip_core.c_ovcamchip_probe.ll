; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_ovcamchip_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_ovcamchip_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ovcamchip = type { i64, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ovcamchip_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s found @ 0x%02x (%s)\0A\00", align 1
@chip_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Camera chip detection complete\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"returning %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ovcamchip_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovcamchip_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ovcamchip*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ovcamchip* @kzalloc(i32 16, i32 %9)
  store %struct.ovcamchip* %10, %struct.ovcamchip** %6, align 8
  %11 = load %struct.ovcamchip*, %struct.ovcamchip** %6, align 8
  %12 = icmp ne %struct.ovcamchip* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.ovcamchip*, %struct.ovcamchip** %6, align 8
  %18 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %17, i32 0, i32 1
  store %struct.v4l2_subdev* %18, %struct.v4l2_subdev** %7, align 8
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %19, %struct.i2c_client* %20, i32* @ovcamchip_ops)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @ovcamchip_detect(%struct.i2c_client* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %47

27:                                               ; preds = %16
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load i32*, i32** @chip_names, align 8
  %30 = load %struct.ovcamchip*, %struct.ovcamchip** %6, align 8
  %31 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 1
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @v4l_info(%struct.i2c_client* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38, i32 %43)
  %45 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %54

47:                                               ; preds = %26
  %48 = load %struct.ovcamchip*, %struct.ovcamchip** %6, align 8
  %49 = call i32 @kfree(%struct.ovcamchip* %48)
  br label %50

50:                                               ; preds = %47, %13
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %27
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.ovcamchip* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @ovcamchip_detect(%struct.i2c_client*) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @kfree(%struct.ovcamchip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
