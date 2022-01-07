; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_napi_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_napi_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.qlcnic_host_tx_ring*, %struct.qlcnic_recv_context* }
%struct.qlcnic_host_tx_ring = type { i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }

@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_TX_INTR_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_napi_del(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %5 = alloca %struct.qlcnic_recv_context*, align 8
  %6 = alloca %struct.qlcnic_host_tx_ring*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 4
  %9 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %8, align 8
  store %struct.qlcnic_recv_context* %9, %struct.qlcnic_recv_context** %5, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %5, align 8
  %18 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %17, i32 0, i32 0
  %19 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %19, i64 %21
  store %struct.qlcnic_host_sds_ring* %22, %struct.qlcnic_host_sds_ring** %4, align 8
  %23 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %4, align 8
  %24 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %23, i32 0, i32 0
  %25 = call i32 @netif_napi_del(i32* %24)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 4
  %32 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %31, align 8
  %33 = call i32 @qlcnic_free_sds_rings(%struct.qlcnic_recv_context* %32)
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %29
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %55, i32 0, i32 3
  %57 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %57, i64 %59
  store %struct.qlcnic_host_tx_ring* %60, %struct.qlcnic_host_tx_ring** %6, align 8
  %61 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %62 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %61, i32 0, i32 0
  %63 = call i32 @netif_napi_del(i32* %62)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %48

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %40, %29
  %69 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %70 = call i32 @qlcnic_free_tx_rings(%struct.qlcnic_adapter* %69)
  ret void
}

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @qlcnic_free_sds_rings(%struct.qlcnic_recv_context*) #1

declare dso_local i32 @qlcnic_free_tx_rings(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
