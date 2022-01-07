; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_dma_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_dma_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EHCA_INVAL_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ib_device*, %struct.page*, i64, i64, i32)* @ehca_dma_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ehca_dma_map_page(%struct.ib_device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %10, align 8
  %15 = add i64 %13, %14
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i64, i64* @EHCA_INVAL_ADDR, align 8
  store i64 %19, i64* %6, align 8
  br label %34

20:                                               ; preds = %5
  %21 = load %struct.page*, %struct.page** %8, align 8
  %22 = call i32 @page_address(%struct.page* %21)
  %23 = call i64 @ehca_map_vaddr(i32 %22)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @ehca_dma_mapping_error(%struct.ib_device* %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %12, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %12, align 8
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i64, i64* %12, align 8
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %32, %18
  %35 = load i64, i64* %6, align 8
  ret i64 %35
}

declare dso_local i64 @ehca_map_vaddr(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @ehca_dma_mapping_error(%struct.ib_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
