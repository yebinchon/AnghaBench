; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_cache_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_cache_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_system_bus_device = type { i32 }
%struct.ps3vram_priv = type { %struct.ps3vram_cache }
%struct.ps3vram_cache = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Fetching %d: 0x%08x\0A\00", align 1
@CACHE_OFFSET = common dso_local global i64 0, align 8
@DMA_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to download from 0x%x to 0x%x size 0x%x\0A\00", align 1
@CACHE_PAGE_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps3_system_bus_device*, i32, i32)* @ps3vram_cache_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3vram_cache_load(%struct.ps3_system_bus_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ps3_system_bus_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps3vram_priv*, align 8
  %8 = alloca %struct.ps3vram_cache*, align 8
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %4, align 8
  %10 = call %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device* %9)
  store %struct.ps3vram_priv* %10, %struct.ps3vram_priv** %7, align 8
  %11 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %7, align 8
  %12 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %11, i32 0, i32 0
  store %struct.ps3vram_cache* %12, %struct.ps3vram_cache** %8, align 8
  %13 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %4, align 8
  %14 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* @CACHE_OFFSET, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %8, align 8
  %23 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %21, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %20, %26
  %28 = load i32, i32* @DMA_PAGE_SIZE, align 4
  %29 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %8, align 8
  %30 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DMA_PAGE_SIZE, align 4
  %33 = sdiv i32 %31, %32
  %34 = call i64 @ps3vram_download(%struct.ps3_system_bus_device* %18, i32 %19, i64 %27, i32 %28, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %3
  %37 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %4, align 8
  %38 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %37, i32 0, i32 0
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %8, align 8
  %42 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %40, %43
  %45 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %8, align 8
  %46 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %36, %3
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %8, align 8
  %52 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %50, i32* %57, align 4
  %58 = load i32, i32* @CACHE_PAGE_PRESENT, align 4
  %59 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %8, align 8
  %60 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %58
  store i32 %67, i32* %65, align 4
  ret void
}

declare dso_local %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i64 @ps3vram_download(%struct.ps3_system_bus_device*, i32, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
