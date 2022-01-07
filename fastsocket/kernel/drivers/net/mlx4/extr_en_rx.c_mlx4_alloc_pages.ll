; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32 }
%struct.mlx4_en_rx_alloc = type { i32, i32, i32, %struct.page* }
%struct.page = type { i32 }
%struct.mlx4_en_frag_info = type { i32, i32, i32 }

@MLX4_EN_ALLOC_PREFER_ORDER = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_frag_info*, i32)* @mlx4_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_alloc_pages(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_alloc* %1, %struct.mlx4_en_frag_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_rx_alloc*, align 8
  %8 = alloca %struct.mlx4_en_frag_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %6, align 8
  store %struct.mlx4_en_rx_alloc* %1, %struct.mlx4_en_rx_alloc** %7, align 8
  store %struct.mlx4_en_frag_info* %2, %struct.mlx4_en_frag_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @MLX4_EN_ALLOC_PREFER_ORDER, align 4
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %48, %4
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* @__GFP_COMP, align 4
  %21 = load i32, i32* @__GFP_NOWARN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %13, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %19, %15
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.page* @alloc_pages(i32 %26, i32 %27)
  store %struct.page* %28, %struct.page** %11, align 8
  %29 = load %struct.page*, %struct.page** %11, align 8
  %30 = call i64 @likely(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %49

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load i32, i32* %10, align 4
  %40 = shl i32 %38, %39
  %41 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %8, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37, %33
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %97

48:                                               ; preds = %37
  br label %15

49:                                               ; preds = %32
  %50 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.page*, %struct.page** %11, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %58 = call i32 @dma_map_page(i32 %52, %struct.page* %53, i32 0, i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i64 @dma_mapping_error(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = load %struct.page*, %struct.page** %11, align 8
  %67 = call i32 @put_page(%struct.page* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %97

70:                                               ; preds = %49
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 %71, %72
  %74 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %7, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.page*, %struct.page** %11, align 8
  %77 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %7, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %77, i32 0, i32 3
  store %struct.page* %76, %struct.page** %78, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %7, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %8, align 8
  %83 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %7, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.page*, %struct.page** %11, align 8
  %88 = getelementptr inbounds %struct.page, %struct.page* %87, i32 0, i32 0
  %89 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %7, align 8
  %90 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %8, align 8
  %93 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %91, %94
  %96 = call i32 @atomic_set(i32* %88, i32 %95)
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %70, %65, %45
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i64 @likely(%struct.page*) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
