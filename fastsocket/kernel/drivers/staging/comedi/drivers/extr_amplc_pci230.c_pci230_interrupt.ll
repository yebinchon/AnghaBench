; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i8, i32, i32, i64, i32 }
%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCI230_INT_STAT = common dso_local global i64 0, align 8
@PCI230_INT_DISABLE = common dso_local global i8 0, align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@PCI230_INT_SCE = common dso_local global i64 0, align 8
@THISCPU = common dso_local global i32 0, align 4
@PCI230_INT_ZCLK_CT1 = common dso_local global i8 0, align 1
@PCI230P2_INT_DAC = common dso_local global i8 0, align 1
@PCI230_INT_ADC = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pci230_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.comedi_device*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.comedi_device*
  store %struct.comedi_device* %12, %struct.comedi_device** %8, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI230_INT_STAT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call zeroext i8 @inb(i64 %17)
  store i8 %18, i8* %6, align 1
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @PCI230_INT_DISABLE, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %155

26:                                               ; preds = %2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %34, %36
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %7, align 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 8
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  %45 = xor i32 %44, -1
  %46 = and i32 %42, %45
  %47 = trunc i32 %46 to i8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i8 %47, i8* %49, align 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i8, i8* %51, align 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PCI230_INT_SCE, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outb(i8 zeroext %52, i64 %57)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* @THISCPU, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i8, i8* %7, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* @PCI230_INT_ZCLK_CT1, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %26
  %75 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 1
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %76, align 8
  store %struct.comedi_subdevice* %77, %struct.comedi_subdevice** %9, align 8
  %78 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %80 = call i32 @pci230_handle_ao_nofifo(%struct.comedi_device* %78, %struct.comedi_subdevice* %79)
  %81 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %83 = call i32 @comedi_event(%struct.comedi_device* %81, %struct.comedi_subdevice* %82)
  br label %84

84:                                               ; preds = %74, %26
  %85 = load i8, i8* %7, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @PCI230P2_INT_DAC, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 1
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %93, align 8
  store %struct.comedi_subdevice* %94, %struct.comedi_subdevice** %9, align 8
  %95 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %97 = call i32 @pci230_handle_ao_fifo(%struct.comedi_device* %95, %struct.comedi_subdevice* %96)
  %98 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %100 = call i32 @comedi_event(%struct.comedi_device* %98, %struct.comedi_subdevice* %99)
  br label %101

101:                                              ; preds = %91, %84
  %102 = load i8, i8* %7, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* @PCI230_INT_ADC, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %101
  %109 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 0
  %111 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %110, align 8
  store %struct.comedi_subdevice* %111, %struct.comedi_subdevice** %9, align 8
  %112 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %114 = call i32 @pci230_handle_ai(%struct.comedi_device* %112, %struct.comedi_subdevice* %113)
  %115 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %117 = call i32 @comedi_event(%struct.comedi_device* %115, %struct.comedi_subdevice* %116)
  br label %118

118:                                              ; preds = %108, %101
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @spin_lock_irqsave(i32* %120, i64 %121)
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i8, i8* %128, align 8
  %130 = zext i8 %129 to i32
  %131 = icmp ne i32 %126, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %118
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i8, i8* %134, align 8
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i8 %135, i8* %137, align 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i8, i8* %139, align 1
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @PCI230_INT_SCE, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @outb(i8 zeroext %140, i64 %145)
  br label %147

147:                                              ; preds = %132, %118
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  store i32 0, i32* %149, align 4
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 3
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  %154 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %147, %24
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci230_handle_ao_nofifo(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci230_handle_ao_fifo(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci230_handle_ai(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
