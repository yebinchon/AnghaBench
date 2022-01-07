; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_delete_ah_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_delete_ah_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ocrdma_delete_ah_tbl = type { i32 }
%struct.ocrdma_mqe = type { i32 }

@OCRDMA_CMD_DELETE_AH_TBL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*)* @ocrdma_mbx_delete_ah_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_mbx_delete_ah_tbl(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  %3 = alloca %struct.ocrdma_delete_ah_tbl*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %2, align 8
  %5 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %6 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %10 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %63

15:                                               ; preds = %1
  %16 = load i32, i32* @OCRDMA_CMD_DELETE_AH_TBL, align 4
  %17 = call %struct.ocrdma_delete_ah_tbl* @ocrdma_init_emb_mqe(i32 %16, i32 4)
  store %struct.ocrdma_delete_ah_tbl* %17, %struct.ocrdma_delete_ah_tbl** %3, align 8
  %18 = load %struct.ocrdma_delete_ah_tbl*, %struct.ocrdma_delete_ah_tbl** %3, align 8
  %19 = icmp ne %struct.ocrdma_delete_ah_tbl* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %63

21:                                               ; preds = %15
  %22 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %23 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ocrdma_delete_ah_tbl*, %struct.ocrdma_delete_ah_tbl** %3, align 8
  %27 = getelementptr inbounds %struct.ocrdma_delete_ah_tbl, %struct.ocrdma_delete_ah_tbl* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %29 = load %struct.ocrdma_delete_ah_tbl*, %struct.ocrdma_delete_ah_tbl** %3, align 8
  %30 = bitcast %struct.ocrdma_delete_ah_tbl* %29 to %struct.ocrdma_mqe*
  %31 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %28, %struct.ocrdma_mqe* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %35 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %39 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %43 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_free_coherent(i32* %33, i32 %37, i32* %41, i32 %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %51 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %56 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dma_free_coherent(i32* %48, i32 %49, i32* %54, i32 %59)
  %61 = load %struct.ocrdma_delete_ah_tbl*, %struct.ocrdma_delete_ah_tbl** %3, align 8
  %62 = call i32 @kfree(%struct.ocrdma_delete_ah_tbl* %61)
  br label %63

63:                                               ; preds = %21, %20, %14
  ret void
}

declare dso_local %struct.ocrdma_delete_ah_tbl* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.ocrdma_delete_ah_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
