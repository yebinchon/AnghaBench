; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sysfs.c_dma_create_sysfs_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sysfs.c_dma_create_sysfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32, i32, %struct.sys_device }
%struct.sys_device = type { i32, i32*, i32 }
%struct.dma_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@dma_sysclass = common dso_local global i32 0, align 4
@attr_dev_id = common dso_local global i32 0, align 4
@attr_count = common dso_local global i32 0, align 4
@attr_mode = common dso_local global i32 0, align 4
@attr_flags = common dso_local global i32 0, align 4
@attr_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed creating attrs\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dma%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_create_sysfs_files(%struct.dma_channel* %0, %struct.dma_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_channel*, align 8
  %5 = alloca %struct.dma_info*, align 8
  %6 = alloca %struct.sys_device*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.dma_channel* %0, %struct.dma_channel** %4, align 8
  store %struct.dma_info* %1, %struct.dma_info** %5, align 8
  %9 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %10 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %9, i32 0, i32 2
  store %struct.sys_device* %10, %struct.sys_device** %6, align 8
  %11 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %12 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %15 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %17 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %16, i32 0, i32 1
  store i32* @dma_sysclass, i32** %17, align 8
  %18 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %19 = call i32 @sysdev_register(%struct.sys_device* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %2
  %25 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %26 = call i32 @sysdev_create_file(%struct.sys_device* %25, i32* @attr_dev_id)
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %30 = call i32 @sysdev_create_file(%struct.sys_device* %29, i32* @attr_count)
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %34 = call i32 @sysdev_create_file(%struct.sys_device* %33, i32* @attr_mode)
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %38 = call i32 @sysdev_create_file(%struct.sys_device* %37, i32* @attr_flags)
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %42 = call i32 @sysdev_create_file(%struct.sys_device* %41, i32* @attr_config)
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %24
  %49 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %50 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @dev_err(%struct.TYPE_4__* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %70

55:                                               ; preds = %24
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %57 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %58 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @snprintf(i8* %56, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.dma_info*, %struct.dma_info** %5, align 8
  %62 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %67 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %69 = call i32 @sysfs_create_link(i32* %65, i32* %67, i8* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %55, %48, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @sysdev_register(%struct.sys_device*) #1

declare dso_local i32 @sysdev_create_file(%struct.sys_device*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
