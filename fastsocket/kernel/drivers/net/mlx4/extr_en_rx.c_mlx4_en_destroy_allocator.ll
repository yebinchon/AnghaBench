; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_destroy_allocator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_destroy_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, %struct.mlx4_en_frag_info* }
%struct.mlx4_en_frag_info = type { i64 }
%struct.mlx4_en_rx_ring = type { %struct.mlx4_en_rx_alloc* }
%struct.mlx4_en_rx_alloc = type { i64, i64, i32*, i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Freeing allocator:%d count:%d\0A\00", align 1
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*)* @mlx4_en_destroy_allocator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_destroy_allocator(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring* %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_rx_ring*, align 8
  %5 = alloca %struct.mlx4_en_rx_alloc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_frag_info*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_ring** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %73, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %76

14:                                               ; preds = %8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 2
  %17 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %17, i64 %19
  store %struct.mlx4_en_frag_info* %20, %struct.mlx4_en_frag_info** %7, align 8
  %21 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %21, i32 0, i32 0
  %23 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %23, i64 %25
  store %struct.mlx4_en_rx_alloc* %26, %struct.mlx4_en_rx_alloc** %5, align 8
  %27 = load i32, i32* @DRV, align 4
  %28 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @page_count(i32* %32)
  %34 = call i32 @en_dbg(i32 %27, %struct.mlx4_en_priv* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33)
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %45 = call i32 @dma_unmap_page(i32 %37, i32 %40, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %58, %14
  %47 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %7, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %46
  %59 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @put_page(i32* %61)
  %63 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %7, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %65
  store i64 %69, i64* %67, align 8
  br label %46

70:                                               ; preds = %46
  %71 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %5, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %8

76:                                               ; preds = %8
  ret void
}

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32, i32) #1

declare dso_local i32 @page_count(i32*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @put_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
