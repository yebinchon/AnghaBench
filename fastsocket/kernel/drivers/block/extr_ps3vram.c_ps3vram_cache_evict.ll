; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_cache_evict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_cache_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_system_bus_device = type { i32 }
%struct.ps3vram_priv = type { %struct.ps3vram_cache }
%struct.ps3vram_cache = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CACHE_PAGE_DIRTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Flushing %d: 0x%08x\0A\00", align 1
@CACHE_OFFSET = common dso_local global i64 0, align 8
@DMA_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to upload from 0x%x to 0x%x size 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps3_system_bus_device*, i32)* @ps3vram_cache_evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3vram_cache_evict(%struct.ps3_system_bus_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ps3_system_bus_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ps3vram_priv*, align 8
  %6 = alloca %struct.ps3vram_cache*, align 8
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %8 = call %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device* %7)
  store %struct.ps3vram_priv* %8, %struct.ps3vram_priv** %5, align 8
  %9 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %5, align 8
  %10 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %9, i32 0, i32 0
  store %struct.ps3vram_cache* %10, %struct.ps3vram_cache** %6, align 8
  %11 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %6, align 8
  %12 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CACHE_PAGE_DIRTY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %93

23:                                               ; preds = %2
  %24 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %25 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %24, i32 0, i32 0
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %6, align 8
  %28 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %34)
  %36 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %37 = load i64, i64* @CACHE_OFFSET, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %6, align 8
  %40 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %37, %43
  %45 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %6, align 8
  %46 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DMA_PAGE_SIZE, align 4
  %54 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %6, align 8
  %55 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DMA_PAGE_SIZE, align 4
  %58 = sdiv i32 %56, %57
  %59 = call i64 @ps3vram_upload(%struct.ps3_system_bus_device* %36, i64 %44, i32 %52, i32 %53, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %23
  %62 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %63 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %62, i32 0, i32 0
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %6, align 8
  %66 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %64, %67
  %69 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %6, align 8
  %70 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %6, align 8
  %78 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %61, %23
  %82 = load i32, i32* @CACHE_PAGE_DIRTY, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %6, align 8
  %85 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %83
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %81, %22
  ret void
}

declare dso_local %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i64 @ps3vram_upload(%struct.ps3_system_bus_device*, i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
