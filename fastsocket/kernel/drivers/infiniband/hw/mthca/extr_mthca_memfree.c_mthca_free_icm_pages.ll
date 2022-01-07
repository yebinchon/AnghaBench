; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_free_icm_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_free_icm_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_icm_chunk = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, %struct.mthca_icm_chunk*)* @mthca_free_icm_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mthca_free_icm_pages(%struct.mthca_dev* %0, %struct.mthca_icm_chunk* %1) #0 {
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_icm_chunk*, align 8
  %5 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store %struct.mthca_icm_chunk* %1, %struct.mthca_icm_chunk** %4, align 8
  %6 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %4, align 8
  %7 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %4, align 8
  %15 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %4, align 8
  %18 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %21 = call i32 @pci_unmap_sg(i32 %13, %struct.TYPE_3__* %16, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %10, %2
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %4, align 8
  %26 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %4, align 8
  %31 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = call i32 @sg_page(%struct.TYPE_3__* %35)
  %37 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %4, align 8
  %38 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @get_order(i32 %44)
  %46 = call i32 @__free_pages(i32 %36, i32 %45)
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %23

50:                                               ; preds = %23
  ret void
}

declare dso_local i32 @pci_unmap_sg(i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @__free_pages(i32, i32) #1

declare dso_local i32 @sg_page(%struct.TYPE_3__*) #1

declare dso_local i32 @get_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
