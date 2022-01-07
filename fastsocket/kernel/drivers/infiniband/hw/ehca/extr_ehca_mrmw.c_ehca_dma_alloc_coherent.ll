; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_dma_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_dma_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ib_device*, i64, i32*, i32)* @ehca_dma_alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ehca_dma_alloc_coherent(%struct.ib_device* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @get_order(i64 %14)
  %16 = call %struct.page* @alloc_pages(i32 %13, i32 %15)
  store %struct.page* %16, %struct.page** %10, align 8
  %17 = load %struct.page*, %struct.page** %10, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %4
  %20 = load %struct.page*, %struct.page** %10, align 8
  %21 = call i8* @page_address(%struct.page* %20)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @ehca_map_vaddr(i8* %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i64 @ehca_dma_mapping_error(%struct.ib_device* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load i8*, i8** %11, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @get_order(i64 %31)
  %33 = call i32 @free_pages(i64 %30, i32 %32)
  store i8* null, i8** %5, align 8
  br label %43

34:                                               ; preds = %19
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i8*, i8** %11, align 8
  store i8* %41, i8** %5, align 8
  br label %43

42:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %43

43:                                               ; preds = %42, %40, %28
  %44 = load i8*, i8** %5, align 8
  ret i8* %44
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @ehca_map_vaddr(i8*) #1

declare dso_local i64 @ehca_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
