; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_mem.c_c4iw_alloc_fastreg_pbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_mem.c_c4iw_alloc_fastreg_pbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fast_reg_page_list = type { i32, i32* }
%struct.ib_device = type { i32 }
%struct.c4iw_fr_page_list = type { i32, %struct.ib_fast_reg_page_list, %struct.c4iw_dev*, i32 }
%struct.c4iw_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_fast_reg_page_list* @c4iw_alloc_fastreg_pbl(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_fast_reg_page_list*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c4iw_fr_page_list*, align 8
  %7 = alloca %struct.c4iw_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %11 = call %struct.c4iw_dev* @to_c4iw_dev(%struct.ib_device* %10)
  store %struct.c4iw_dev* %11, %struct.c4iw_dev** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = add i64 40, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.c4iw_dev*, %struct.c4iw_dev** %7, align 8
  %18 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.c4iw_fr_page_list* @dma_alloc_coherent(i32* %22, i32 %23, i32* %8, i32 %24)
  store %struct.c4iw_fr_page_list* %25, %struct.c4iw_fr_page_list** %6, align 8
  %26 = load %struct.c4iw_fr_page_list*, %struct.c4iw_fr_page_list** %6, align 8
  %27 = icmp ne %struct.c4iw_fr_page_list* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.ib_fast_reg_page_list* @ERR_PTR(i32 %30)
  store %struct.ib_fast_reg_page_list* %31, %struct.ib_fast_reg_page_list** %3, align 8
  br label %58

32:                                               ; preds = %2
  %33 = load %struct.c4iw_fr_page_list*, %struct.c4iw_fr_page_list** %6, align 8
  %34 = load i32, i32* @mapping, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @pci_unmap_addr_set(%struct.c4iw_fr_page_list* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.c4iw_fr_page_list*, %struct.c4iw_fr_page_list** %6, align 8
  %39 = getelementptr inbounds %struct.c4iw_fr_page_list, %struct.c4iw_fr_page_list* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.c4iw_dev*, %struct.c4iw_dev** %7, align 8
  %41 = load %struct.c4iw_fr_page_list*, %struct.c4iw_fr_page_list** %6, align 8
  %42 = getelementptr inbounds %struct.c4iw_fr_page_list, %struct.c4iw_fr_page_list* %41, i32 0, i32 2
  store %struct.c4iw_dev* %40, %struct.c4iw_dev** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.c4iw_fr_page_list*, %struct.c4iw_fr_page_list** %6, align 8
  %45 = getelementptr inbounds %struct.c4iw_fr_page_list, %struct.c4iw_fr_page_list* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.c4iw_fr_page_list*, %struct.c4iw_fr_page_list** %6, align 8
  %47 = getelementptr inbounds %struct.c4iw_fr_page_list, %struct.c4iw_fr_page_list* %46, i64 1
  %48 = bitcast %struct.c4iw_fr_page_list* %47 to i32*
  %49 = load %struct.c4iw_fr_page_list*, %struct.c4iw_fr_page_list** %6, align 8
  %50 = getelementptr inbounds %struct.c4iw_fr_page_list, %struct.c4iw_fr_page_list* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %50, i32 0, i32 1
  store i32* %48, i32** %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.c4iw_fr_page_list*, %struct.c4iw_fr_page_list** %6, align 8
  %54 = getelementptr inbounds %struct.c4iw_fr_page_list, %struct.c4iw_fr_page_list* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.c4iw_fr_page_list*, %struct.c4iw_fr_page_list** %6, align 8
  %57 = getelementptr inbounds %struct.c4iw_fr_page_list, %struct.c4iw_fr_page_list* %56, i32 0, i32 1
  store %struct.ib_fast_reg_page_list* %57, %struct.ib_fast_reg_page_list** %3, align 8
  br label %58

58:                                               ; preds = %32, %28
  %59 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %3, align 8
  ret %struct.ib_fast_reg_page_list* %59
}

declare dso_local %struct.c4iw_dev* @to_c4iw_dev(%struct.ib_device*) #1

declare dso_local %struct.c4iw_fr_page_list* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local %struct.ib_fast_reg_page_list* @ERR_PTR(i32) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.c4iw_fr_page_list*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
