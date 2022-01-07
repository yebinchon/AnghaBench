; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_wait_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_wait_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_system_bus_device = type { i32 }
%struct.ps3vram_priv = type { i64* }

@jiffies = common dso_local global i64 0, align 8
@CTRL_PUT = common dso_local global i64 0, align 8
@CTRL_GET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"FIFO timeout (%08x/%08x/%08x)\0A\00", align 1
@CTRL_TOP = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3_system_bus_device*, i32)* @ps3vram_wait_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3vram_wait_ring(%struct.ps3_system_bus_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ps3_system_bus_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps3vram_priv*, align 8
  %7 = alloca i64, align 8
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %4, align 8
  %9 = call %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device* %8)
  store %struct.ps3vram_priv* %9, %struct.ps3vram_priv** %6, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @msecs_to_jiffies(i32 %11)
  %13 = add i64 %10, %12
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %31, %2
  %15 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %6, align 8
  %16 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @CTRL_PUT, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %6, align 8
  %22 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @CTRL_GET, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %20, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %60

29:                                               ; preds = %14
  %30 = call i32 @msleep(i32 1)
  br label %31

31:                                               ; preds = %29
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @time_before(i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %14, label %36

36:                                               ; preds = %31
  %37 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %4, align 8
  %38 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %37, i32 0, i32 0
  %39 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %6, align 8
  %40 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @CTRL_PUT, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %6, align 8
  %46 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @CTRL_GET, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %6, align 8
  %52 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @CTRL_TOP, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %50, i64 %56)
  %58 = load i32, i32* @ETIMEDOUT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %36, %28
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
