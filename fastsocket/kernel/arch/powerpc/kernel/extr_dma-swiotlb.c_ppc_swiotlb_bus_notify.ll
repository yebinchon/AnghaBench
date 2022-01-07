; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_dma-swiotlb.c_ppc_swiotlb_bus_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_dma-swiotlb.c_ppc_swiotlb_bus_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.device = type { %struct.dev_archdata }
%struct.dev_archdata = type { i64 }

@BUS_NOTIFY_ADD_DEVICE = common dso_local global i64 0, align 8
@swiotlb_dma_ops = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @ppc_swiotlb_bus_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_swiotlb_bus_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.dev_archdata*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.device*
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @BUS_NOTIFY_ADD_DEVICE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  store %struct.dev_archdata* %18, %struct.dev_archdata** %9, align 8
  %19 = load %struct.dev_archdata*, %struct.dev_archdata** %9, align 8
  %20 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = call i64 @dma_get_mask(%struct.device* %21)
  %23 = call i64 (...) @lmb_end_of_DRAM()
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.device*, %struct.device** %8, align 8
  %27 = call i32 @set_dma_ops(%struct.device* %26, i32* @swiotlb_dma_ops)
  br label %28

28:                                               ; preds = %25, %16
  %29 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %15
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @dma_get_mask(%struct.device*) #1

declare dso_local i64 @lmb_end_of_DRAM(...) #1

declare dso_local i32 @set_dma_ops(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
