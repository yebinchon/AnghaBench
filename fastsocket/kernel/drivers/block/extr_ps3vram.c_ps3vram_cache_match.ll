; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_cache_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_cache_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_system_bus_device = type { i32 }
%struct.ps3vram_priv = type { %struct.ps3vram_cache }
%struct.ps3vram_cache = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ps3vram_cache_match.counter = internal global i32 0, align 4
@CACHE_PAGE_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Found entry %d: 0x%08x\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Using entry %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3_system_bus_device*, i32)* @ps3vram_cache_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3vram_cache_match(%struct.ps3_system_bus_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ps3_system_bus_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps3vram_priv*, align 8
  %7 = alloca %struct.ps3vram_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %4, align 8
  %12 = call %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device* %11)
  store %struct.ps3vram_priv* %12, %struct.ps3vram_priv** %6, align 8
  %13 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %6, align 8
  %14 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %13, i32 0, i32 0
  store %struct.ps3vram_cache* %14, %struct.ps3vram_cache** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %7, align 8
  %17 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %15, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %72, %2
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %7, align 8
  %27 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %75

30:                                               ; preds = %24
  %31 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %7, align 8
  %32 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CACHE_PAGE_PRESENT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %30
  %43 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %7, align 8
  %44 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %42
  %54 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %7, align 8
  %55 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %4, align 8
  %59 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %58, i32 0, i32 0
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %7, align 8
  %62 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %100

71:                                               ; preds = %42, %30
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %24

75:                                               ; preds = %24
  %76 = load i32, i32* @jiffies, align 4
  %77 = load i32, i32* @ps3vram_cache_match.counter, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @ps3vram_cache_match.counter, align 4
  %79 = add nsw i32 %76, %77
  %80 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %7, align 8
  %81 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = srem i32 %79, %82
  store i32 %83, i32* %10, align 4
  %84 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %4, align 8
  %85 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %84, i32 0, i32 0
  %86 = load i32, i32* %10, align 4
  %87 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %4, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @ps3vram_cache_evict(%struct.ps3_system_bus_device* %88, i32 %89)
  %91 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @ps3vram_cache_load(%struct.ps3_system_bus_device* %91, i32 %92, i32 %93)
  %95 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %7, align 8
  %96 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %75, %53
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @ps3vram_cache_evict(%struct.ps3_system_bus_device*, i32) #1

declare dso_local i32 @ps3vram_cache_load(%struct.ps3_system_bus_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
