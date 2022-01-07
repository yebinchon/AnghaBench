; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5249.c_saa5249_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5249.c_saa5249_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32*, i32*, %struct.TYPE_4__*, i32, %struct.v4l2_subdev, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.saa5249_device = type { i32, i32*, i32*, %struct.TYPE_4__*, i32, %struct.v4l2_subdev, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"VideoText version %d.%d\0A\00", align 1
@VTX_VER_MAJ = common dso_local global i32 0, align 4
@VTX_VER_MIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@saa5249_ops = common dso_local global i32 0, align 4
@saa_template = common dso_local global i32 0, align 4
@NUM_DAUS = common dso_local global i32 0, align 4
@VFL_TYPE_VTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @saa5249_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa5249_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa5249_device*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = bitcast %struct.i2c_client* %10 to %struct.saa5249_device*
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 %14, 1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 6
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @v4l_info(%struct.saa5249_device* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = bitcast %struct.i2c_client* %22 to %struct.saa5249_device*
  %24 = load i32, i32* @VTX_VER_MAJ, align 4
  %25 = load i32, i32* @VTX_VER_MIN, align 4
  %26 = call i32 @v4l_info(%struct.saa5249_device* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.saa5249_device* @kzalloc(i32 48, i32 %27)
  store %struct.saa5249_device* %28, %struct.saa5249_device** %8, align 8
  %29 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %30 = icmp eq %struct.saa5249_device* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %148

34:                                               ; preds = %2
  %35 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %36 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %35, i32 0, i32 5
  store %struct.v4l2_subdev* %36, %struct.v4l2_subdev** %9, align 8
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = bitcast %struct.i2c_client* %38 to %struct.saa5249_device*
  %40 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %37, %struct.saa5249_device* %39, i32* @saa5249_ops)
  %41 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %42 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %41, i32 0, i32 4
  %43 = call i32 @mutex_init(i32* %42)
  %44 = call i32* (...) @video_device_alloc()
  %45 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %46 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %48 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %34
  %52 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %53 = call i32 @kfree(%struct.saa5249_device* %52)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = bitcast %struct.i2c_client* %54 to %struct.saa5249_device*
  %56 = call i32 @kfree(%struct.saa5249_device* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %148

59:                                               ; preds = %34
  %60 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %61 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @memcpy(i32* %62, i32* @saa_template, i32 4)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %123, %59
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @NUM_DAUS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %126

68:                                               ; preds = %64
  %69 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %70 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memset(i32 %76, i8 signext 32, i32 4)
  %78 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %79 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memset(i32 %85, i8 signext 0, i32 4)
  %87 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %88 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @memset(i32 %94, i8 signext 0, i32 4)
  %96 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %97 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %104 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %111 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  %117 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %118 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %68
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %64

126:                                              ; preds = %64
  %127 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %128 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %131 = call i32 @video_set_drvdata(i32* %129, %struct.saa5249_device* %130)
  %132 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %133 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @VFL_TYPE_VTX, align 4
  %136 = call i32 @video_register_device(i32* %134, i32 %135, i32 -1)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %126
  %140 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %141 = getelementptr inbounds %struct.saa5249_device, %struct.saa5249_device* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @video_device_release(i32* %142)
  %144 = load %struct.saa5249_device*, %struct.saa5249_device** %8, align 8
  %145 = call i32 @kfree(%struct.saa5249_device* %144)
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %3, align 4
  br label %148

147:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %139, %51, %31
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @v4l_info(%struct.saa5249_device*, i8*, i32, i32) #1

declare dso_local %struct.saa5249_device* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.saa5249_device*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32* @video_device_alloc(...) #1

declare dso_local i32 @kfree(%struct.saa5249_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @video_set_drvdata(i32*, %struct.saa5249_device*) #1

declare dso_local i32 @video_register_device(i32*, i32, i32) #1

declare dso_local i32 @video_device_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
