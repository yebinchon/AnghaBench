; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_tx_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_tx_queue = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, %union.Vmxnet3_GenericDesc* }
%union.Vmxnet3_GenericDesc = type { i32 }
%struct.vmxnet3_adapter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*)* @vmxnet3_tq_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_tq_tx_complete(%struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_adapter* %1) #0 {
  %3 = alloca %struct.vmxnet3_tx_queue*, align 8
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.Vmxnet3_GenericDesc*, align 8
  store %struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_tx_queue** %3, align 8
  store %struct.vmxnet3_adapter* %1, %struct.vmxnet3_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %8 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %9, align 8
  %11 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %12 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %union.Vmxnet3_GenericDesc, %union.Vmxnet3_GenericDesc* %10, i64 %15
  store %union.Vmxnet3_GenericDesc* %16, %union.Vmxnet3_GenericDesc** %6, align 8
  br label %17

17:                                               ; preds = %26, %2
  %18 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %19 = bitcast %union.Vmxnet3_GenericDesc* %18 to i32*
  %20 = call i64 @VMXNET3_TCD_GET_GEN(i32* %19)
  %21 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %17
  %27 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %28 = bitcast %union.Vmxnet3_GenericDesc* %27 to i32*
  %29 = call i32 @VMXNET3_TCD_GET_TXIDX(i32* %28)
  %30 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %31 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %35 = call i64 @vmxnet3_unmap_pkt(i32 %29, %struct.vmxnet3_tx_queue* %30, i32 %33, %struct.vmxnet3_adapter* %34)
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %41 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %40, i32 0, i32 2
  %42 = call i32 @vmxnet3_comp_ring_adv_next2proc(%struct.TYPE_2__* %41)
  %43 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %44 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %45, align 8
  %47 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %48 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %union.Vmxnet3_GenericDesc, %union.Vmxnet3_GenericDesc* %46, i64 %51
  store %union.Vmxnet3_GenericDesc* %52, %union.Vmxnet3_GenericDesc** %6, align 8
  br label %17

53:                                               ; preds = %17
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %53
  %57 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %58 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %57, i32 0, i32 0
  %59 = call i32 @spin_lock(i32* %58)
  %60 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %61 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %62 = call i64 @vmxnet3_tq_stopped(%struct.vmxnet3_tx_queue* %60, %struct.vmxnet3_adapter* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %56
  %65 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %66 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %65, i32 0, i32 1
  %67 = call i64 @vmxnet3_cmd_ring_desc_avail(i32* %66)
  %68 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %69 = call i64 @VMXNET3_WAKE_QUEUE_THRESHOLD(%struct.vmxnet3_tx_queue* %68)
  %70 = icmp sgt i64 %67, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @netif_carrier_ok(i32 %74)
  %76 = icmp ne i64 %75, 0
  br label %77

77:                                               ; preds = %71, %64, %56
  %78 = phi i1 [ false, %64 ], [ false, %56 ], [ %76, %71 ]
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %84 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %85 = call i32 @vmxnet3_tq_wake(%struct.vmxnet3_tx_queue* %83, %struct.vmxnet3_adapter* %84)
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %88 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock(i32* %88)
  br label %90

90:                                               ; preds = %86, %53
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @VMXNET3_TCD_GET_GEN(i32*) #1

declare dso_local i64 @vmxnet3_unmap_pkt(i32, %struct.vmxnet3_tx_queue*, i32, %struct.vmxnet3_adapter*) #1

declare dso_local i32 @VMXNET3_TCD_GET_TXIDX(i32*) #1

declare dso_local i32 @vmxnet3_comp_ring_adv_next2proc(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vmxnet3_tq_stopped(%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*) #1

declare dso_local i64 @vmxnet3_cmd_ring_desc_avail(i32*) #1

declare dso_local i64 @VMXNET3_WAKE_QUEUE_THRESHOLD(%struct.vmxnet3_tx_queue*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @vmxnet3_tq_wake(%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
