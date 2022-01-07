; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_push_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_push_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@FRF_AZ_TX_DESC_LBN = common dso_local global i64 0, align 8
@FR_AA_TX_DESC_UPD_KER = common dso_local global i64 0, align 8
@FR_BZ_TX_DESC_UPD_P0 = common dso_local global i64 0, align 8
@FRF_AZ_TX_DESC_PUSH_CMD = common dso_local global i32 0, align 4
@FRF_AZ_TX_DESC_WPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*, i32*)* @efx_push_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_push_tx_desc(%struct.efx_tx_queue* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_tx_queue*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i64, i64* @FRF_AZ_TX_DESC_LBN, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUILD_BUG_ON(i32 %9)
  %11 = load i64, i64* @FR_AA_TX_DESC_UPD_KER, align 8
  %12 = load i64, i64* @FR_BZ_TX_DESC_UPD_P0, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %17 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %20 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @FRF_AZ_TX_DESC_PUSH_CMD, align 4
  %24 = load i32, i32* @FRF_AZ_TX_DESC_WPTR, align 4
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @EFX_POPULATE_OWORD_2(i32* %27, i32 %23, i32 1, i32 %24, i32 %25)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %35 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @FR_BZ_TX_DESC_UPD_P0, align 8
  %38 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %39 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @efx_writeo_page(i32 %36, %struct.TYPE_4__* %6, i64 %37, i32 %40)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_2(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @efx_writeo_page(i32, %struct.TYPE_4__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
