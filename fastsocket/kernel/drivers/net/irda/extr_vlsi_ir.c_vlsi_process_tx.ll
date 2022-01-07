; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_vlsi_ir.c_vlsi_process_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_vlsi_ir.c_vlsi_process_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlsi_ring = type { i32, i32, i32 }
%struct.ring_descr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RD_TX_UNDRN = common dso_local global i32 0, align 4
@VLSI_TX_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlsi_ring*, %struct.ring_descr*)* @vlsi_process_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlsi_process_tx(%struct.vlsi_ring* %0, %struct.ring_descr* %1) #0 {
  %3 = alloca %struct.vlsi_ring*, align 8
  %4 = alloca %struct.ring_descr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vlsi_ring* %0, %struct.vlsi_ring** %3, align 8
  store %struct.ring_descr* %1, %struct.ring_descr** %4, align 8
  %8 = load %struct.vlsi_ring*, %struct.vlsi_ring** %3, align 8
  %9 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ring_descr*, %struct.ring_descr** %4, align 8
  %12 = call i32 @rd_get_addr(%struct.ring_descr* %11)
  %13 = load %struct.vlsi_ring*, %struct.vlsi_ring** %3, align 8
  %14 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vlsi_ring*, %struct.vlsi_ring** %3, align 8
  %17 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pci_dma_sync_single_for_cpu(i32 %10, i32 %12, i32 %15, i32 %18)
  %20 = load %struct.ring_descr*, %struct.ring_descr** %4, align 8
  %21 = call i32 @rd_get_status(%struct.ring_descr* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @RD_TX_UNDRN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @VLSI_TX_FIFO, align 4
  store i32 %27, i32* %7, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load %struct.ring_descr*, %struct.ring_descr** %4, align 8
  %31 = call i32 @rd_set_status(%struct.ring_descr* %30, i32 0)
  %32 = load %struct.ring_descr*, %struct.ring_descr** %4, align 8
  %33 = getelementptr inbounds %struct.ring_descr, %struct.ring_descr* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load %struct.ring_descr*, %struct.ring_descr** %4, align 8
  %38 = getelementptr inbounds %struct.ring_descr, %struct.ring_descr* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.ring_descr*, %struct.ring_descr** %4, align 8
  %43 = getelementptr inbounds %struct.ring_descr, %struct.ring_descr* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @dev_kfree_skb_any(%struct.TYPE_2__* %44)
  %46 = load %struct.ring_descr*, %struct.ring_descr** %4, align 8
  %47 = getelementptr inbounds %struct.ring_descr, %struct.ring_descr* %46, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %47, align 8
  br label %51

48:                                               ; preds = %29
  %49 = load %struct.ring_descr*, %struct.ring_descr** %4, align 8
  %50 = call i32 @rd_get_count(%struct.ring_descr* %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %36
  %52 = load %struct.ring_descr*, %struct.ring_descr** %4, align 8
  %53 = call i32 @rd_set_count(%struct.ring_descr* %52, i32 0)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 0, %57
  br label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i32 [ %58, %56 ], [ %60, %59 ]
  ret i32 %62
}

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @rd_get_addr(%struct.ring_descr*) #1

declare dso_local i32 @rd_get_status(%struct.ring_descr*) #1

declare dso_local i32 @rd_set_status(%struct.ring_descr*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_2__*) #1

declare dso_local i32 @rd_get_count(%struct.ring_descr*) #1

declare dso_local i32 @rd_set_count(%struct.ring_descr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
