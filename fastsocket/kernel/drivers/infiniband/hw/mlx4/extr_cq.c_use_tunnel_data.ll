; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_use_tunnel_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_use_tunnel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_qp = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_ib_cq = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i64, i32, i64 }
%struct.mlx4_cqe = type { i32 }
%struct.mlx4_ib_proxy_sqp_hdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_qp*, %struct.mlx4_ib_cq*, %struct.ib_wc*, i32, %struct.mlx4_cqe*)* @use_tunnel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_tunnel_data(%struct.mlx4_ib_qp* %0, %struct.mlx4_ib_cq* %1, %struct.ib_wc* %2, i32 %3, %struct.mlx4_cqe* %4) #0 {
  %6 = alloca %struct.mlx4_ib_qp*, align 8
  %7 = alloca %struct.mlx4_ib_cq*, align 8
  %8 = alloca %struct.ib_wc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_cqe*, align 8
  %11 = alloca %struct.mlx4_ib_proxy_sqp_hdr*, align 8
  store %struct.mlx4_ib_qp* %0, %struct.mlx4_ib_qp** %6, align 8
  store %struct.mlx4_ib_cq* %1, %struct.mlx4_ib_cq** %7, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.mlx4_cqe* %4, %struct.mlx4_cqe** %10, align 8
  %12 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %25 = call i32 @ib_dma_sync_single_for_cpu(i32 %15, i32 %23, i32 20, i32 %24)
  %26 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.mlx4_ib_proxy_sqp_hdr*
  store %struct.mlx4_ib_proxy_sqp_hdr* %34, %struct.mlx4_ib_proxy_sqp_hdr** %11, align 8
  %35 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %11, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be16_to_cpu(i32 %38)
  %40 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %41 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %11, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be16_to_cpu(i32 %45)
  %47 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %48 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %11, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be16_to_cpu(i32 %52)
  %54 = ashr i32 %53, 12
  %55 = sext i32 %54 to i64
  %56 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %57 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %56, i32 0, i32 5
  store i64 %55, i64* %57, align 8
  %58 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %11, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be32_to_cpu(i32 %61)
  %63 = and i32 %62, 16777215
  %64 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %65 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %11, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 128
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %5
  %73 = load i32, i32* @IB_WC_GRH, align 4
  br label %75

74:                                               ; preds = %5
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %78 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %82 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  ret i32 0
}

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
