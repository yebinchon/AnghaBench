; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_660x.c_init_tio_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_660x.c_init_tio_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_2__ = type { i32* }

@MAX_DMA_CHANNEL = common dso_local global i32 0, align 4
@dma_selection_none = common dso_local global i32 0, align 4
@DMAConfigRegister = common dso_local global i32 0, align 4
@NUM_PFI_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @init_tio_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_tio_chip(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = call %struct.TYPE_2__* @private(%struct.comedi_device* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32 0, i32* %12, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %33, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAX_DMA_CHANNEL, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @dma_selection_none, align 4
  %20 = call i32 @dma_select_bits(i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dma_select_mask(i32 %21)
  %23 = and i32 %20, %22
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = call %struct.TYPE_2__* @private(%struct.comedi_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %23
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %13

36:                                               ; preds = %13
  %37 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %40 = call %struct.TYPE_2__* @private(%struct.comedi_device* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DMAConfigRegister, align 4
  %48 = call i32 @ni_660x_write_register(%struct.comedi_device* %37, i32 %38, i32 %46, i32 %47)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %59, %36
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @NUM_PFI_CHANNELS, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @IOConfigReg(i32 %56)
  %58 = call i32 @ni_660x_write_register(%struct.comedi_device* %54, i32 %55, i32 0, i32 %57)
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %49

62:                                               ; preds = %49
  ret void
}

declare dso_local %struct.TYPE_2__* @private(%struct.comedi_device*) #1

declare dso_local i32 @dma_select_bits(i32, i32) #1

declare dso_local i32 @dma_select_mask(i32) #1

declare dso_local i32 @ni_660x_write_register(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @IOConfigReg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
