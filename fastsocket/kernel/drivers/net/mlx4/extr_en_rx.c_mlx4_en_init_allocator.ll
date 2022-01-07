; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_init_allocator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_init_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, %struct.mlx4_en_frag_info* }
%struct.mlx4_en_frag_info = type { i32 }
%struct.mlx4_en_rx_ring = type { %struct.mlx4_en_rx_alloc* }
%struct.mlx4_en_rx_alloc = type { %struct.page*, i32, i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*)* @mlx4_en_init_allocator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_init_allocator(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.mlx4_en_rx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_rx_alloc*, align 8
  %8 = alloca %struct.mlx4_en_frag_info*, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %4, align 8
  store %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_ring** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %36, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %17, i32 0, i32 2
  %19 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %19, i64 %21
  store %struct.mlx4_en_frag_info* %22, %struct.mlx4_en_frag_info** %8, align 8
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %24 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %24, i32 0, i32 0
  %26 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %26, i64 %28
  %30 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %8, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i64 @mlx4_alloc_pages(%struct.mlx4_en_priv* %23, %struct.mlx4_en_rx_alloc* %29, %struct.mlx4_en_frag_info* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  br label %40

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %10

39:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %76

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %45, %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %46, i32 0, i32 0
  %48 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %48, i64 %50
  store %struct.mlx4_en_rx_alloc* %51, %struct.mlx4_en_rx_alloc** %7, align 8
  %52 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %7, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %62 = call i32 @dma_unmap_page(i32 %54, i32 %57, i32 %60, i32 %61)
  %63 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %7, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %63, i32 0, i32 0
  %65 = load %struct.page*, %struct.page** %64, align 8
  store %struct.page* %65, %struct.page** %9, align 8
  %66 = load %struct.page*, %struct.page** %9, align 8
  %67 = getelementptr inbounds %struct.page, %struct.page* %66, i32 0, i32 0
  %68 = call i32 @atomic_set(i32* %67, i32 1)
  %69 = load %struct.page*, %struct.page** %9, align 8
  %70 = call i32 @put_page(%struct.page* %69)
  %71 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %7, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %71, i32 0, i32 0
  store %struct.page* null, %struct.page** %72, align 8
  br label %41

73:                                               ; preds = %41
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %39
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @mlx4_alloc_pages(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_frag_info*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
