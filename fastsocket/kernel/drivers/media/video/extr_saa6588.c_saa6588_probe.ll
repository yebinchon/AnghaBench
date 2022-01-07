; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa6588.c_saa6588_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa6588.c_saa6588_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.saa6588 = type { i32, i32, i32, i64, i32, i64, i64, i64, i32, %struct.v4l2_subdev, i32* }
%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"saa6588 found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bufblocks = common dso_local global i32 0, align 4
@saa6588_ops = common dso_local global i32 0, align 4
@saa6588_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @saa6588_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa6588_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.saa6588*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = shl i32 %11, 1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @v4l_info(%struct.i2c_client* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.saa6588* @kzalloc(i32 72, i32 %19)
  store %struct.saa6588* %20, %struct.saa6588** %6, align 8
  %21 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %22 = icmp eq %struct.saa6588* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %78

26:                                               ; preds = %2
  %27 = load i32, i32* @bufblocks, align 4
  %28 = mul nsw i32 %27, 3
  %29 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %30 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %32 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32* @kmalloc(i32 %33, i32 %34)
  %36 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %37 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %36, i32 0, i32 10
  store i32* %35, i32** %37, align 8
  %38 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %39 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %38, i32 0, i32 10
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %44 = call i32 @kfree(%struct.saa6588* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %78

47:                                               ; preds = %26
  %48 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %49 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %48, i32 0, i32 9
  store %struct.v4l2_subdev* %49, %struct.v4l2_subdev** %7, align 8
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %50, %struct.i2c_client* %51, i32* @saa6588_ops)
  %53 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %54 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %53, i32 0, i32 8
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %57 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  %58 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %59 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %58, i32 0, i32 6
  store i64 0, i64* %59, align 8
  %60 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %61 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %63 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %62, i32 0, i32 1
  store i32 255, i32* %63, align 4
  %64 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %65 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %64, i32 0, i32 4
  %66 = call i32 @init_waitqueue_head(i32* %65)
  %67 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %68 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %70 = call i32 @saa6588_configure(%struct.saa6588* %69)
  %71 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %72 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %71, i32 0, i32 2
  %73 = load i32, i32* @saa6588_work, align 4
  %74 = call i32 @INIT_DELAYED_WORK(i32* %72, i32 %73)
  %75 = load %struct.saa6588*, %struct.saa6588** %6, align 8
  %76 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %75, i32 0, i32 2
  %77 = call i32 @schedule_delayed_work(i32* %76, i32 0)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %47, %42, %23
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.saa6588* @kzalloc(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.saa6588*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @saa6588_configure(%struct.saa6588*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
