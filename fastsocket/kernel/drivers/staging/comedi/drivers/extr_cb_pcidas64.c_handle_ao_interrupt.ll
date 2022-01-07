; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_handle_ao_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_handle_ao_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }
%struct.TYPE_2__ = type { i64 }

@PLX_DMA0_CS_REG = common dso_local global i64 0, align 8
@ICS_DMA0_A = common dso_local global i32 0, align 4
@PLX_DMA_EN_BIT = common dso_local global i32 0, align 4
@PLX_DMA_DONE_BIT = common dso_local global i32 0, align 4
@PLX_CLEAR_DMA_INTR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"dma0 status 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c" cleared dma ch0 interrupt\0A\00", align 1
@DAC_DONE_BIT = common dso_local global i16 0, align 2
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"plx dma0 desc reg 0x%x\0A\00", align 1
@PLX_DMA0_DESCRIPTOR_REG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"plx dma0 address reg 0x%x\0A\00", align 1
@PLX_DMA0_PCI_ADDRESS_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i16, i32)* @handle_ao_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_ao_interrupt(%struct.comedi_device* %0, i16 zeroext %1, i32 %2) #0 {
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
  %16 = icmp eq %struct.comedi_subdevice* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %143

18:                                               ; preds = %3
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load %struct.comedi_async*, %struct.comedi_async** %20, align 8
  store %struct.comedi_async* %21, %struct.comedi_async** %8, align 8
  %22 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %23 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %22, i32 0, i32 1
  store %struct.comedi_cmd* %23, %struct.comedi_cmd** %9, align 8
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PLX_DMA0_CS_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readb(i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ICS_DMA0_A, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %94

39:                                               ; preds = %18
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @PLX_DMA_EN_BIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @PLX_DMA_DONE_BIT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @PLX_DMA_EN_BIT, align 4
  %51 = load i32, i32* @PLX_CLEAR_DMA_INTR_BIT, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %54 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PLX_DMA0_CS_REG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writeb(i32 %52, i64 %58)
  br label %69

60:                                               ; preds = %44, %39
  %61 = load i32, i32* @PLX_CLEAR_DMA_INTR_BIT, align 4
  %62 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %63 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PLX_DMA0_CS_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writeb(i32 %61, i64 %67)
  br label %69

69:                                               ; preds = %60, %49
  %70 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 0
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i32, i32* %10, align 4
  %75 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @PLX_DMA_EN_BIT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %69
  %81 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %83 = call i32 @load_ao_dma(%struct.comedi_device* %81, %struct.comedi_cmd* %82)
  %84 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @ao_dma_needs_restart(%struct.comedi_device* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %90 = call i32 @restart_ao_dma(%struct.comedi_device* %89)
  br label %91

91:                                               ; preds = %88, %80
  br label %92

92:                                               ; preds = %91, %69
  %93 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %99

94:                                               ; preds = %18
  %95 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 0
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  br label %99

99:                                               ; preds = %94, %92
  %100 = load i16, i16* %5, align 2
  %101 = zext i16 %100 to i32
  %102 = load i16, i16* @DAC_DONE_BIT, align 2
  %103 = zext i16 %102 to i32
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %139

106:                                              ; preds = %99
  %107 = load i32, i32* @COMEDI_CB_EOA, align 4
  %108 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %109 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %113 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %114 = call i64 @ao_stopped_by_error(%struct.comedi_device* %112, %struct.comedi_cmd* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %106
  %117 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %118 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %119 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %116, %106
  %123 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %124 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %123)
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @PLX_DMA0_DESCRIPTOR_REG, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @readl(i64 %128)
  %130 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %132 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %131)
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @PLX_DMA0_PCI_ADDRESS_REG, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @readl(i64 %136)
  %138 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %122, %99
  %140 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %141 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %142 = call i32 @cfc_handle_events(%struct.comedi_device* %140, %struct.comedi_subdevice* %141)
  br label %143

143:                                              ; preds = %139, %17
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DEBUG_PRINT(i8*, ...) #1

declare dso_local i32 @load_ao_dma(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i64 @ao_dma_needs_restart(%struct.comedi_device*, i32) #1

declare dso_local i32 @restart_ao_dma(%struct.comedi_device*) #1

declare dso_local i64 @ao_stopped_by_error(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cfc_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
