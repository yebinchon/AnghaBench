; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_napi_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_napi_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_recv_context* }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_82xx_napi_del(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %5 = alloca %struct.qlcnic_recv_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %6, i32 0, i32 1
  %8 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %7, align 8
  store %struct.qlcnic_recv_context* %8, %struct.qlcnic_recv_context** %5, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %5, align 8
  %17 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %16, i32 0, i32 0
  %18 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %18, i64 %20
  store %struct.qlcnic_host_sds_ring* %21, %struct.qlcnic_host_sds_ring** %4, align 8
  %22 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %4, align 8
  %23 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %22, i32 0, i32 0
  %24 = call i32 @netif_napi_del(i32* %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 1
  %31 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %30, align 8
  %32 = call i32 @qlcnic_free_sds_rings(%struct.qlcnic_recv_context* %31)
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %34 = call i32 @qlcnic_free_tx_rings(%struct.qlcnic_adapter* %33)
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
