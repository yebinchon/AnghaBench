; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.saa5246a_device = type { i32*, i32*, i32*, i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"VideoText version %d.%d\0A\00", align 1
@MAJOR_VERSION = common dso_local global i32 0, align 4
@MINOR_VERSION = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@saa5246a_ops = common dso_local global i32 0, align 4
@saa_template = common dso_local global i32 0, align 4
@NUM_DAUS = common dso_local global i32 0, align 4
@VFL_TYPE_VTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @saa5246a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa5246a_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa5246a_device*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 %13, 1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @v4l_info(%struct.i2c_client* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load i32, i32* @MAJOR_VERSION, align 4
  %23 = load i32, i32* @MINOR_VERSION, align 4
  %24 = call i32 @v4l_info(%struct.i2c_client* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.saa5246a_device* @kzalloc(i32 32, i32 %25)
  store %struct.saa5246a_device* %26, %struct.saa5246a_device** %8, align 8
  %27 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %28 = icmp eq %struct.saa5246a_device* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %102

32:                                               ; preds = %2
  %33 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %34 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %33, i32 0, i32 4
  store %struct.v4l2_subdev* %34, %struct.v4l2_subdev** %9, align 8
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %35, %struct.i2c_client* %36, i32* @saa5246a_ops)
  %38 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %39 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %38, i32 0, i32 3
  %40 = call i32 @mutex_init(i32* %39)
  %41 = call i32* (...) @video_device_alloc()
  %42 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %43 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %45 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %50 = call i32 @kfree(%struct.saa5246a_device* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %102

53:                                               ; preds = %32
  %54 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %55 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @memcpy(i32* %56, i32* @saa_template, i32 4)
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %77, %53
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @NUM_DAUS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %64 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memset(i32 %69, i8 signext 32, i32 4)
  %71 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %72 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %58

80:                                               ; preds = %58
  %81 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %82 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %85 = call i32 @video_set_drvdata(i32* %83, %struct.saa5246a_device* %84)
  %86 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %87 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @VFL_TYPE_VTX, align 4
  %90 = call i32 @video_register_device(i32* %88, i32 %89, i32 -1)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %80
  %94 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %95 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @video_device_release(i32* %96)
  %98 = load %struct.saa5246a_device*, %struct.saa5246a_device** %8, align 8
  %99 = call i32 @kfree(%struct.saa5246a_device* %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %102

101:                                              ; preds = %80
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %93, %48, %29
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.saa5246a_device* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32* @video_device_alloc(...) #1

declare dso_local i32 @kfree(%struct.saa5246a_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @video_set_drvdata(i32*, %struct.saa5246a_device*) #1

declare dso_local i32 @video_register_device(i32*, i32, i32) #1

declare dso_local i32 @video_device_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
