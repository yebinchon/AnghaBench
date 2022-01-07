; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_vfdi_init_rxq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_vfdi_init_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_vf = type { i32, i32, i32, %struct.TYPE_4__, %struct.efx_nic* }
%struct.TYPE_4__ = type { %struct.vfdi_req* }
%struct.vfdi_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.efx_nic = type { i32 }

@VF_MAX_RX_QUEUES = common dso_local global i32 0, align 4
@EFX_MAX_DMAQ_SIZE = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"ERROR: Invalid INIT_RXQ from %s: rxq %d evq %d buf_count %d\0A\00", align 1
@VFDI_RC_EINVAL = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_LABEL = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_BUF_BASE_ID = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_EVQ_ID = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_SIZE = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_JUMBO = common dso_local global i32 0, align 4
@VFDI_RXQ_FLAG_SCATTER_EN = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_EN = common dso_local global i32 0, align 4
@FR_BZ_RX_DESC_PTR_TBL = common dso_local global i32 0, align 4
@VFDI_RC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_vf*)* @efx_vfdi_init_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_vfdi_init_rxq(%struct.efx_vf* %0) #0 {
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
  store %struct.efx_vf* %0, %struct.efx_vf** %3, align 8
  %12 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %13 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %12, i32 0, i32 4
  %14 = load %struct.efx_nic*, %struct.efx_nic** %13, align 8
  store %struct.efx_nic* %14, %struct.efx_nic** %4, align 8
  %15 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %16 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.vfdi_req*, %struct.vfdi_req** %17, align 8
  store %struct.vfdi_req* %18, %struct.vfdi_req** %5, align 8
  %19 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %20 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %25 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %30 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @EFX_BUFTBL_RXQ_BASE(%struct.efx_vf* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @bad_vf_index(%struct.efx_nic* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %1
  %42 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @bad_vf_index(%struct.efx_nic* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @VF_MAX_RX_QUEUES, align 4
  %49 = icmp uge i32 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @EFX_MAX_DMAQ_SIZE, align 4
  %53 = call i64 @bad_buf_count(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %50, %46, %41, %1
  %56 = call i64 (...) @net_ratelimit()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %60 = load i32, i32* @hw, align 4
  %61 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %62 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %65 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @netif_err(%struct.efx_nic* %59, i32 %60, i32 %63, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %58, %55
  %72 = load i32, i32* @VFDI_RC_EINVAL, align 4
  store i32 %72, i32* %2, align 4
  br label %140

73:                                               ; preds = %50
  %74 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %75 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %80 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @__test_and_set_bit(i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %86 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %84, %73
  %90 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %93 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @efx_sriov_bufs(%struct.efx_nic* %90, i32 %91, i32 %96, i32 %97)
  %99 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %100 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @FRF_AZ_RX_DESCQ_LABEL, align 4
  %105 = call i32 @EFX_FIELD_MASK(i32 %104)
  %106 = and i32 %103, %105
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @FRF_AZ_RX_DESCQ_BUF_BASE_ID, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @FRF_AZ_RX_DESCQ_EVQ_ID, align 4
  %111 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @abs_index(%struct.efx_vf* %111, i32 %112)
  %114 = load i32, i32* @FRF_AZ_RX_DESCQ_LABEL, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @FRF_AZ_RX_DESCQ_SIZE, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @__ffs(i32 %117)
  %119 = load i32, i32* @FRF_AZ_RX_DESCQ_JUMBO, align 4
  %120 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %121 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @VFDI_RXQ_FLAG_SCATTER_EN, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* @FRF_AZ_RX_DESCQ_EN, align 4
  %132 = call i32 @EFX_POPULATE_OWORD_6(i32 %107, i32 %108, i32 %109, i32 %110, i32 %113, i32 %114, i32 %115, i32 %116, i32 %118, i32 %119, i32 %130, i32 %131, i32 1)
  %133 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %134 = load i32, i32* @FR_BZ_RX_DESC_PTR_TBL, align 4
  %135 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @abs_index(%struct.efx_vf* %135, i32 %136)
  %138 = call i32 @efx_writeo_table(%struct.efx_nic* %133, i32* %11, i32 %134, i32 %137)
  %139 = load i32, i32* @VFDI_RC_SUCCESS, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %89, %71
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @EFX_BUFTBL_RXQ_BASE(%struct.efx_vf*, i32) #1

declare dso_local i64 @bad_vf_index(%struct.efx_nic*, i32) #1

declare dso_local i64 @bad_buf_count(i32, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @__test_and_set_bit(i32, i32) #1

declare dso_local i32 @efx_sriov_bufs(%struct.efx_nic*, i32, i32, i32) #1

declare dso_local i32 @EFX_FIELD_MASK(i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_6(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @abs_index(%struct.efx_vf*, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @efx_writeo_table(%struct.efx_nic*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
