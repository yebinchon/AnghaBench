; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i16, i32, i64, i32, i32, i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32 }

@AO_CMD_STARTED = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@PCI230P2_DAC_TRIG_Z2CT1 = common dso_local global i16 0, align 2
@CR_INVERT = common dso_local global i32 0, align 4
@PCI230P2_DAC_TRIG_EXTP = common dso_local global i16 0, align 2
@PCI230P2_DAC_TRIG_EXTN = common dso_local global i16 0, align 2
@PCI230P2_DAC_TRIG_SW = common dso_local global i16 0, align 2
@PCI230P2_DAC_TRIG_NONE = common dso_local global i16 0, align 2
@PCI230P2_DAC_TRIG_MASK = common dso_local global i16 0, align 2
@PCI230_DACCON = common dso_local global i64 0, align 8
@PCI230_INT_ZCLK_CT1 = common dso_local global i32 0, align 4
@PCI230_INT_SCE = common dso_local global i64 0, align 8
@GAT_VCC = common dso_local global i32 0, align 4
@PCI230_ZGAT_SCE = common dso_local global i64 0, align 8
@pci230_ao_inttrig_scan_begin = common dso_local global i32 0, align 4
@PCI230P2_INT_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_ao_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_ao_start(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 0
  %12 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  store %struct.comedi_async* %12, %struct.comedi_async** %5, align 8
  %13 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 2
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %6, align 8
  %15 = load i32, i32* @AO_CMD_STARTED, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 8
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i32, i32* @COMEDI_CB_EOA, align 4
  %30 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %31 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %36 = call i32 @pci230_ao_stop(%struct.comedi_device* %34, %struct.comedi_subdevice* %35)
  %37 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %39 = call i32 @comedi_event(%struct.comedi_device* %37, %struct.comedi_subdevice* %38)
  br label %185

40:                                               ; preds = %23, %2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %43, 2
  br i1 %44, label %45, label %101

45:                                               ; preds = %40
  %46 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %48 = call i32 @pci230_handle_ao_fifo(%struct.comedi_device* %46, %struct.comedi_subdevice* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %51 = call i32 @comedi_event(%struct.comedi_device* %49, %struct.comedi_subdevice* %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %185

55:                                               ; preds = %45
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %75 [
    i32 128, label %59
    i32 130, label %61
    i32 129, label %73
  ]

59:                                               ; preds = %55
  %60 = load i16, i16* @PCI230P2_DAC_TRIG_Z2CT1, align 2
  store i16 %60, i16* %8, align 2
  br label %77

61:                                               ; preds = %55
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CR_INVERT, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i16, i16* @PCI230P2_DAC_TRIG_EXTP, align 2
  store i16 %69, i16* %8, align 2
  br label %72

70:                                               ; preds = %61
  %71 = load i16, i16* @PCI230P2_DAC_TRIG_EXTN, align 2
  store i16 %71, i16* %8, align 2
  br label %72

72:                                               ; preds = %70, %68
  br label %77

73:                                               ; preds = %55
  %74 = load i16, i16* @PCI230P2_DAC_TRIG_SW, align 2
  store i16 %74, i16* %8, align 2
  br label %77

75:                                               ; preds = %55
  %76 = load i16, i16* @PCI230P2_DAC_TRIG_NONE, align 2
  store i16 %76, i16* %8, align 2
  br label %77

77:                                               ; preds = %75, %73, %72, %59
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i16, i16* %79, align 4
  %81 = zext i16 %80 to i32
  %82 = load i16, i16* @PCI230P2_DAC_TRIG_MASK, align 2
  %83 = zext i16 %82 to i32
  %84 = xor i32 %83, -1
  %85 = and i32 %81, %84
  %86 = load i16, i16* %8, align 2
  %87 = zext i16 %86 to i32
  %88 = or i32 %85, %87
  %89 = trunc i32 %88 to i16
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i16 %89, i16* %91, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i16, i16* %93, align 4
  %95 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PCI230_DACCON, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @outw(i16 zeroext %94, i64 %99)
  br label %101

101:                                              ; preds = %77, %40
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %151 [
    i32 128, label %105
    i32 129, label %147
  ]

105:                                              ; preds = %101
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %138

110:                                              ; preds = %105
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @spin_lock_irqsave(i32* %112, i64 %113)
  %115 = load i32, i32* @PCI230_INT_ZCLK_CT1, align 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* @PCI230_INT_ZCLK_CT1, align 4
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @PCI230_INT_SCE, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @outb(i32 %127, i64 %132)
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 3
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  br label %138

138:                                              ; preds = %110, %105
  %139 = load i32, i32* @GAT_VCC, align 4
  %140 = call i32 @GAT_CONFIG(i32 1, i32 %139)
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @outb(i32 %140, i64 %145)
  br label %151

147:                                              ; preds = %101
  %148 = load i32, i32* @pci230_ao_inttrig_scan_begin, align 4
  %149 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %150 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %101, %147, %138
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp sge i32 %154, 2
  br i1 %155, label %156, label %184

156:                                              ; preds = %151
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  %159 = load i64, i64* %7, align 8
  %160 = call i32 @spin_lock_irqsave(i32* %158, i64 %159)
  %161 = load i32, i32* @PCI230P2_INT_DAC, align 4
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* @PCI230P2_INT_DAC, align 4
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @PCI230_INT_SCE, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @outb(i32 %173, i64 %178)
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 3
  %182 = load i64, i64* %7, align 8
  %183 = call i32 @spin_unlock_irqrestore(i32* %181, i64 %182)
  br label %184

184:                                              ; preds = %156, %151
  br label %185

185:                                              ; preds = %54, %184, %28
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pci230_ao_stop(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci230_handle_ao_fifo(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @GAT_CONFIG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
