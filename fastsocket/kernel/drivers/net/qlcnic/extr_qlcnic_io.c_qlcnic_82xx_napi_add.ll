; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_napi_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_napi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_recv_context* }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.net_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@qlcnic_poll = common dso_local global i32 0, align 4
@QLCNIC_NETDEV_WEIGHT = common dso_local global i32 0, align 4
@qlcnic_rx_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_napi_add(%struct.qlcnic_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %9 = alloca %struct.qlcnic_recv_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 1
  %12 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %11, align 8
  store %struct.qlcnic_recv_context* %12, %struct.qlcnic_recv_context** %9, align 8
  %13 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %9, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @qlcnic_alloc_sds_rings(%struct.qlcnic_recv_context* %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %77

22:                                               ; preds = %2
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %63, %22
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %26
  %33 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %9, align 8
  %34 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %33, i32 0, i32 0
  %35 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %35, i64 %37
  store %struct.qlcnic_host_sds_ring* %38, %struct.qlcnic_host_sds_ring** %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %32
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %8, align 8
  %48 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %47, i32 0, i32 0
  %49 = load i32, i32* @qlcnic_poll, align 4
  %50 = load i32, i32* @QLCNIC_NETDEV_WEIGHT, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sdiv i32 %50, %51
  %53 = call i32 @netif_napi_add(%struct.net_device* %46, i32* %48, i32 %49, i32 %52)
  br label %62

54:                                               ; preds = %32
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %8, align 8
  %57 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %56, i32 0, i32 0
  %58 = load i32, i32* @qlcnic_rx_poll, align 4
  %59 = load i32, i32* @QLCNIC_NETDEV_WEIGHT, align 4
  %60 = mul nsw i32 %59, 2
  %61 = call i32 @netif_napi_add(%struct.net_device* %55, i32* %57, i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %54, %45
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %26

66:                                               ; preds = %26
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = call i64 @qlcnic_alloc_tx_rings(%struct.qlcnic_adapter* %67, %struct.net_device* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %9, align 8
  %73 = call i32 @qlcnic_free_sds_rings(%struct.qlcnic_recv_context* %72)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %77

76:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %71, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
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
