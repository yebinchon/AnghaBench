; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_notify_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_notify_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, i32, i32 }

@FRF_AZ_TX_DESC_WPTR_DWORD = common dso_local global i32 0, align 4
@FR_AZ_TX_DESC_UPD_DWORD_P0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*)* @efx_notify_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_notify_tx_desc(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %2, align 8
  %5 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %6 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %9 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %7, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FRF_AZ_TX_DESC_WPTR_DWORD, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @EFX_POPULATE_DWORD_1(i32 %12, i32 %13, i32 %14)
  %16 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %17 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FR_AZ_TX_DESC_UPD_DWORD_P0, align 4
  %20 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %21 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @efx_writed_page(i32 %18, i32* %4, i32 %19, i32 %22)
  ret void
}

declare dso_local i32 @EFX_POPULATE_DWORD_1(i32, i32, i32) #1

declare dso_local i32 @efx_writed_page(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
