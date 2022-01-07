; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_mem_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.lpfc_dma_pool }
%struct.lpfc_dma_pool = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mem_free(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_dma_pool*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 8
  store %struct.lpfc_dma_pool* %6, %struct.lpfc_dma_pool** %4, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %8 = call i32 @lpfc_sli_hbqbuf_free_all(%struct.lpfc_hba* %7)
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 7
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 7
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @pci_pool_destroy(i32* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 7
  store i32* null, i32** %20, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @pci_pool_destroy(i32* %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @pci_pool_destroy(i32* %40)
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 5
  store i32* null, i32** %44, align 8
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @mempool_destroy(i32* %52)
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @mempool_destroy(i32* %59)
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @mempool_destroy(i32* %65)
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %96, %54
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %4, align 8
  %72 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %69
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %4, align 8
  %80 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %4, align 8
  %88 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pci_pool_free(i32* %78, i32 %86, i32 %94)
  br label %96

96:                                               ; preds = %75
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %69

99:                                               ; preds = %69
  %100 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %4, align 8
  %101 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = call i32 @kfree(%struct.TYPE_2__* %102)
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @pci_pool_destroy(i32* %106)
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 1
  store i32* null, i32** %109, align 8
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @pci_pool_destroy(i32* %112)
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 0
  store i32* null, i32** %115, align 8
  ret void
}

declare dso_local i32 @lpfc_sli_hbqbuf_free_all(%struct.lpfc_hba*) #1

declare dso_local i32 @pci_pool_destroy(i32*) #1

declare dso_local i32 @mempool_destroy(i32*) #1

declare dso_local i32 @pci_pool_free(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
