; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_interrupt_pci1710_every_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_interrupt_pci1710_every_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i16*, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.comedi_device = type { i16, i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"adv_pci1710 EDBG: BGN: interrupt_pci1710_every_sample(...)\0A\00", align 1
@PCI171x_STATUS = common dso_local global i64 0, align 8
@Status_FE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"comedi%d: A/D FIFO empty (%4x)\0A\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@Status_FF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"comedi%d: A/D FIFO Full status (Fatal Error!) (%4x)\0A\00", align 1
@PCI171x_CLRINT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"FOR \00", align 1
@PCI171x_AD_DATA = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"adv_pci1710 EDBG: EOS1 bic %d bip %d buc %d bup %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"adv_pci1710 EDBG: EOS2\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"adv_pci1710 EDBG: END: interrupt_pci1710_every_sample(...)\0A\00", align 1
@TYPE_PCI1713 = common dso_local global i64 0, align 8
@this_board = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @interrupt_pci1710_every_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interrupt_pci1710_every_sample(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.comedi_device*
  store %struct.comedi_device* %7, %struct.comedi_device** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 2
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i64 0
  store %struct.comedi_subdevice* %11, %struct.comedi_subdevice** %4, align 8
  %12 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI171x_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @inw(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @Status_FE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %1
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i16 signext %26, i32 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %31 = call i32 @pci171x_ai_cancel(%struct.comedi_device* %29, %struct.comedi_subdevice* %30)
  %32 = load i32, i32* @COMEDI_CB_EOA, align 4
  %33 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %34
  store i32 %40, i32* %38, align 8
  %41 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %43 = call i32 @comedi_event(%struct.comedi_device* %41, %struct.comedi_subdevice* %42)
  br label %194

44:                                               ; preds = %1
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @Status_FF, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i16, i16* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i16 signext %52, i32 %53)
  %55 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %57 = call i32 @pci171x_ai_cancel(%struct.comedi_device* %55, %struct.comedi_subdevice* %56)
  %58 = load i32, i32* @COMEDI_CB_EOA, align 4
  %59 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %60
  store i32 %66, i32* %64, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %69 = call i32 @comedi_event(%struct.comedi_device* %67, %struct.comedi_subdevice* %68)
  br label %194

70:                                               ; preds = %44
  %71 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PCI171x_CLRINT, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outb(i32 0, i64 %75)
  %77 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %182, %70
  %79 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PCI171x_STATUS, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @inw(i64 %83)
  %85 = load i32, i32* @Status_FE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %89, label %183

89:                                               ; preds = %78
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %94 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PCI171x_AD_DATA, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @inw(i64 %97)
  %99 = and i32 %98, 4095
  %100 = call i32 @comedi_buf_put(%struct.TYPE_6__* %92, i32 %99)
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %102 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %108 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp uge i64 %111, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %89
  %117 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %118 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %116, %89
  %122 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %123 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %182

128:                                              ; preds = %121
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %130, align 8
  %133 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %134 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %139 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %138, i32 0, i32 0
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %144 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %149 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %137, i32 %142, i32 %147, i32 %152)
  %154 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %181, label %159

159:                                              ; preds = %128
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp sge i64 %162, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %159
  %168 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %169 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %170 = call i32 @pci171x_ai_cancel(%struct.comedi_device* %168, %struct.comedi_subdevice* %169)
  %171 = load i32, i32* @COMEDI_CB_EOA, align 4
  %172 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %173 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %172, i32 0, i32 0
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %171
  store i32 %177, i32* %175, align 8
  %178 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %179 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %180 = call i32 @comedi_event(%struct.comedi_device* %178, %struct.comedi_subdevice* %179)
  br label %194

181:                                              ; preds = %159, %128
  br label %182

182:                                              ; preds = %181, %121
  br label %78

183:                                              ; preds = %78
  %184 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %185 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @PCI171x_CLRINT, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @outb(i32 0, i64 %188)
  %190 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  %191 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %192 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %193 = call i32 @comedi_event(%struct.comedi_device* %191, %struct.comedi_subdevice* %192)
  br label %194

194:                                              ; preds = %183, %167, %49, %23
  ret void
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @printk(i8*, i16 signext, i32) #1

declare dso_local i32 @pci171x_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_buf_put(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
