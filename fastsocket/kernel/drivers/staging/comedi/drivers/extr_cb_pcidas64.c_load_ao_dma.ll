; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_load_ao_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_load_ao_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_cmd = type { i32 }
%struct.TYPE_2__ = type { i32, i32*, i8* }

@PLX_DMA0_PCI_ADDRESS_REG = common dso_local global i32 0, align 4
@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @load_ao_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_ao_dma(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* @PLX_DMA0_PCI_ADDRESS_REG, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %12, i64 %14
  store i8* %15, i8** %7, align 8
  br label %16

16:                                               ; preds = %51, %2
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @readl(i8* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp uge i32 %23, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %16
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %44 = add i32 %42, %43
  %45 = icmp ult i32 %34, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %55

47:                                               ; preds = %33, %16
  %48 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %50 = call i32 @load_ao_dma_buffer(%struct.comedi_device* %48, %struct.comedi_cmd* %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %16, label %55

55:                                               ; preds = %46, %51
  ret void
}

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @readl(i8*) #1

declare dso_local i32 @load_ao_dma_buffer(%struct.comedi_device*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
