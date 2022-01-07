; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_init_tx_queue_core_txq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_init_tx_queue_core_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32, i32 }

@EFX_TXQ_TYPES = common dso_local global i32 0, align 4
@EFX_TXQ_TYPE_HIGHPRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_init_tx_queue_core_txq(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %2, align 8
  %4 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %5 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %4, i32 0, i32 2
  %6 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  store %struct.efx_nic* %6, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EFX_TXQ_TYPES, align 4
  %14 = sdiv i32 %12, %13
  %15 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %16 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EFX_TXQ_TYPE_HIGHPRI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %23 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 0, %25 ]
  %28 = add nsw i32 %14, %27
  %29 = call i32 @netdev_get_tx_queue(i32 %9, i32 %28)
  %30 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %31 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local i32 @netdev_get_tx_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
