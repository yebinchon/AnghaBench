; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_initialize_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_initialize_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.vpfe_device = type { i64, i32, i32, i32, i64 }

@vpfe_standards = common dso_local global %struct.TYPE_5__* null, align 8
@ccdc_lock = common dso_local global i32 0, align 4
@ccdc_dev = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"ccdc device not registered\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Couldn't lock ccdc module\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_device*)* @vpfe_initialize_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_initialize_device(%struct.vpfe_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpfe_device*, align 8
  %4 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %6 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %5, i32 0, i32 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %8 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vpfe_standards, align 8
  %11 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %12 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i32 @vpfe_config_image_format(%struct.vpfe_device* %9, i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %61

21:                                               ; preds = %1
  %22 = call i32 @mutex_lock(i32* @ccdc_lock)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ccdc_dev, align 8
  %24 = icmp eq %struct.TYPE_6__* null, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %27 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %26, i32 0, i32 3
  %28 = call i32 @v4l2_err(i32* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %58

31:                                               ; preds = %21
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ccdc_dev, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @try_module_get(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %39 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %38, i32 0, i32 3
  %40 = call i32 @v4l2_err(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %58

43:                                               ; preds = %31
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ccdc_dev, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %49 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 %47(i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %56 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %43
  br label %58

58:                                               ; preds = %57, %37, %25
  %59 = call i32 @mutex_unlock(i32* @ccdc_lock)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %19
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @vpfe_config_image_format(%struct.vpfe_device*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
