; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i64 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@AMCC_OP_REG_MCSR = common dso_local global i64 0, align 8
@EN_A2P_TRANSFERS = common dso_local global i32 0, align 4
@EXTTRG_AI = common dso_local global i32 0, align 4
@AdFunction_PDTrg = common dso_local global i32 0, align 4
@AdFunction_PETrg = common dso_local global i32 0, align 4
@PCI9118_ADFUNC = common dso_local global i64 0, align 8
@PCI9118_ADCNTRL = common dso_local global i64 0, align 8
@PCI9118_BURST = common dso_local global i64 0, align 8
@PCI9118_SCANMOD = common dso_local global i64 0, align 8
@PCI9118_DELFIFO = common dso_local global i64 0, align 8
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci9118_ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 9
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @inl(i64 %14)
  %16 = load i32, i32* @EN_A2P_TRANSFERS, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outl(i32 %18, i64 %23)
  br label %25

25:                                               ; preds = %9, %2
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = load i32, i32* @EXTTRG_AI, align 4
  %28 = call i32 @pci9118_exttrg_del(%struct.comedi_device* %26, i32 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = call i32 @start_pacer(%struct.comedi_device* %29, i32 0, i32 0, i32 0)
  %31 = load i32, i32* @AdFunction_PDTrg, align 4
  %32 = load i32, i32* @AdFunction_PETrg, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PCI9118_ADFUNC, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outl(i32 %38, i64 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCI9118_ADCNTRL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outl(i32 %49, i64 %54)
  %56 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PCI9118_BURST, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outl(i32 0, i64 %60)
  %62 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PCI9118_SCANMOD, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outl(i32 1, i64 %66)
  %68 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PCI9118_SCANMOD, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outl(i32 2, i64 %72)
  %74 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PCI9118_DELFIFO, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @outl(i32 0, i64 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 10
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 9
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 8
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 7
  store i64 0, i64* %87, align 8
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %93 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 5
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %25
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @inl(i64 %111)
  %113 = or i32 %112, 7936
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @outl(i32 %113, i64 %118)
  br label %120

120:                                              ; preds = %106, %25
  ret i32 0
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @pci9118_exttrg_del(%struct.comedi_device*, i32) #1

declare dso_local i32 @start_pacer(%struct.comedi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
