; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32*, i64, i64 }
%struct.comedi_device = type { i64 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCI9118_INTCTRL = common dso_local global i64 0, align 8
@PCI9118_CNTCTRL = common dso_local global i64 0, align 8
@PCI9118_ADCNTRL = common dso_local global i64 0, align 8
@PCI9118_BURST = common dso_local global i64 0, align 8
@PCI9118_SCANMOD = common dso_local global i64 0, align 8
@AdFunction_PDTrg = common dso_local global i32 0, align 4
@AdFunction_PETrg = common dso_local global i32 0, align 4
@PCI9118_ADFUNC = common dso_local global i64 0, align 8
@PCI9118_DA1 = common dso_local global i64 0, align 8
@PCI9118_DA2 = common dso_local global i64 0, align 8
@PCI9118_DO = common dso_local global i64 0, align 8
@PCI9118_AD_DATA = common dso_local global i64 0, align 8
@PCI9118_DELFIFO = common dso_local global i64 0, align 8
@PCI9118_INTSRC = common dso_local global i64 0, align 8
@PCI9118_ADSTAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @pci9118_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PCI9118_INTCTRL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @inl(i64 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCI9118_INTCTRL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outl(i32 %15, i64 %20)
  %22 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCI9118_CNTCTRL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outl(i32 48, i64 %26)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = call i32 @start_pacer(%struct.comedi_device* %28, i32 0, i32 0, i32 0)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCI9118_ADCNTRL, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outl(i32 %34, i64 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PCI9118_BURST, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outl(i32 0, i64 %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PCI9118_SCANMOD, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outl(i32 1, i64 %51)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PCI9118_SCANMOD, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outl(i32 2, i64 %57)
  %59 = load i32, i32* @AdFunction_PDTrg, align 4
  %60 = load i32, i32* @AdFunction_PETrg, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PCI9118_ADFUNC, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outl(i32 %66, i64 %71)
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 2047, i32* %76, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 2047, i32* %80, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PCI9118_DA1, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @outl(i32 %85, i64 %90)
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PCI9118_DA2, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outl(i32 %96, i64 %101)
  %103 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PCI9118_DO, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @outl(i32 0, i64 %107)
  %109 = call i32 @udelay(i32 10)
  %110 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %111 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PCI9118_AD_DATA, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @inl(i64 %114)
  %116 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PCI9118_DELFIFO, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @outl(i32 0, i64 %120)
  %122 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PCI9118_INTSRC, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @outl(i32 0, i64 %126)
  %128 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %129 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @PCI9118_ADSTAT, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @inl(i64 %132)
  %134 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %135 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PCI9118_INTSRC, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @inl(i64 %138)
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %146 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @PCI9118_ADCNTRL, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @outl(i32 %144, i64 %149)
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 5
  store i64 0, i64* %152, align 8
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 4
  store i64 0, i64* %154, align 8
  ret i32 0
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @start_pacer(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
