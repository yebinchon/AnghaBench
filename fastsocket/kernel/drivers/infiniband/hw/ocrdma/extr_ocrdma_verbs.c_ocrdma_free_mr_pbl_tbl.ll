; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_free_mr_pbl_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_free_mr_pbl_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ocrdma_hw_mr = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*, %struct.ocrdma_hw_mr*)* @ocrdma_free_mr_pbl_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_free_mr_pbl_tbl(%struct.ocrdma_dev* %0, %struct.ocrdma_hw_mr* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_hw_mr*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_hw_mr* %1, %struct.ocrdma_hw_mr** %4, align 8
  %7 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %4, align 8
  %12 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %66

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %56, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %4, align 8
  %19 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %16
  %23 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %4, align 8
  %24 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %56

33:                                               ; preds = %22
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %4, align 8
  %37 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %4, align 8
  %40 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %4, align 8
  %48 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dma_free_coherent(i32* %35, i32 %38, i32 %46, i32 %54)
  br label %56

56:                                               ; preds = %33, %32
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %16

59:                                               ; preds = %16
  %60 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %4, align 8
  %61 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @kfree(%struct.TYPE_4__* %62)
  %64 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %4, align 8
  %65 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %64, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %65, align 8
  br label %66

66:                                               ; preds = %59, %2
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
