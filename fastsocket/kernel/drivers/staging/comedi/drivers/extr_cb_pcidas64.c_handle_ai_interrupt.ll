; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_handle_ai_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_handle_ai_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@ADC_OVERRUN_BIT = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [13 x i8] c"fifo overrun\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@PLX_DMA1_CS_REG = common dso_local global i64 0, align 8
@ICS_DMA1_A = common dso_local global i32 0, align 4
@PLX_DMA_EN_BIT = common dso_local global i32 0, align 4
@PLX_CLEAR_DMA_INTR_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"dma1 status 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c" cleared dma ch1 interrupt\0A\00", align 1
@ADC_DONE_BIT = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [20 x i8] c"adc done interrupt\0A\00", align 1
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@ADC_INTR_PENDING_BIT = common dso_local global i16 0, align 2
@LAYOUT_4020 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"pio fifo drain\0A\00", align 1
@TRIG_COUNT = common dso_local global i64 0, align 8
@TRIG_EXT = common dso_local global i64 0, align 8
@ADC_STOP_BIT = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_ai_interrupt(%struct.comedi_device* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  store %struct.comedi_subdevice* %14, %struct.comedi_subdevice** %7, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.comedi_async*, %struct.comedi_async** %16, align 8
  store %struct.comedi_async* %17, %struct.comedi_async** %8, align 8
  %18 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 1
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %9, align 8
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @ADC_OVERRUN_BIT, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %28 = call i32 @comedi_error(%struct.comedi_device* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @COMEDI_CB_EOA, align 4
  %30 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %33 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %26, %3
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %42 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PLX_DMA1_CS_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readb(i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ICS_DMA1_A, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %36
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @PLX_DMA_EN_BIT, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @PLX_CLEAR_DMA_INTR_BIT, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %59 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %58)
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PLX_DMA1_CS_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writeb(i32 %57, i64 %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @PLX_DMA_EN_BIT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %52
  %72 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %73 = call i32 @drain_dma_buffers(%struct.comedi_device* %72, i32 1)
  br label %74

74:                                               ; preds = %71, %52
  %75 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %36
  %77 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %77, i32 0, i32 0
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i16, i16* %5, align 2
  %82 = zext i16 %81 to i32
  %83 = load i16, i16* @ADC_DONE_BIT, align 2
  %84 = zext i16 %83 to i32
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %76
  %90 = load i16, i16* %5, align 2
  %91 = zext i16 %90 to i32
  %92 = load i16, i16* @ADC_DONE_BIT, align 2
  %93 = zext i16 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %117, label %96

96:                                               ; preds = %89
  %97 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %141

103:                                              ; preds = %96
  %104 = load i16, i16* %5, align 2
  %105 = zext i16 %104 to i32
  %106 = load i16, i16* @ADC_INTR_PENDING_BIT, align 2
  %107 = zext i16 %106 to i32
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %141

110:                                              ; preds = %103
  %111 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %112 = call %struct.TYPE_4__* @board(%struct.comedi_device* %111)
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @LAYOUT_4020, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %141

117:                                              ; preds = %110, %89
  %118 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %119 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %120 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %119, i32 0, i32 0
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @spin_lock_irqsave(i32* %120, i64 %121)
  %123 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %124 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %123)
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %117
  %129 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %130 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %129, i32 0, i32 0
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  %133 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %134 = call i32 @pio_drain_ai_fifo(%struct.comedi_device* %133)
  br label %140

135:                                              ; preds = %117
  %136 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %137 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %136, i32 0, i32 0
  %138 = load i64, i64* %11, align 8
  %139 = call i32 @spin_unlock_irqrestore(i32* %137, i64 %138)
  br label %140

140:                                              ; preds = %135, %128
  br label %141

141:                                              ; preds = %140, %110, %103, %96
  %142 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %143 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TRIG_COUNT, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %149 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %148)
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sle i64 %151, 0
  br i1 %152, label %166, label %153

153:                                              ; preds = %147, %141
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TRIG_EXT, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %153
  %160 = load i16, i16* %5, align 2
  %161 = zext i16 %160 to i32
  %162 = load i16, i16* @ADC_STOP_BIT, align 2
  %163 = zext i16 %162 to i32
  %164 = and i32 %161, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159, %147
  %167 = load i32, i32* @COMEDI_CB_EOA, align 4
  %168 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %169 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %166, %159, %153
  %173 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %174 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %175 = call i32 @cfc_handle_events(%struct.comedi_device* %173, %struct.comedi_subdevice* %174)
  ret void
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local %struct.TYPE_3__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @DEBUG_PRINT(i8*, ...) #1

declare dso_local i32 @drain_dma_buffers(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.TYPE_4__* @board(%struct.comedi_device*) #1

declare dso_local i32 @pio_drain_ai_fifo(%struct.comedi_device*) #1

declare dso_local i32 @cfc_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
