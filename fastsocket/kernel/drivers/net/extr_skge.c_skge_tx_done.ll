; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_tx_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.skge_port = type { i64, %struct.skge_ring, i32 }
%struct.skge_ring = type { %struct.skge_element*, %struct.skge_element* }
%struct.skge_element = type { i64, %struct.skge_element* }
%struct.skge_tx_desc = type { i32 }

@txqaddr = common dso_local global i32* null, align 8
@Q_CSR = common dso_local global i32 0, align 4
@CSR_IRQ_CL_F = common dso_local global i32 0, align 4
@BMU_OWN = common dso_local global i32 0, align 4
@TX_LOW_WATER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @skge_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_tx_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.skge_port*, align 8
  %4 = alloca %struct.skge_ring*, align 8
  %5 = alloca %struct.skge_element*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.skge_port* @netdev_priv(%struct.net_device* %7)
  store %struct.skge_port* %8, %struct.skge_port** %3, align 8
  %9 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %10 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %9, i32 0, i32 1
  store %struct.skge_ring* %10, %struct.skge_ring** %4, align 8
  %11 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %12 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32*, i32** @txqaddr, align 8
  %15 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %16 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @Q_CSR, align 4
  %21 = call i32 @Q_ADDR(i32 %19, i32 %20)
  %22 = load i32, i32* @CSR_IRQ_CL_F, align 4
  %23 = call i32 @skge_write8(i32 %13, i32 %21, i32 %22)
  %24 = load %struct.skge_ring*, %struct.skge_ring** %4, align 8
  %25 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %24, i32 0, i32 0
  %26 = load %struct.skge_element*, %struct.skge_element** %25, align 8
  store %struct.skge_element* %26, %struct.skge_element** %5, align 8
  br label %27

27:                                               ; preds = %50, %1
  %28 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %29 = load %struct.skge_ring*, %struct.skge_ring** %4, align 8
  %30 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %29, i32 0, i32 1
  %31 = load %struct.skge_element*, %struct.skge_element** %30, align 8
  %32 = icmp ne %struct.skge_element* %28, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %35 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.skge_tx_desc*
  %38 = getelementptr inbounds %struct.skge_tx_desc, %struct.skge_tx_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BMU_OWN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %54

45:                                               ; preds = %33
  %46 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %47 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @skge_tx_free(%struct.skge_port* %46, %struct.skge_element* %47, i32 %48)
  br label %50

50:                                               ; preds = %45
  %51 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %52 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %51, i32 0, i32 1
  %53 = load %struct.skge_element*, %struct.skge_element** %52, align 8
  store %struct.skge_element* %53, %struct.skge_element** %5, align 8
  br label %27

54:                                               ; preds = %44, %27
  %55 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %56 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %57 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %57, i32 0, i32 0
  store %struct.skge_element* %55, %struct.skge_element** %58, align 8
  %59 = call i32 (...) @smp_mb()
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = call i64 @netif_queue_stopped(%struct.net_device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %65 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %64, i32 0, i32 1
  %66 = call i64 @skge_avail(%struct.skge_ring* %65)
  %67 = load i64, i64* @TX_LOW_WATER, align 8
  %68 = icmp sgt i64 %66, %67
  br label %69

69:                                               ; preds = %63, %54
  %70 = phi i1 [ false, %54 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %69
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = call i32 @netif_tx_lock(%struct.net_device* %75)
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = call i64 @netif_queue_stopped(%struct.net_device* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %82 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %81, i32 0, i32 1
  %83 = call i64 @skge_avail(%struct.skge_ring* %82)
  %84 = load i64, i64* @TX_LOW_WATER, align 8
  %85 = icmp sgt i64 %83, %84
  br label %86

86:                                               ; preds = %80, %74
  %87 = phi i1 [ false, %74 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = call i32 @netif_wake_queue(%struct.net_device* %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = call i32 @netif_tx_unlock(%struct.net_device* %95)
  br label %97

97:                                               ; preds = %94, %69
  ret void
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skge_write8(i32, i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @skge_tx_free(%struct.skge_port*, %struct.skge_element*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @skge_avail(%struct.skge_ring*) #1

declare dso_local i32 @netif_tx_lock(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
