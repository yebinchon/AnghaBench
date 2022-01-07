; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_create_qp_ird_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_create_qp_ird_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_create_qp_req = type { i32* }
%struct.ocrdma_qp = type { i32, %struct.ocrdma_dev* }
%struct.ocrdma_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_create_qp_req*, %struct.ocrdma_qp*)* @ocrdma_set_create_qp_ird_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_set_create_qp_ird_cmd(%struct.ocrdma_create_qp_req* %0, %struct.ocrdma_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_create_qp_req*, align 8
  %5 = alloca %struct.ocrdma_qp*, align 8
  %6 = alloca %struct.ocrdma_dev*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ocrdma_create_qp_req* %0, %struct.ocrdma_create_qp_req** %4, align 8
  store %struct.ocrdma_qp* %1, %struct.ocrdma_qp** %5, align 8
  %11 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %12 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %11, i32 0, i32 1
  %13 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %12, align 8
  store %struct.ocrdma_dev* %13, %struct.ocrdma_dev** %6, align 8
  %14 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %15 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %19 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %23 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %29 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

34:                                               ; preds = %2
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32 @dma_alloc_coherent(i32* %36, i32 %37, i32* %8, i32 %38)
  %40 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %41 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %43 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %66

49:                                               ; preds = %34
  %50 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %51 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @memset(i32 %52, i32 0, i32 %53)
  %55 = load %struct.ocrdma_create_qp_req*, %struct.ocrdma_create_qp_req** %4, align 8
  %56 = getelementptr inbounds %struct.ocrdma_create_qp_req, %struct.ocrdma_create_qp_req* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %60 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @ocrdma_build_q_pages(i32* %58, i32 %62, i32 %63, i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %49, %46, %33
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ocrdma_build_q_pages(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
