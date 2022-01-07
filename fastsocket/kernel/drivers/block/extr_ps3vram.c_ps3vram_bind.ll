; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_system_bus_device = type { i32 }
%struct.ps3vram_priv = type { i32 }

@UPLOAD_SUBCH = common dso_local global i32 0, align 4
@DMA_NOTIFIER_HANDLE_BASE = common dso_local global i32 0, align 4
@NOTIFIER = common dso_local global i32 0, align 4
@DOWNLOAD_SUBCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps3_system_bus_device*)* @ps3vram_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3vram_bind(%struct.ps3_system_bus_device* %0) #0 {
  %2 = alloca %struct.ps3_system_bus_device*, align 8
  %3 = alloca %struct.ps3vram_priv*, align 8
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %2, align 8
  %4 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %2, align 8
  %5 = call %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device* %4)
  store %struct.ps3vram_priv* %5, %struct.ps3vram_priv** %3, align 8
  %6 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %7 = load i32, i32* @UPLOAD_SUBCH, align 4
  %8 = call i32 @ps3vram_begin_ring(%struct.ps3vram_priv* %6, i32 %7, i32 0, i32 1)
  %9 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %10 = call i32 @ps3vram_out_ring(%struct.ps3vram_priv* %9, i32 825455363)
  %11 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %12 = load i32, i32* @UPLOAD_SUBCH, align 4
  %13 = call i32 @ps3vram_begin_ring(%struct.ps3vram_priv* %11, i32 %12, i32 384, i32 3)
  %14 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %15 = load i32, i32* @DMA_NOTIFIER_HANDLE_BASE, align 4
  %16 = load i32, i32* @NOTIFIER, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i32 @ps3vram_out_ring(%struct.ps3vram_priv* %14, i32 %17)
  %19 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %20 = call i32 @ps3vram_out_ring(%struct.ps3vram_priv* %19, i32 -18022399)
  %21 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %22 = call i32 @ps3vram_out_ring(%struct.ps3vram_priv* %21, i32 -18022400)
  %23 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %24 = load i32, i32* @DOWNLOAD_SUBCH, align 4
  %25 = call i32 @ps3vram_begin_ring(%struct.ps3vram_priv* %23, i32 %24, i32 0, i32 1)
  %26 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %27 = call i32 @ps3vram_out_ring(%struct.ps3vram_priv* %26, i32 825737438)
  %28 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %29 = load i32, i32* @DOWNLOAD_SUBCH, align 4
  %30 = call i32 @ps3vram_begin_ring(%struct.ps3vram_priv* %28, i32 %29, i32 384, i32 3)
  %31 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %32 = load i32, i32* @DMA_NOTIFIER_HANDLE_BASE, align 4
  %33 = load i32, i32* @NOTIFIER, align 4
  %34 = add nsw i32 %32, %33
  %35 = call i32 @ps3vram_out_ring(%struct.ps3vram_priv* %31, i32 %34)
  %36 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %37 = call i32 @ps3vram_out_ring(%struct.ps3vram_priv* %36, i32 -18022400)
  %38 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %39 = call i32 @ps3vram_out_ring(%struct.ps3vram_priv* %38, i32 -18022399)
  %40 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %2, align 8
  %41 = call i32 @ps3vram_fire_ring(%struct.ps3_system_bus_device* %40)
  ret void
}

declare dso_local %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device*) #1

declare dso_local i32 @ps3vram_begin_ring(%struct.ps3vram_priv*, i32, i32, i32) #1

declare dso_local i32 @ps3vram_out_ring(%struct.ps3vram_priv*, i32) #1

declare dso_local i32 @ps3vram_fire_ring(%struct.ps3_system_bus_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
