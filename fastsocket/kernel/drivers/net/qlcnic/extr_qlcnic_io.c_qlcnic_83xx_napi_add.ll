; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_napi_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_napi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.qlcnic_host_tx_ring*, %struct.qlcnic_recv_context* }
%struct.qlcnic_host_tx_ring = type { i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.net_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_TX_INTR_SHARED = common dso_local global i32 0, align 4
@qlcnic_83xx_rx_poll = common dso_local global i32 0, align 4
@QLCNIC_NETDEV_WEIGHT = common dso_local global i32 0, align 4
@qlcnic_83xx_msix_sriov_vf_poll = common dso_local global i32 0, align 4
@qlcnic_83xx_poll = common dso_local global i32 0, align 4
@qlcnic_83xx_msix_tx_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_napi_add(%struct.qlcnic_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %10 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %11 = alloca %struct.qlcnic_recv_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 4
  %14 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %13, align 8
  store %struct.qlcnic_recv_context* %14, %struct.qlcnic_recv_context** %11, align 8
  %15 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %11, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @qlcnic_alloc_sds_rings(%struct.qlcnic_recv_context* %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %135

24:                                               ; preds = %2
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %83, %24
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %86

34:                                               ; preds = %28
  %35 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %11, align 8
  %36 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %35, i32 0, i32 0
  %37 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %37, i64 %39
  store %struct.qlcnic_host_sds_ring* %40, %struct.qlcnic_host_sds_ring** %9, align 8
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %34
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %47
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %57 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %56, i32 0, i32 0
  %58 = load i32, i32* @qlcnic_83xx_rx_poll, align 4
  %59 = load i32, i32* @QLCNIC_NETDEV_WEIGHT, align 4
  %60 = mul nsw i32 %59, 2
  %61 = call i32 @netif_napi_add(%struct.net_device* %55, i32* %57, i32 %58, i32 %60)
  br label %72

62:                                               ; preds = %47
  %63 = load i32, i32* @QLCNIC_NETDEV_WEIGHT, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %8, align 4
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %68 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %67, i32 0, i32 0
  %69 = load i32, i32* @qlcnic_83xx_msix_sriov_vf_poll, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @netif_napi_add(%struct.net_device* %66, i32* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %54
  br label %82

73:                                               ; preds = %34
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %76 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %75, i32 0, i32 0
  %77 = load i32, i32* @qlcnic_83xx_poll, align 4
  %78 = load i32, i32* @QLCNIC_NETDEV_WEIGHT, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sdiv i32 %78, %79
  %81 = call i32 @netif_napi_add(%struct.net_device* %74, i32* %76, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %73, %72
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %28

86:                                               ; preds = %28
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = call i64 @qlcnic_alloc_tx_rings(%struct.qlcnic_adapter* %87, %struct.net_device* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %11, align 8
  %93 = call i32 @qlcnic_free_sds_rings(%struct.qlcnic_recv_context* %92)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %135

96:                                               ; preds = %86
  %97 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %98 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %96
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %105 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %134, label %110

110:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %130, %110
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %114 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %111
  %118 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %119 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %118, i32 0, i32 3
  %120 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %120, i64 %122
  store %struct.qlcnic_host_tx_ring* %123, %struct.qlcnic_host_tx_ring** %10, align 8
  %124 = load %struct.net_device*, %struct.net_device** %5, align 8
  %125 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %126 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %125, i32 0, i32 0
  %127 = load i32, i32* @qlcnic_83xx_msix_tx_poll, align 4
  %128 = load i32, i32* @QLCNIC_NETDEV_WEIGHT, align 4
  %129 = call i32 @netif_napi_add(%struct.net_device* %124, i32* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %117
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %111

133:                                              ; preds = %111
  br label %134

134:                                              ; preds = %133, %103, %96
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %91, %21
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @qlcnic_alloc_sds_rings(%struct.qlcnic_recv_context*, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i64 @qlcnic_alloc_tx_rings(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_free_sds_rings(%struct.qlcnic_recv_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
