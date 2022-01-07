; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_last_ao_dma_load_completed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_last_ao_dma_load_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_2__ = type { i32*, i64 }

@PLX_DMA0_CS_REG = common dso_local global i64 0, align 8
@PLX_DMA_DONE_BIT = common dso_local global i16 0, align 2
@PLX_DMA0_PCI_ADDRESS_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @last_ao_dma_load_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @last_ao_dma_load_completed(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = call i32 @prev_ao_dma_index(%struct.comedi_device* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PLX_DMA0_CS_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call zeroext i16 @readb(i64 %14)
  store i16 %15, i16* %6, align 2
  %16 = load i16, i16* %6, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* @PLX_DMA_DONE_BIT, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

23:                                               ; preds = %1
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PLX_DMA0_PCI_ADDRESS_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %33 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %31, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %43

42:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %41, %22
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @prev_ao_dma_index(%struct.comedi_device*) #1

declare dso_local zeroext i16 @readb(i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
