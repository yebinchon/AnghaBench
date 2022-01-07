; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lib82596.c_rebuild_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lib82596.c_rebuild_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i596_private = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.i596_dma* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.i596_dma = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@rx_ring_size = common dso_local global i32 0, align 4
@I596_NULL = common dso_local global i8* null, align 8
@CMD_FLEX = common dso_local global i32 0, align 4
@CMD_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rebuild_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rebuild_rx_bufs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.i596_private*, align 8
  %4 = alloca %struct.i596_dma*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.i596_private* @netdev_priv(%struct.net_device* %6)
  store %struct.i596_private* %7, %struct.i596_private** %3, align 8
  %8 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %9 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %8, i32 0, i32 2
  %10 = load %struct.i596_dma*, %struct.i596_dma** %9, align 8
  store %struct.i596_dma* %10, %struct.i596_dma** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %33, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @rx_ring_size, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load i8*, i8** @I596_NULL, align 8
  %17 = load %struct.i596_dma*, %struct.i596_dma** %4, align 8
  %18 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i8* %16, i8** %23, align 8
  %24 = load i32, i32* @CMD_FLEX, align 4
  %25 = call i8* @SWAP16(i32 %24)
  %26 = load %struct.i596_dma*, %struct.i596_dma** %4, align 8
  %27 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i8* %25, i8** %32, align 8
  br label %33

33:                                               ; preds = %15
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %11

36:                                               ; preds = %11
  %37 = load i32, i32* @CMD_EOL, align 4
  %38 = load i32, i32* @CMD_FLEX, align 4
  %39 = or i32 %37, %38
  %40 = call i8* @SWAP16(i32 %39)
  %41 = load %struct.i596_dma*, %struct.i596_dma** %4, align 8
  %42 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* @rx_ring_size, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i8* %40, i8** %48, align 8
  %49 = load %struct.i596_dma*, %struct.i596_dma** %4, align 8
  %50 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %53 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %52, i32 0, i32 1
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %53, align 8
  %54 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %55 = load %struct.i596_dma*, %struct.i596_dma** %4, align 8
  %56 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i32 @virt_to_dma(%struct.i596_private* %54, %struct.TYPE_4__* %57)
  %59 = call i8* @SWAP32(i32 %58)
  %60 = load %struct.i596_dma*, %struct.i596_dma** %4, align 8
  %61 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  %63 = load %struct.i596_dma*, %struct.i596_dma** %4, align 8
  %64 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %67 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %66, i32 0, i32 0
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %67, align 8
  %68 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %69 = load %struct.i596_dma*, %struct.i596_dma** %4, align 8
  %70 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = call i32 @virt_to_dma(%struct.i596_private* %68, %struct.TYPE_4__* %71)
  %73 = call i8* @SWAP32(i32 %72)
  %74 = load %struct.i596_dma*, %struct.i596_dma** %4, align 8
  %75 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i8* %73, i8** %78, align 8
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = load %struct.i596_dma*, %struct.i596_dma** %4, align 8
  %81 = call i32 @DMA_WBACK_INV(%struct.net_device* %79, %struct.i596_dma* %80, i32 24)
  ret void
}

declare dso_local %struct.i596_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @SWAP16(i32) #1

declare dso_local i8* @SWAP32(i32) #1

declare dso_local i32 @virt_to_dma(%struct.i596_private*, %struct.TYPE_4__*) #1

declare dso_local i32 @DMA_WBACK_INV(%struct.net_device*, %struct.i596_dma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
