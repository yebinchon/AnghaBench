; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_vfdi_insert_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_vfdi_insert_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_vf = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.efx_nic* }
%struct.TYPE_4__ = type { %struct.vfdi_req* }
%struct.vfdi_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.efx_nic = type { i32, i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"ERROR: Invalid INSERT_FILTER from %s: rxq %d flags 0x%x\0A\00", align 1
@VFDI_RC_EINVAL = common dso_local global i32 0, align 4
@VFDI_MAC_FILTER_FLAG_RSS = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX_RSS = common dso_local global i32 0, align 4
@VFDI_MAC_FILTER_FLAG_SCATTER = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX_SCATTER = common dso_local global i32 0, align 4
@vfdi_workqueue = common dso_local global i32 0, align 4
@VFDI_RC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_vf*)* @efx_vfdi_insert_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_vfdi_insert_filter(%struct.efx_vf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_vf*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.vfdi_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_vf* %0, %struct.efx_vf** %3, align 8
  %8 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %9 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %8, i32 0, i32 5
  %10 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  store %struct.efx_nic* %10, %struct.efx_nic** %4, align 8
  %11 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %12 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.vfdi_req*, %struct.vfdi_req** %13, align 8
  store %struct.vfdi_req* %14, %struct.vfdi_req** %5, align 8
  %15 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %16 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @bad_vf_index(%struct.efx_nic* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %26 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %24, %1
  %30 = call i64 (...) @net_ratelimit()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %34 = load i32, i32* @hw, align 4
  %35 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %39 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %43 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @netif_err(%struct.efx_nic* %33, i32 %34, i32 %37, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %32, %29
  %49 = load i32, i32* @VFDI_RC_EINVAL, align 4
  store i32 %49, i32* %2, align 4
  br label %92

50:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  %51 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %52 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @VFDI_MAC_FILTER_FLAG_RSS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i32, i32* @EFX_FILTER_FLAG_RX_RSS, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %50
  %64 = load %struct.vfdi_req*, %struct.vfdi_req** %5, align 8
  %65 = getelementptr inbounds %struct.vfdi_req, %struct.vfdi_req* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @VFDI_MAC_FILTER_FLAG_SCATTER, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i32, i32* @EFX_FILTER_FLAG_RX_SCATTER, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %72, %63
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %79 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %82 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %84 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %86 = call i32 @efx_sriov_reset_rx_filter(%struct.efx_vf* %85)
  %87 = load i32, i32* @vfdi_workqueue, align 4
  %88 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %89 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %88, i32 0, i32 0
  %90 = call i32 @queue_work(i32 %87, i32* %89)
  %91 = load i32, i32* @VFDI_RC_SUCCESS, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %76, %48
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @bad_vf_index(%struct.efx_nic*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @efx_sriov_reset_rx_filter(%struct.efx_vf*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
