; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.si4713_device = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to alloc video device.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"No platform data registered.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@si4713_subdev_ops = common dso_local global i32 0, align 4
@si4713_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Could not request IRQ\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"IRQ requested.\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"IRQ not configured. Using timeouts.\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to probe device information.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @si4713_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.si4713_device*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.si4713_device* @kzalloc(i32 16, i32 %8)
  store %struct.si4713_device* %9, %struct.si4713_device** %6, align 8
  %10 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %11 = icmp ne %struct.si4713_device* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = call i32 @dev_err(%struct.TYPE_2__* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %103

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %24 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %26 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %18
  %30 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %31 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %30, i32 0, i32 0
  %32 = call i32 @v4l2_err(i32* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %100

35:                                               ; preds = %18
  %36 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %37 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %36, i32 0, i32 0
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = call i32 @v4l2_i2c_subdev_init(i32* %37, %struct.i2c_client* %38, i32* @si4713_subdev_ops)
  %40 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %41 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %40, i32 0, i32 2
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %44 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %43, i32 0, i32 1
  %45 = call i32 @init_completion(i32* %44)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %35
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @si4713_handler, align 4
  %55 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %56 = load i32, i32* @IRQF_DISABLED, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %62 = call i32 @request_irq(i64 %53, i32 %54, i32 %57, i32 %60, %struct.si4713_device* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %50
  %66 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %67 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %66, i32 0, i32 0
  %68 = call i32 @v4l2_err(i32* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %100

69:                                               ; preds = %50
  %70 = load i32, i32* @debug, align 4
  %71 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %72 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %71, i32 0, i32 0
  %73 = call i32 @v4l2_dbg(i32 1, i32 %70, i32* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %78

74:                                               ; preds = %35
  %75 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %76 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %75, i32 0, i32 0
  %77 = call i32 @v4l2_warn(i32* %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %80 = call i32 @si4713_initialize(%struct.si4713_device* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %85 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %84, i32 0, i32 0
  %86 = call i32 @v4l2_err(i32* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %88

87:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %105

88:                                               ; preds = %83
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %98 = call i32 @free_irq(i64 %96, %struct.si4713_device* %97)
  br label %99

99:                                               ; preds = %93, %88
  br label %100

100:                                              ; preds = %99, %65, %29
  %101 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %102 = call i32 @kfree(%struct.si4713_device* %101)
  br label %103

103:                                              ; preds = %100, %12
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %87
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.si4713_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(i32*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.si4713_device*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @v4l2_warn(i32*, i8*) #1

declare dso_local i32 @si4713_initialize(%struct.si4713_device*) #1

declare dso_local i32 @free_irq(i64, %struct.si4713_device*) #1

declare dso_local i32 @kfree(%struct.si4713_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
