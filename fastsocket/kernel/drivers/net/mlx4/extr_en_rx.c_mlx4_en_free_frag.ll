; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_free_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_free_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_frag_info* }
%struct.mlx4_en_frag_info = type { i32 }
%struct.mlx4_en_rx_alloc = type { i64, i64, i64, i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_alloc*, i32)* @mlx4_en_free_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_free_frag(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_alloc* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.mlx4_en_rx_alloc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_frag_info*, align 8
  %8 = alloca i64, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %4, align 8
  store %struct.mlx4_en_rx_alloc* %1, %struct.mlx4_en_rx_alloc** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %9, i32 0, i32 1
  %11 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %11, i64 %13
  store %struct.mlx4_en_frag_info* %14, %struct.mlx4_en_frag_info** %7, align 8
  %15 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %15, i64 %17
  %19 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %7, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 2, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %20, %25
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %28, i64 %30
  %32 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %27, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %3
  %36 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %39, i64 %41
  %43 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %45, i64 %47
  %49 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %52 = call i32 @dma_unmap_page(i32 %38, i32 %44, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %35, %3
  %54 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %54, i64 %56
  %58 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %62, i64 %64
  %66 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @put_page(i64 %67)
  br label %69

69:                                               ; preds = %61, %53
  ret void
}

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @put_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
