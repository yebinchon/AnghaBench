; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_destroy_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_destroy_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_rx_ring = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TXBB_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_destroy_rx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_rx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_en_dev*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %10, i32 0, i32 0
  %12 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %11, align 8
  store %struct.mlx4_en_dev* %12, %struct.mlx4_en_dev** %9, align 8
  %13 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %6, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @mlx4_en_unmap_buffer(i32* %15)
  %17 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %6, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %20, i32 0, i32 1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @TXBB_SIZE, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @mlx4_free_hwq_res(i32 %19, %struct.TYPE_2__* %21, i64 %27)
  %29 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %6, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @vfree(i32* %31)
  %33 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  ret void
}

declare dso_local i32 @mlx4_en_unmap_buffer(i32*) #1

declare dso_local i32 @mlx4_free_hwq_res(i32, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
