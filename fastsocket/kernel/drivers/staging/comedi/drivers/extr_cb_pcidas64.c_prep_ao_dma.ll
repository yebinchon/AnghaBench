; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_prep_ao_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_prep_ao_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_cmd = type { i64 }
%struct.TYPE_2__ = type { i32, i64, i32* }

@ADC_QUEUE_CLEAR_REG = common dso_local global i64 0, align 8
@DAC_BUFFER_CLEAR_REG = common dso_local global i64 0, align 8
@DAC_FIFO_SIZE = common dso_local global i32 0, align 4
@bytes_in_sample = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@DAC_FIFO_REG = common dso_local global i64 0, align 8
@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_cmd*)* @prep_ao_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_ao_dma(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ADC_QUEUE_CLEAR_REG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writew(i32 0, i64 %13)
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DAC_BUFFER_CLEAR_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writew(i32 0, i64 %20)
  %22 = load i32, i32* @DAC_FIFO_SIZE, align 4
  %23 = sdiv i32 %22, 2
  %24 = load i32, i32* @bytes_in_sample, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TRIG_COUNT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @bytes_in_sample, align 4
  %34 = udiv i32 %32, %33
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ugt i32 %34, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %42 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @bytes_in_sample, align 4
  %46 = mul i32 %44, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %40, %31, %2
  %48 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %52 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @cfc_read_array_from_buffer(i32 %50, i32* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %79, %47
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @bytes_in_sample, align 4
  %61 = udiv i32 %59, %60
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %73 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DAC_FIFO_REG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writew(i32 %71, i64 %77)
  br label %79

79:                                               ; preds = %63
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %57

82:                                               ; preds = %57
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @bytes_in_sample, align 4
  %85 = udiv i32 %83, %84
  %86 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %87 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub i32 %89, %85
  store i32 %90, i32* %88, align 8
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TRIG_COUNT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %82
  %97 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %98 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %97)
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %121

103:                                              ; preds = %96, %82
  %104 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %106 = call i32 @load_ao_dma_buffer(%struct.comedi_device* %104, %struct.comedi_cmd* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 -1, i32* %3, align 4
  br label %121

110:                                              ; preds = %103
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %113 = icmp uge i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %114, %110
  %116 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %117 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %118 = call i32 @load_ao_dma(%struct.comedi_device* %116, %struct.comedi_cmd* %117)
  %119 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %120 = call i32 @dma_start_sync(%struct.comedi_device* %119, i32 0)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %115, %109, %102
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @cfc_read_array_from_buffer(i32, i32*, i32) #1

declare dso_local i32 @load_ao_dma_buffer(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @load_ao_dma(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @dma_start_sync(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
