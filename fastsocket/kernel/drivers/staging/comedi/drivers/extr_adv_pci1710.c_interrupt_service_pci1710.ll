; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_interrupt_service_pci1710.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_interrupt_service_pci1710.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i64 }
%struct.comedi_device = type { i64, i32 }

@.str = private unnamed_addr constant [58 x i8] c"adv_pci1710 EDBG: BGN: interrupt_service_pci1710(%d,...)\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@PCI171x_STATUS = common dso_local global i64 0, align 8
@Status_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"adv_pci1710 EDBG: interrupt_service_pci1710() ST: %4x\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@Control_CNT0 = common dso_local global i32 0, align 4
@Control_SW = common dso_local global i32 0, align 4
@PCI171x_CONTROL = common dso_local global i64 0, align 8
@PCI171x_CLRFIFO = common dso_local global i64 0, align 8
@PCI171x_CLRINT = common dso_local global i64 0, align 8
@PCI171x_MUX = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"adv_pci1710 EDBG: END: interrupt_service_pci1710(...)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_service_pci1710 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_service_pci1710(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.comedi_device*
  store %struct.comedi_device* %8, %struct.comedi_device** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %121

17:                                               ; preds = %2
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCI171x_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inw(i64 %22)
  %24 = load i32, i32* @Status_IRQ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %121

29:                                               ; preds = %17
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCI171x_STATUS, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @inw(i64 %34)
  %36 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %107

41:                                               ; preds = %29
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @Control_CNT0, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @Control_SW, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PCI171x_CONTROL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outw(i32 %56, i64 %61)
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PCI171x_CLRFIFO, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outb(i32 0, i64 %72)
  %74 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PCI171x_CLRINT, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @outb(i32 0, i64 %78)
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PCI171x_MUX, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @outw(i32 %82, i64 %87)
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PCI171x_CONTROL, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @outw(i32 %91, i64 %96)
  %98 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @start_pacer(%struct.comedi_device* %98, i32 1, i32 %101, i32 %104)
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %106, i32* %3, align 4
  br label %121

107:                                              ; preds = %29
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i8*, i8** %5, align 8
  %114 = call i32 @interrupt_pci1710_every_sample(i8* %113)
  br label %118

115:                                              ; preds = %107
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @interrupt_pci1710_half_fifo(i8* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %41, %27, %15
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @start_pacer(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @interrupt_pci1710_every_sample(i8*) #1

declare dso_local i32 @interrupt_pci1710_half_fifo(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
