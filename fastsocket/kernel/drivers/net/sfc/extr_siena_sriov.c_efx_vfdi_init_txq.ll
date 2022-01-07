; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_vfdi_init_txq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_vfdi_init_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_vf = type { i64, i32, i32, i32, i32, %struct.TYPE_4__, %struct.efx_nic* }
%struct.TYPE_4__ = type { %struct.vfdi_req* }
%struct.vfdi_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.efx_nic = type { i32, i32 }

@vf_max_tx_channels = common dso_local global i32 0, align 4
@EFX_MAX_DMAQ_SIZE = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"ERROR: Invalid INIT_TXQ from %s: txq %d evq %d buf_count %d\0A\00", align 1
@VFDI_RC_EINVAL = common dso_local global i32 0, align 4
@VF_TX_FILTER_ON = common dso_local global i64 0, align 8
@FRF_AZ_TX_DESCQ_LABEL = common dso_local global i32 0, align 4
@FRF_CZ_TX_DPT_Q_MASK_WIDTH = common dso_local global i32 0, align 4
@FRF_CZ_TX_DPT_ETH_FILT_EN = common dso_local global i32 0, align 4
@FRF_AZ_TX_DESCQ_EN = common dso_local global i32 0, align 4
@FRF_AZ_TX_DESCQ_BUF_BASE_ID = common dso_local global i32 0, align 4
@FRF_AZ_TX_DESCQ_EVQ_ID = common dso_local global i32 0, align 4
@FRF_AZ_TX_DESCQ_SIZE = common dso_local global i32 0, align 4
@FRF_BZ_TX_NON_IP_DROP_DIS = common dso_local global i32 0, align 4
@FR_BZ_TX_DESC_PTR_TBL = common dso_local global i32 0, align 4
@VFDI_RC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_vf*)* @efx_vfdi_init_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_vfdi_init_txq(%struct.efx_vf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_vf*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.vfdi_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.efx_vf* %0, %struct.efx_vf** %3, align 8
  %13 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %14 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %13, i32 0, i32 6
  %15 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  store %struct.efx_nic* %15, %struct.efx_nic** %4, align 8
  %16 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %17 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.vfdi_req*, %struct.vfdi_req** %18, align 8
  store %struct.vfdi_req* %19, %struct.vfdi_req** %5, align 8
  %20 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %21 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %26 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %31 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @EFX_BUFTBL_TXQ_BASE(%struct.efx_vf* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @bad_vf_index(%struct.efx_nic* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %1
  %43 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @bad_vf_index(%struct.efx_nic* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @vf_max_tx_channels, align 4
  %50 = icmp uge i32 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @EFX_MAX_DMAQ_SIZE, align 4
  %54 = call i64 @bad_buf_count(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51, %47, %42, %1
  %57 = call i64 (...) @net_ratelimit()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %61 = load i32, i32* @hw, align 4
  %62 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %63 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %66 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @netif_err(%struct.efx_nic* %60, i32 %61, i32 %64, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %59, %56
  %73 = load i32, i32* @VFDI_RC_EINVAL, align 4
  store i32 %73, i32* %2, align 4
  br label %149

74:                                               ; preds = %51
  %75 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %76 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %75, i32 0, i32 1
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %79 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %84 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @__test_and_set_bit(i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %74
  %89 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %90 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %88, %74
  %94 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %95 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %100 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @efx_sriov_bufs(%struct.efx_nic* %97, i32 %98, i32 %103, i32 %104)
  %106 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %107 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @VF_TX_FILTER_ON, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %11, align 4
  %112 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %113 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @FRF_AZ_TX_DESCQ_LABEL, align 4
  %118 = call i32 @EFX_FIELD_MASK(i32 %117)
  %119 = and i32 %116, %118
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @FRF_CZ_TX_DPT_Q_MASK_WIDTH, align 4
  %122 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %123 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @min(i32 %124, i32 1)
  %126 = load i32, i32* @FRF_CZ_TX_DPT_ETH_FILT_EN, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @FRF_AZ_TX_DESCQ_EN, align 4
  %129 = load i32, i32* @FRF_AZ_TX_DESCQ_BUF_BASE_ID, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @FRF_AZ_TX_DESCQ_EVQ_ID, align 4
  %132 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @abs_index(%struct.efx_vf* %132, i32 %133)
  %135 = load i32, i32* @FRF_AZ_TX_DESCQ_LABEL, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @FRF_AZ_TX_DESCQ_SIZE, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @__ffs(i32 %138)
  %140 = load i32, i32* @FRF_BZ_TX_NON_IP_DROP_DIS, align 4
  %141 = call i32 @EFX_POPULATE_OWORD_8(i32 %120, i32 %121, i32 %125, i32 %126, i32 %127, i32 %128, i32 1, i32 %129, i32 %130, i32 %131, i32 %134, i32 %135, i32 %136, i32 %137, i32 %139, i32 %140, i32 1)
  %142 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %143 = load i32, i32* @FR_BZ_TX_DESC_PTR_TBL, align 4
  %144 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @abs_index(%struct.efx_vf* %144, i32 %145)
  %147 = call i32 @efx_writeo_table(%struct.efx_nic* %142, i32* %12, i32 %143, i32 %146)
  %148 = load i32, i32* @VFDI_RC_SUCCESS, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %93, %72
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @EFX_BUFTBL_TXQ_BASE(%struct.efx_vf*, i32) #1

declare dso_local i64 @bad_vf_index(%struct.efx_nic*, i32) #1

declare dso_local i64 @bad_buf_count(i32, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__test_and_set_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @efx_sriov_bufs(%struct.efx_nic*, i32, i32, i32) #1

declare dso_local i32 @EFX_FIELD_MASK(i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @abs_index(%struct.efx_vf*, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @efx_writeo_table(%struct.efx_nic*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
