; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_interrupt_pci9118_ai_mode4_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_interrupt_pci9118_ai_mode4_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.comedi_device = type { i64 }

@AdFunction_PDTrg = common dso_local global i32 0, align 4
@AdFunction_PETrg = common dso_local global i32 0, align 4
@AdFunction_AM = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCI9118_ADFUNC = common dso_local global i64 0, align 8
@PCI9118_CNTCTRL = common dso_local global i64 0, align 8
@PCI9118_CNT0 = common dso_local global i64 0, align 8
@AdFunction_Start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @interrupt_pci9118_ai_mode4_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interrupt_pci9118_ai_mode4_switch(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load i32, i32* @AdFunction_PDTrg, align 4
  %4 = load i32, i32* @AdFunction_PETrg, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @AdFunction_AM, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI9118_ADFUNC, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outl(i32 %12, i64 %17)
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI9118_CNTCTRL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outl(i32 48, i64 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 1
  %36 = and i32 %35, 255
  %37 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PCI9118_CNT0, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outl(i32 %36, i64 %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 1, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 9
  %54 = and i32 %53, 255
  %55 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PCI9118_CNT0, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @outl(i32 %54, i64 %59)
  %61 = load i32, i32* @AdFunction_Start, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCI9118_ADFUNC, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outl(i32 %68, i64 %73)
  ret void
}

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
