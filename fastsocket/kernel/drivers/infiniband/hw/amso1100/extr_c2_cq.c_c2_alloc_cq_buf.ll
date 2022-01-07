; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cq.c_c2_alloc_cq_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cq.c_c2_alloc_cq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.c2_mq = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@C2_MQ_HOST_TARGET = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2_dev*, %struct.c2_mq*, i32, i32)* @c2_alloc_cq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2_alloc_cq_buf(%struct.c2_dev* %0, %struct.c2_mq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.c2_dev*, align 8
  %7 = alloca %struct.c2_mq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.c2_dev* %0, %struct.c2_dev** %6, align 8
  store %struct.c2_mq* %1, %struct.c2_mq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %12 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load %struct.c2_mq*, %struct.c2_mq** %7, align 8
  %19 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @dma_alloc_coherent(i32* %14, i32 %17, i32* %19, i32 %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %40

27:                                               ; preds = %4
  %28 = load %struct.c2_mq*, %struct.c2_mq** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* @C2_MQ_HOST_TARGET, align 4
  %33 = call i32 @c2_mq_rep_init(%struct.c2_mq* %28, i32 0, i32 %29, i32 %30, i32* %31, i32* null, i32 %32)
  %34 = load %struct.c2_mq*, %struct.c2_mq** %7, align 8
  %35 = load i32, i32* @mapping, align 4
  %36 = load %struct.c2_mq*, %struct.c2_mq** %7, align 8
  %37 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pci_unmap_addr_set(%struct.c2_mq* %34, i32 %35, i32 %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %27, %24
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @c2_mq_rep_init(%struct.c2_mq*, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.c2_mq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
