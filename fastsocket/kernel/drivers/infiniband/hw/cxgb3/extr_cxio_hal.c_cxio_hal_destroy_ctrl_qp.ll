; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_hal_destroy_ctrl_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_hal_destroy_ctrl_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxio_rdev = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@T3_CTRL_QP_SIZE_LOG2 = common dso_local global i64 0, align 8
@mapping = common dso_local global i32 0, align 4
@T3_CTRL_QP_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxio_rdev*)* @cxio_hal_destroy_ctrl_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxio_hal_destroy_ctrl_qp(%struct.cxio_rdev* %0) #0 {
  %2 = alloca %struct.cxio_rdev*, align 8
  store %struct.cxio_rdev* %0, %struct.cxio_rdev** %2, align 8
  %3 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %4 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* @T3_CTRL_QP_SIZE_LOG2, align 8
  %9 = shl i64 1, %8
  %10 = mul i64 %9, 4
  %11 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %12 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %16 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %15, i32 0, i32 0
  %17 = load i32, i32* @mapping, align 4
  %18 = call i32 @pci_unmap_addr(%struct.TYPE_6__* %16, i32 %17)
  %19 = call i32 @dma_free_coherent(i32* %7, i64 %10, i32 %14, i32 %18)
  %20 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %21 = load i32, i32* @T3_CTRL_QP_ID, align 4
  %22 = call i32 @cxio_hal_clear_qp_ctx(%struct.cxio_rdev* %20, i32 %21)
  ret i32 %22
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cxio_hal_clear_qp_ctx(%struct.cxio_rdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
