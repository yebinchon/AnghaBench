; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }

@DAS1800_STATUS = common dso_local global i64 0, align 8
@ADC = common dso_local global i32 0, align 4
@DAS1800_SELECT = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DMA_ENABLED = common dso_local global i32 0, align 4
@FHF = common dso_local global i32 0, align 4
@FNE = common dso_local global i32 0, align 4
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@OVF = common dso_local global i32 0, align 4
@CLEAR_INTR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DAS1800 FIFO overflow\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@CT0TC = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @das1800_ai_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das1800_ai_handler(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca %struct.comedi_async*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i64 0
  store %struct.comedi_subdevice* %10, %struct.comedi_subdevice** %3, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  store %struct.comedi_async* %13, %struct.comedi_async** %4, align 8
  %14 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %14, i32 0, i32 1
  store %struct.comedi_cmd* %15, %struct.comedi_cmd** %5, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DAS1800_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @inb(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %23 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* @ADC, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DAS1800_SELECT, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb(i32 %24, i64 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DMA_ENABLED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @das1800_handle_dma(%struct.comedi_device* %38, %struct.comedi_subdevice* %39, i32 %40)
  br label %62

42:                                               ; preds = %1
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @FHF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %50 = call i32 @das1800_handle_fifo_half_full(%struct.comedi_device* %48, %struct.comedi_subdevice* %49)
  br label %61

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @FNE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %59 = call i32 @das1800_handle_fifo_not_empty(%struct.comedi_device* %57, %struct.comedi_subdevice* %58)
  br label %60

60:                                               ; preds = %56, %51
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %64 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %65 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @OVF, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %62
  %73 = load i32, i32* @CLEAR_INTR_MASK, align 4
  %74 = load i32, i32* @OVF, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DAS1800_STATUS, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outb(i32 %76, i64 %81)
  %83 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %84 = call i32 @comedi_error(%struct.comedi_device* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %87 = call i32 @das1800_cancel(%struct.comedi_device* %85, %struct.comedi_subdevice* %86)
  %88 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %89 = load i32, i32* @COMEDI_CB_EOA, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %92 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %97 = call i32 @comedi_event(%struct.comedi_device* %95, %struct.comedi_subdevice* %96)
  br label %162

98:                                               ; preds = %62
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @CT0TC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %137

103:                                              ; preds = %98
  %104 = load i32, i32* @CLEAR_INTR_MASK, align 4
  %105 = load i32, i32* @CT0TC, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  %108 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %109 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DAS1800_STATUS, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @outb(i32 %107, i64 %112)
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @DMA_ENABLED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %103
  %121 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %122 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %123 = call i32 @das1800_flush_dma(%struct.comedi_device* %121, %struct.comedi_subdevice* %122)
  br label %128

124:                                              ; preds = %103
  %125 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %126 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %127 = call i32 @das1800_handle_fifo_not_empty(%struct.comedi_device* %125, %struct.comedi_subdevice* %126)
  br label %128

128:                                              ; preds = %124, %120
  %129 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %130 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %131 = call i32 @das1800_cancel(%struct.comedi_device* %129, %struct.comedi_subdevice* %130)
  %132 = load i32, i32* @COMEDI_CB_EOA, align 4
  %133 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %134 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %158

137:                                              ; preds = %98
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @TRIG_COUNT, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %137
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %150 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %151 = call i32 @das1800_cancel(%struct.comedi_device* %149, %struct.comedi_subdevice* %150)
  %152 = load i32, i32* @COMEDI_CB_EOA, align 4
  %153 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %154 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %148, %143, %137
  br label %158

158:                                              ; preds = %157, %128
  %159 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %160 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %161 = call i32 @comedi_event(%struct.comedi_device* %159, %struct.comedi_subdevice* %160)
  br label %162

162:                                              ; preds = %158, %72
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @das1800_handle_dma(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @das1800_handle_fifo_half_full(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @das1800_handle_fifo_not_empty(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @das1800_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @das1800_flush_dma(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
