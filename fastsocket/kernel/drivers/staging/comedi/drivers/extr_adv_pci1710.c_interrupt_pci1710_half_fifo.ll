; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_interrupt_pci1710_half_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_interrupt_pci1710_half_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i32 }
%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"adv_pci1710 EDBG: BGN: interrupt_pci1710_half_fifo(...)\0A\00", align 1
@PCI171x_STATUS = common dso_local global i64 0, align 8
@Status_FH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"comedi%d: A/D FIFO not half full! (%4x)\0A\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@Status_FF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"comedi%d: A/D FIFO Full status (Fatal Error!) (%4x)\0A\00", align 1
@this_board = common dso_local global %struct.TYPE_5__* null, align 8
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@PCI171x_CLRINT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"adv_pci1710 EDBG: END: interrupt_pci1710_half_fifo(...)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @interrupt_pci1710_half_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interrupt_pci1710_half_fifo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.comedi_device*
  store %struct.comedi_device* %8, %struct.comedi_device** %3, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 2
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i64 0
  store %struct.comedi_subdevice* %12, %struct.comedi_subdevice** %4, align 8
  %13 = call i32 @DPRINTK(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCI171x_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @inw(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @Status_FH, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %1
  %25 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %32 = call i32 @pci171x_ai_cancel(%struct.comedi_device* %30, %struct.comedi_subdevice* %31)
  %33 = load i32, i32* @COMEDI_CB_EOA, align 4
  %34 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %44 = call i32 @comedi_event(%struct.comedi_device* %42, %struct.comedi_subdevice* %43)
  br label %150

45:                                               ; preds = %1
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @Status_FF, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %58 = call i32 @pci171x_ai_cancel(%struct.comedi_device* %56, %struct.comedi_subdevice* %57)
  %59 = load i32, i32* @COMEDI_CB_EOA, align 4
  %60 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 4
  %68 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %70 = call i32 @comedi_event(%struct.comedi_device* %68, %struct.comedi_subdevice* %69)
  br label %150

71:                                               ; preds = %45
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @this_board, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = icmp uge i64 %77, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %71
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = udiv i64 %87, 2
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %5, align 4
  %90 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i64 @move_block_from_fifo(%struct.comedi_device* %90, %struct.comedi_subdevice* %91, i32 %92, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %150

96:                                               ; preds = %83
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %96, %71
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %105 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i64 @move_block_from_fifo(%struct.comedi_device* %104, %struct.comedi_subdevice* %105, i32 %106, i32 1)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %150

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %100
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %139, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp sge i64 %119, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %116
  %125 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %126 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %127 = call i32 @pci171x_ai_cancel(%struct.comedi_device* %125, %struct.comedi_subdevice* %126)
  %128 = load i32, i32* @COMEDI_CB_EOA, align 4
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %130 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %128
  store i32 %134, i32* %132, align 4
  %135 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %136 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %137 = call i32 @comedi_event(%struct.comedi_device* %135, %struct.comedi_subdevice* %136)
  br label %150

138:                                              ; preds = %116
  br label %139

139:                                              ; preds = %138, %111
  %140 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %141 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @PCI171x_CLRINT, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @outb(i32 0, i64 %144)
  %146 = call i32 @DPRINTK(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %147 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %148 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %149 = call i32 @comedi_event(%struct.comedi_device* %147, %struct.comedi_subdevice* %148)
  br label %150

150:                                              ; preds = %139, %124, %109, %95, %50, %24
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @pci171x_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i64 @move_block_from_fifo(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
