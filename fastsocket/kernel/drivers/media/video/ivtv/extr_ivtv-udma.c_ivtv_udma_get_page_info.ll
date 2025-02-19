; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-udma.c_ivtv_udma_get_page_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-udma.c_ivtv_udma_get_page_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_dma_page_info = type { i64, i64, i32, i64, i64, i64 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_udma_get_page_info(%struct.ivtv_dma_page_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ivtv_dma_page_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ivtv_dma_page_info* %0, %struct.ivtv_dma_page_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @PAGE_MASK, align 8
  %9 = and i64 %7, %8
  %10 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %4, align 8
  %11 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @PAGE_MASK, align 8
  %14 = xor i64 %13, -1
  %15 = and i64 %12, %14
  %16 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %4, align 8
  %17 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %18, %19
  %21 = sub i64 %20, 1
  %22 = load i64, i64* @PAGE_MASK, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  %25 = add i64 1, %24
  %26 = trunc i64 %25 to i32
  %27 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %4, align 8
  %28 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @PAGE_MASK, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  %34 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %4, align 8
  %35 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %36, %37
  %39 = sub i64 %38, 1
  %40 = load i64, i64* @PAGE_MASK, align 8
  %41 = and i64 %39, %40
  %42 = load i64, i64* @PAGE_SHIFT, align 8
  %43 = lshr i64 %41, %42
  %44 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %4, align 8
  %45 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %4, align 8
  %47 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %4, align 8
  %50 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %48, %51
  %53 = add i64 %52, 1
  %54 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %4, align 8
  %55 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %54, i32 0, i32 5
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %4, align 8
  %57 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 1
  br i1 %59, label %60, label %70

60:                                               ; preds = %3
  %61 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %4, align 8
  %62 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ivtv_dma_page_info*, %struct.ivtv_dma_page_info** %4, align 8
  %65 = getelementptr inbounds %struct.ivtv_dma_page_info, %struct.ivtv_dma_page_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = sub i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 8
  br label %70

70:                                               ; preds = %60, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
