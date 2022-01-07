; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_handle_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_handle_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i32, i32, i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DMA_DUAL = common dso_local global i32 0, align 4
@DMATC = common dso_local global i32 0, align 4
@CLEAR_INTR_MASK = common dso_local global i32 0, align 4
@DAS1800_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @das1800_handle_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das1800_handle_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DMA_DUAL, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = call i64 (...) @claim_dma_lock()
  store i64 %14, i64* %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @das1800_flush_dma_channel(%struct.comedi_device* %15, %struct.comedi_subdevice* %16, i64 %19, i32 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @virt_to_bus(i32 %29)
  %31 = call i32 @set_dma_addr(i64 %26, i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_dma_count(i64 %34, i32 %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @enable_dma(i64 %41)
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @release_dma_lock(i64 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @DMATC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %3
  %50 = load i32, i32* @CLEAR_INTR_MASK, align 4
  %51 = load i32, i32* @DMATC, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DAS1800_STATUS, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i32 %53, i64 %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %49
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %62
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  br label %92

81:                                               ; preds = %62
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %81, %70
  br label %93

93:                                               ; preds = %92, %49
  br label %94

94:                                               ; preds = %93, %3
  ret void
}

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @das1800_flush_dma_channel(%struct.comedi_device*, %struct.comedi_subdevice*, i64, i32) #1

declare dso_local i32 @set_dma_addr(i64, i32) #1

declare dso_local i32 @virt_to_bus(i32) #1

declare dso_local i32 @set_dma_count(i64, i32) #1

declare dso_local i32 @enable_dma(i64) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
