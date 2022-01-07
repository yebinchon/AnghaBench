; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_nic_init_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_nic_init_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { %struct.TYPE_6__, i64, %struct.efx_nic* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.efx_nic = type { %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EFX_REV_FALCON_B0 = common dso_local global i64 0, align 8
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"RX queue %d ring in special buffers %d-%d\0A\00", align 1
@FRF_AZ_RX_ISCSI_DDIG_EN = common dso_local global i32 0, align 4
@FRF_AZ_RX_ISCSI_HDIG_EN = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_BUF_BASE_ID = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_EVQ_ID = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_OWNER_ID = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_LABEL = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_SIZE = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_TYPE = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_JUMBO = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_nic_init_rx(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca %struct.efx_rx_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %2, align 8
  %8 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %9 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %8, i32 0, i32 2
  %10 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  store %struct.efx_nic* %10, %struct.efx_nic** %4, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %12 = call i64 @efx_nic_rev(%struct.efx_nic* %11)
  %13 = load i64, i64* @EFX_REV_FALCON_B0, align 8
  %14 = icmp sge i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %1
  %25 = phi i1 [ true, %1 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %28 = load i32, i32* @hw, align 4
  %29 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %33 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %32)
  %34 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %35 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %39 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %43 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %41, %45
  %47 = sub nsw i64 %46, 1
  %48 = call i32 @netif_dbg(%struct.efx_nic* %27, i32 %28, i32 %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %37, i64 %47)
  %49 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %50 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %52 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %53 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %52, i32 0, i32 0
  %54 = call i32 @efx_init_special_buffer(%struct.efx_nic* %51, %struct.TYPE_6__* %53)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @FRF_AZ_RX_ISCSI_DDIG_EN, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @FRF_AZ_RX_ISCSI_HDIG_EN, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @FRF_AZ_RX_DESCQ_BUF_BASE_ID, align 4
  %61 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %62 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @FRF_AZ_RX_DESCQ_EVQ_ID, align 4
  %66 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %67 = call %struct.TYPE_5__* @efx_rx_queue_channel(%struct.efx_rx_queue* %66)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FRF_AZ_RX_DESCQ_OWNER_ID, align 4
  %71 = load i32, i32* @FRF_AZ_RX_DESCQ_LABEL, align 4
  %72 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %73 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %72)
  %74 = load i32, i32* @FRF_AZ_RX_DESCQ_SIZE, align 4
  %75 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %76 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @__ffs(i64 %78)
  %80 = load i32, i32* @FRF_AZ_RX_DESCQ_TYPE, align 4
  %81 = load i32, i32* @FRF_AZ_RX_DESCQ_JUMBO, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @FRF_AZ_RX_DESCQ_EN, align 4
  %84 = call i32 @EFX_POPULATE_OWORD_10(i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i64 %64, i32 %65, i32 %69, i32 %70, i32 0, i32 %71, i32 %73, i32 %74, i32 %79, i32 %80, i32 0, i32 %81, i32 %82, i32 %83, i32 1)
  %85 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %86 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %87 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %92 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %91)
  %93 = call i32 @efx_writeo_table(%struct.efx_nic* %85, i32* %3, i32 %90, i32 %92)
  ret void
}

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

declare dso_local i32 @efx_init_special_buffer(%struct.efx_nic*, %struct.TYPE_6__*) #1

declare dso_local i32 @EFX_POPULATE_OWORD_10(i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @efx_rx_queue_channel(%struct.efx_rx_queue*) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @efx_writeo_table(%struct.efx_nic*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
