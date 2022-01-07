; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_load_first_dma_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_load_first_dma_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_2__ = type { i64 }

@PLX_DMA1_TRANSFER_SIZE_REG = common dso_local global i64 0, align 8
@PLX_DMA1_PCI_ADDRESS_REG = common dso_local global i64 0, align 8
@PLX_DMA1_LOCAL_ADDRESS_REG = common dso_local global i64 0, align 8
@PLX_DMA1_DESCRIPTOR_REG = common dso_local global i64 0, align 8
@PLX_DMA0_TRANSFER_SIZE_REG = common dso_local global i64 0, align 8
@PLX_DMA0_PCI_ADDRESS_REG = common dso_local global i64 0, align 8
@PLX_DMA0_LOCAL_ADDRESS_REG = common dso_local global i64 0, align 8
@PLX_DMA0_DESCRIPTOR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @load_first_dma_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_first_dma_descriptor(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %3
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PLX_DMA1_TRANSFER_SIZE_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 0, i64 %15)
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PLX_DMA1_PCI_ADDRESS_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 0, i64 %22)
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PLX_DMA1_LOCAL_ADDRESS_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 0, i64 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PLX_DMA1_DESCRIPTOR_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %31, i64 %37)
  br label %69

39:                                               ; preds = %3
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PLX_DMA0_TRANSFER_SIZE_REG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 0, i64 %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %48 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PLX_DMA0_PCI_ADDRESS_REG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 0, i64 %52)
  %54 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %55 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PLX_DMA0_LOCAL_ADDRESS_REG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 0, i64 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %63 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PLX_DMA0_DESCRIPTOR_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %61, i64 %67)
  br label %69

69:                                               ; preds = %39, %9
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
