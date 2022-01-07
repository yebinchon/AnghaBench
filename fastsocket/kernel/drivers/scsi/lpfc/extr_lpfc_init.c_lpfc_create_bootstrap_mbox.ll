; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_create_bootstrap_mbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_create_bootstrap_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.dma_address, i32, %struct.lpfc_dmabuf* }
%struct.dma_address = type { i32, i32 }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_ALIGN_16_BYTE = common dso_local global i32 0, align 4
@LPFC_BMBX_BIT1_ADDR_HI = common dso_local global i32 0, align 4
@LPFC_BMBX_BIT1_ADDR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_create_bootstrap_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_create_bootstrap_mbox(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_dmabuf*, align 8
  %6 = alloca %struct.dma_address*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.lpfc_dmabuf* @kzalloc(i32 8, i32 %9)
  store %struct.lpfc_dmabuf* %10, %struct.lpfc_dmabuf** %5, align 8
  %11 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %12 = icmp ne %struct.lpfc_dmabuf* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %107

16:                                               ; preds = %1
  %17 = load i32, i32* @LPFC_ALIGN_16_BYTE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = add i64 4, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @dma_alloc_coherent(i32* %25, i32 %26, i32* %28, i32 %29)
  %31 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %32 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %34 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %16
  %38 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %39 = call i32 @kfree(%struct.lpfc_dmabuf* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %107

42:                                               ; preds = %16
  %43 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %44 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @memset(i32 %45, i32 0, i32 %46)
  %48 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  store %struct.lpfc_dmabuf* %48, %struct.lpfc_dmabuf** %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %59 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @LPFC_ALIGN_16_BYTE, align 4
  %62 = call i32 @PTR_ALIGN(i32 %60, i32 %61)
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  store i32 %62, i32* %66, align 8
  %67 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %68 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @LPFC_ALIGN_16_BYTE, align 4
  %71 = call i32 @ALIGN(i32 %69, i32 %70)
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  store %struct.dma_address* %79, %struct.dma_address** %6, align 8
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = ashr i32 %85, 34
  %87 = and i32 %86, 1073741823
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = shl i32 %88, 2
  %90 = load i32, i32* @LPFC_BMBX_BIT1_ADDR_HI, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.dma_address*, %struct.dma_address** %6, align 8
  %93 = getelementptr inbounds %struct.dma_address, %struct.dma_address* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 4
  %100 = and i32 %99, 1073741823
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = shl i32 %101, 2
  %103 = load i32, i32* @LPFC_BMBX_BIT1_ADDR_LO, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.dma_address*, %struct.dma_address** %6, align 8
  %106 = getelementptr inbounds %struct.dma_address, %struct.dma_address* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %42, %37, %13
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.lpfc_dmabuf* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @PTR_ALIGN(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
