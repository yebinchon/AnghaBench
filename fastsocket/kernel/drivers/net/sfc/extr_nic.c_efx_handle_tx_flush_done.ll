; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_handle_tx_flush_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_handle_tx_flush_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_tx_queue = type { i32, i32 }

@FSF_AZ_DRIVER_EV_SUBDATA = common dso_local global i32 0, align 4
@EFX_TXQ_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32*)* @efx_handle_tx_flush_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_handle_tx_flush_done(%struct.efx_nic* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.efx_tx_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FSF_AZ_DRIVER_EV_SUBDATA, align 4
  %10 = call i32 @EFX_QWORD_FIELD(i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @EFX_TXQ_TYPES, align 4
  %13 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @EFX_TXQ_TYPES, align 4
  %22 = sdiv i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EFX_TXQ_TYPES, align 4
  %25 = srem i32 %23, %24
  %26 = call %struct.efx_tx_queue* @efx_get_tx_queue(%struct.efx_nic* %19, i32 %22, i32 %25)
  store %struct.efx_tx_queue* %26, %struct.efx_tx_queue** %5, align 8
  %27 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %28 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %27, i32 0, i32 1
  %29 = call i64 @atomic_cmpxchg(i32* %28, i32 1, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %33 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %36 = call i32 @EFX_CHANNEL_MAGIC_TX_DRAIN(%struct.efx_tx_queue* %35)
  %37 = call i32 @efx_magic_event(i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %31, %18
  br label %39

39:                                               ; preds = %38, %2
  ret void
}

declare dso_local i32 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local %struct.efx_tx_queue* @efx_get_tx_queue(%struct.efx_nic*, i32, i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @efx_magic_event(i32, i32) #1

declare dso_local i32 @EFX_CHANNEL_MAGIC_TX_DRAIN(%struct.efx_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
