; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_cache_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_system_bus_device = type { i32 }
%struct.ps3vram_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }

@CACHE_PAGE_COUNT = common dso_local global i32 0, align 4
@CACHE_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not allocate cache tags\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Created ram cache: %d entries, %d KiB each\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3_system_bus_device*)* @ps3vram_cache_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3vram_cache_init(%struct.ps3_system_bus_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ps3_system_bus_device*, align 8
  %4 = alloca %struct.ps3vram_priv*, align 8
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %3, align 8
  %5 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %6 = call %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device* %5)
  store %struct.ps3vram_priv* %6, %struct.ps3vram_priv** %4, align 8
  %7 = load i32, i32* @CACHE_PAGE_COUNT, align 4
  %8 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 8
  %11 = load i32, i32* @CACHE_PAGE_SIZE, align 4
  %12 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @CACHE_PAGE_COUNT, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kzalloc(i32 %18, i32 %19)
  %21 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %4, align 8
  %22 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32* %20, i32** %23, align 8
  %24 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %31 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %42

35:                                               ; preds = %1
  %36 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %37 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %36, i32 0, i32 0
  %38 = load i32, i32* @CACHE_PAGE_COUNT, align 4
  %39 = load i32, i32* @CACHE_PAGE_SIZE, align 4
  %40 = sdiv i32 %39, 1024
  %41 = call i32 @dev_info(i32* %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %35, %29
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
