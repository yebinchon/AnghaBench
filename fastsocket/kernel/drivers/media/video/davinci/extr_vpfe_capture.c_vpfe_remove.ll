; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { i32, i32, i32, %struct.vpfe_device*, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"vpfe_remove\0A\00", align 1
@ccdc_lock = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ccdc_cfg = common dso_local global %struct.vpfe_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vpfe_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.vpfe_device*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.vpfe_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.vpfe_device* %6, %struct.vpfe_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @v4l2_info(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %13 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.vpfe_device* %15)
  %17 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %18 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %17, i32 0, i32 3
  %19 = load %struct.vpfe_device*, %struct.vpfe_device** %18, align 8
  %20 = call i32 @kfree(%struct.vpfe_device* %19)
  %21 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %22 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %21, i32 0, i32 2
  %23 = call i32 @v4l2_device_unregister(i32* %22)
  %24 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %25 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @video_unregister_device(i32 %26)
  %28 = call i32 @mutex_lock(i32* @ccdc_lock)
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call %struct.resource* @platform_get_resource(%struct.platform_device* %29, i32 %30, i32 0)
  store %struct.resource* %31, %struct.resource** %4, align 8
  %32 = load %struct.resource*, %struct.resource** %4, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.resource*, %struct.resource** %4, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.resource*, %struct.resource** %4, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = add nsw i64 %41, 1
  %43 = call i32 @release_mem_region(i64 %34, i64 %42)
  %44 = load %struct.vpfe_device*, %struct.vpfe_device** @ccdc_cfg, align 8
  %45 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @iounmap(i32 %46)
  %48 = call i32 @mutex_unlock(i32* @ccdc_lock)
  %49 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %50 = call i32 @vpfe_disable_clock(%struct.vpfe_device* %49)
  %51 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %52 = call i32 @kfree(%struct.vpfe_device* %51)
  %53 = load %struct.vpfe_device*, %struct.vpfe_device** @ccdc_cfg, align 8
  %54 = call i32 @kfree(%struct.vpfe_device* %53)
  ret i32 0
}

declare dso_local %struct.vpfe_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @v4l2_info(i32, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.vpfe_device*) #1

declare dso_local i32 @kfree(%struct.vpfe_device*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @video_unregister_device(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vpfe_disable_clock(%struct.vpfe_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
