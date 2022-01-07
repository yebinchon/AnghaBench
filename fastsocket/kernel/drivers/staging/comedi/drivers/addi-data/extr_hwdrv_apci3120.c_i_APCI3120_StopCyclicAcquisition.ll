; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3120.c_i_APCI3120_StopCyclicAcquisition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3120.c_i_APCI3120_StopCyclicAcquisition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i8*, i64, i64, i64, i64, i64, i64, i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@APCI3120_ADD_ON_AGCSTS_LOW = common dso_local global i32 0, align 4
@APCI3120_ADD_ON_AGCSTS_HIGH = common dso_local global i32 0, align 4
@AMCC_OP_REG_MCSR = common dso_local global i64 0, align 8
@APCI3120_DISABLE_TIMER0 = common dso_local global i32 0, align 4
@APCI3120_DISABLE_TIMER1 = common dso_local global i32 0, align 4
@APCI3120_WR_ADDRESS = common dso_local global i64 0, align 8
@APCI3120_DISABLE_ALL_TIMER = common dso_local global i32 0, align 4
@APCI3120_DISABLE_ALL_INTERRUPT = common dso_local global i32 0, align 4
@APCI3120_WRITE_MODE_SELECT = common dso_local global i64 0, align 8
@APCI3120_RESET_FIFO = common dso_local global i64 0, align 8
@APCI3120_RD_STATUS = common dso_local global i64 0, align 8
@APCI3120_DISABLE = common dso_local global i8* null, align 8
@APCI3120_EOC_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3120_StopCyclicAcquisition(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 10
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 4
  %9 = call i32 @outw(i32 0, i64 %8)
  %10 = load i32, i32* @APCI3120_ADD_ON_AGCSTS_LOW, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 10
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 0
  %15 = call i32 @outw(i32 %10, i64 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 10
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 2
  %20 = call i32 @outw(i32 0, i64 %19)
  %21 = load i32, i32* @APCI3120_ADD_ON_AGCSTS_HIGH, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 10
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 0
  %26 = call i32 @outw(i32 %21, i64 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 10
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 2
  %31 = call i32 @outw(i32 0, i64 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outl(i32 0, i64 %36)
  %38 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %39 = call i32 @i_APCI3120_ExttrigDisable(%struct.comedi_device* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @APCI3120_DISABLE_TIMER0, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @APCI3120_DISABLE_TIMER1, align 4
  %48 = and i32 %46, %47
  %49 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @APCI3120_WR_ADDRESS, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outw(i32 %48, i64 %53)
  %55 = load i32, i32* @APCI3120_DISABLE_ALL_TIMER, align 4
  %56 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @APCI3120_WR_ADDRESS, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outw(i32 %55, i64 %60)
  %62 = load i32, i32* @APCI3120_DISABLE_ALL_INTERRUPT, align 4
  %63 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @APCI3120_WRITE_MODE_SELECT, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outb(i32 %62, i64 %67)
  %69 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @APCI3120_RESET_FIFO, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @inb(i64 %73)
  %75 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @APCI3120_RD_STATUS, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @inw(i64 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 8
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 7
  store i64 0, i64* %84, align 8
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 6
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  store i64 0, i64* %94, align 8
  %95 = load i8*, i8** @APCI3120_DISABLE, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @APCI3120_EOC_MODE, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i8*, i8** @APCI3120_DISABLE, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %105 = call i32 @i_APCI3120_Reset(%struct.comedi_device* %104)
  ret i32 0
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @i_APCI3120_ExttrigDisable(%struct.comedi_device*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @i_APCI3120_Reset(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
