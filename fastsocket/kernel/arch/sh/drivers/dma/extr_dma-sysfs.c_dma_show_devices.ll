; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sysfs.c_dma_show_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sysfs.c_dma_show_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }
%struct.sysdev_attribute = type { i32 }
%struct.dma_info = type { i8* }
%struct.dma_channel = type { i32, i8* }

@MAX_DMA_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%2d: %14s    %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*, %struct.sysdev_attribute*, i8*)* @dma_show_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_show_devices(%struct.sys_device* %0, %struct.sysdev_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.sys_device*, align 8
  %5 = alloca %struct.sysdev_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_info*, align 8
  %10 = alloca %struct.dma_channel*, align 8
  store %struct.sys_device* %0, %struct.sys_device** %4, align 8
  store %struct.sysdev_attribute* %1, %struct.sysdev_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %47, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @MAX_DMA_CHANNELS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.dma_info* @get_dma_info(i32 %16)
  store %struct.dma_info* %17, %struct.dma_info** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.dma_channel* @get_dma_channel(i32 %18)
  store %struct.dma_channel* %19, %struct.dma_channel** %10, align 8
  %20 = load %struct.dma_info*, %struct.dma_info** %9, align 8
  %21 = icmp ne %struct.dma_info* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = load %struct.dma_channel*, %struct.dma_channel** %10, align 8
  %28 = icmp ne %struct.dma_channel* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %15
  br label %47

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load %struct.dma_channel*, %struct.dma_channel** %10, align 8
  %36 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dma_info*, %struct.dma_info** %9, align 8
  %39 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.dma_channel*, %struct.dma_channel** %10, align 8
  %42 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %40, i8* %43)
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %30, %29
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %11

50:                                               ; preds = %11
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.dma_info* @get_dma_info(i32) #1

declare dso_local %struct.dma_channel* @get_dma_channel(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
