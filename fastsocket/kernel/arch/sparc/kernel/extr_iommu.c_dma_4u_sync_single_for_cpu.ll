; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_dma_4u_sync_single_for_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_dma_4u_sync_single_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.strbuf*, %struct.iommu* }
%struct.strbuf = type { i64, i32 }
%struct.iommu = type { i64, i32, i32*, i64 }

@IO_PAGE_MASK = common dso_local global i64 0, align 8
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@IOPTE_CONTEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i64, i32)* @dma_4u_sync_single_for_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4u_sync_single_for_cpu(%struct.device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iommu*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.iommu*, %struct.iommu** %17, align 8
  store %struct.iommu* %18, %struct.iommu** %9, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.strbuf*, %struct.strbuf** %21, align 8
  store %struct.strbuf* %22, %struct.strbuf** %10, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %86

28:                                               ; preds = %4
  %29 = load %struct.iommu*, %struct.iommu** %9, align 8
  %30 = getelementptr inbounds %struct.iommu, %struct.iommu* %29, i32 0, i32 1
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %33, %34
  %36 = call i64 @IO_PAGE_ALIGN(i64 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @IO_PAGE_MASK, align 8
  %39 = and i64 %37, %38
  %40 = sub i64 %36, %39
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %42 = load i64, i64* %13, align 8
  %43 = lshr i64 %42, %41
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* @IO_PAGE_MASK, align 8
  %45 = load i64, i64* %6, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %6, align 8
  store i64 0, i64* %12, align 8
  %47 = load %struct.iommu*, %struct.iommu** %9, align 8
  %48 = getelementptr inbounds %struct.iommu, %struct.iommu* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %28
  %52 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load %struct.iommu*, %struct.iommu** %9, align 8
  %58 = getelementptr inbounds %struct.iommu, %struct.iommu* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.iommu*, %struct.iommu** %9, align 8
  %62 = getelementptr inbounds %struct.iommu, %struct.iommu* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %60, %63
  %65 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %66 = lshr i64 %64, %65
  %67 = getelementptr inbounds i32, i32* %59, i64 %66
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @iopte_val(i32 %69)
  %71 = load i64, i64* @IOPTE_CONTEXT, align 8
  %72 = and i64 %70, %71
  %73 = lshr i64 %72, 47
  store i64 %73, i64* %12, align 8
  br label %74

74:                                               ; preds = %56, %51, %28
  %75 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %76 = load %struct.iommu*, %struct.iommu** %9, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @strbuf_flush(%struct.strbuf* %75, %struct.iommu* %76, i64 %77, i64 %78, i64 %79, i32 %80)
  %82 = load %struct.iommu*, %struct.iommu** %9, align 8
  %83 = getelementptr inbounds %struct.iommu, %struct.iommu* %82, i32 0, i32 1
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %74, %27
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @IO_PAGE_ALIGN(i64) #1

declare dso_local i64 @iopte_val(i32) #1

declare dso_local i32 @strbuf_flush(%struct.strbuf*, %struct.iommu*, i64, i64, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
