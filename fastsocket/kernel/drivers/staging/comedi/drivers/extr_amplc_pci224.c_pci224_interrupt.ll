; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i32, i32, i64, i32 }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@PCI224_INT_SCE = common dso_local global i64 0, align 8
@THISCPU = common dso_local global i32 0, align 4
@PCI224_INTR_EXT = common dso_local global i8 0, align 1
@TRIG_EXT = common dso_local global i64 0, align 8
@PCI224_INTR_DAC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pci224_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci224_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.comedi_device*
  store %struct.comedi_device* %14, %struct.comedi_device** %5, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %16, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i64 0
  store %struct.comedi_subdevice* %18, %struct.comedi_subdevice** %6, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI224_INT_SCE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @inb(i64 %23)
  %25 = and i32 %24, 63
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  %27 = load i8, i8* %8, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %153

29:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 8
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %8, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %37, %39
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %9, align 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 8
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %8, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %47, -1
  %49 = and i32 %45, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %10, align 1
  %51 = load i8, i8* %10, align 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PCI224_INT_SCE, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i8 zeroext %51, i64 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @THISCPU, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i8, i8* %9, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %124

70:                                               ; preds = %29
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %72 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store %struct.comedi_cmd* %74, %struct.comedi_cmd** %7, align 8
  %75 = load i8, i8* %9, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @PCI224_INTR_EXT, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %70
  %82 = load i8, i8* @PCI224_INTR_EXT, align 1
  %83 = zext i8 %82 to i32
  %84 = xor i32 %83, -1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8, i8* %86, align 8
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, %84
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %86, align 8
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TRIG_EXT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %81
  %97 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %99 = call i32 @pci224_ao_start(%struct.comedi_device* %97, %struct.comedi_subdevice* %98)
  br label %111

100:                                              ; preds = %81
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TRIG_EXT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %109 = call i32 @pci224_ao_stop(%struct.comedi_device* %107, %struct.comedi_subdevice* %108)
  br label %110

110:                                              ; preds = %106, %100
  br label %111

111:                                              ; preds = %110, %96
  br label %112

112:                                              ; preds = %111, %70
  %113 = load i8, i8* %9, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @PCI224_INTR_DAC, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %121 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %122 = call i32 @pci224_ao_handle_fifo(%struct.comedi_device* %120, %struct.comedi_subdevice* %121)
  br label %123

123:                                              ; preds = %119, %112
  br label %124

124:                                              ; preds = %123, %29
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i64, i64* %12, align 8
  %128 = call i32 @spin_lock_irqsave(i32* %126, i64 %127)
  %129 = load i8, i8* %10, align 1
  %130 = zext i8 %129 to i32
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i8, i8* %132, align 8
  %134 = zext i8 %133 to i32
  %135 = icmp ne i32 %130, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %124
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i8, i8* %138, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @PCI224_INT_SCE, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @outb(i8 zeroext %139, i64 %144)
  br label %146

146:                                              ; preds = %136, %124
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  store i32 0, i32* %148, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = load i64, i64* %12, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  br label %153

153:                                              ; preds = %146, %2
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @IRQ_RETVAL(i32 %154)
  ret i32 %155
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci224_ao_start(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci224_ao_stop(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci224_ao_handle_fifo(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
