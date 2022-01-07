; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_prepare_rx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_prepare_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32 }
%struct.mlx4_en_rx_ring = type { i32, i32, %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_desc* }
%struct.mlx4_en_rx_alloc = type { i32 }
%struct.mlx4_en_rx_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*, i32, i32)* @mlx4_en_prepare_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_prepare_rx_desc(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_rx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_en_rx_desc*, align 8
  %10 = alloca %struct.mlx4_en_rx_alloc*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %11, i32 0, i32 3
  %13 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %14, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %13, i64 %19
  store %struct.mlx4_en_rx_desc* %20, %struct.mlx4_en_rx_desc** %9, align 8
  %21 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %6, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %21, i32 0, i32 2
  %23 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %23, i64 %29
  store %struct.mlx4_en_rx_alloc* %30, %struct.mlx4_en_rx_alloc** %10, align 8
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %32 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %9, align 8
  %33 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %34 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @mlx4_en_alloc_frags(%struct.mlx4_en_priv* %31, %struct.mlx4_en_rx_desc* %32, %struct.mlx4_en_rx_alloc* %33, i32 %36, i32 %37)
  ret i32 %38
}

declare dso_local i32 @mlx4_en_alloc_frags(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_alloc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
