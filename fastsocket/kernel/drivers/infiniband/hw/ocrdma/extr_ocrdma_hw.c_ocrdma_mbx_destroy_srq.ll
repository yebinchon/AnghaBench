; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ocrdma_srq = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ocrdma_destroy_srq = type { i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_DELETE_SRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_destroy_srq(%struct.ocrdma_dev* %0, %struct.ocrdma_srq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_srq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_destroy_srq*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_srq* %1, %struct.ocrdma_srq** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %12 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %8, align 8
  %15 = load i32, i32* @OCRDMA_CMD_DELETE_SRQ, align 4
  %16 = call %struct.ocrdma_destroy_srq* @ocrdma_init_emb_mqe(i32 %15, i32 4)
  store %struct.ocrdma_destroy_srq* %16, %struct.ocrdma_destroy_srq** %7, align 8
  %17 = load %struct.ocrdma_destroy_srq*, %struct.ocrdma_destroy_srq** %7, align 8
  %18 = icmp ne %struct.ocrdma_destroy_srq* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %5, align 8
  %23 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ocrdma_destroy_srq*, %struct.ocrdma_destroy_srq** %7, align 8
  %26 = getelementptr inbounds %struct.ocrdma_destroy_srq, %struct.ocrdma_destroy_srq* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %5, align 8
  %28 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ocrdma_destroy_srq*, %struct.ocrdma_destroy_srq** %7, align 8
  %31 = bitcast %struct.ocrdma_destroy_srq* %30 to %struct.ocrdma_mqe*
  %32 = call i32 @ocrdma_mbx_cmd(i32 %29, %struct.ocrdma_mqe* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %5, align 8
  %34 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %21
  %39 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %5, align 8
  %42 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %5, align 8
  %46 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %5, align 8
  %50 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dma_free_coherent(i32* %40, i32 %44, i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %38, %21
  %55 = load %struct.ocrdma_destroy_srq*, %struct.ocrdma_destroy_srq** %7, align 8
  %56 = call i32 @kfree(%struct.ocrdma_destroy_srq* %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %19
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.ocrdma_destroy_srq* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(i32, %struct.ocrdma_mqe*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ocrdma_destroy_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
