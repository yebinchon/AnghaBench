; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_cache_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_cache_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_system_bus_device = type { i32 }
%struct.ps3vram_priv = type { %struct.ps3vram_cache }
%struct.ps3vram_cache = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"FLUSH\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps3_system_bus_device*)* @ps3vram_cache_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3vram_cache_flush(%struct.ps3_system_bus_device* %0) #0 {
  %2 = alloca %struct.ps3_system_bus_device*, align 8
  %3 = alloca %struct.ps3vram_priv*, align 8
  %4 = alloca %struct.ps3vram_cache*, align 8
  %5 = alloca i32, align 4
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %2, align 8
  %6 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %2, align 8
  %7 = call %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device* %6)
  store %struct.ps3vram_priv* %7, %struct.ps3vram_priv** %3, align 8
  %8 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %8, i32 0, i32 0
  store %struct.ps3vram_cache* %9, %struct.ps3vram_cache** %4, align 8
  %10 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %2, align 8
  %11 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %4, align 8
  %16 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %2, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ps3vram_cache_evict(%struct.ps3_system_bus_device* %20, i32 %21)
  %23 = load %struct.ps3vram_cache*, %struct.ps3vram_cache** %4, align 8
  %24 = getelementptr inbounds %struct.ps3vram_cache, %struct.ps3vram_cache* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %13

33:                                               ; preds = %13
  ret void
}

declare dso_local %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ps3vram_cache_evict(%struct.ps3_system_bus_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
