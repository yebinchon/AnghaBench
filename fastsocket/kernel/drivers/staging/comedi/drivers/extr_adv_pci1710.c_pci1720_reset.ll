; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1720_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1720_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.comedi_device = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"adv_pci1710 EDBG: BGN: pci1720_reset(...)\0A\00", align 1
@Syncont_SC0 = common dso_local global i32 0, align 4
@PCI1720_SYNCONT = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCI1720_RANGE = common dso_local global i64 0, align 8
@PCI1720_DA0 = common dso_local global i64 0, align 8
@PCI1720_DA1 = common dso_local global i64 0, align 8
@PCI1720_DA2 = common dso_local global i64 0, align 8
@PCI1720_DA3 = common dso_local global i64 0, align 8
@PCI1720_SYNCOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"adv_pci1710 EDBG: END: pci1720_reset(...)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @pci1720_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1720_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = call i32 @DPRINTK(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @Syncont_SC0, align 4
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PCI1720_SYNCONT, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @outb(i32 %4, i64 %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 170, i32* %12, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCI1720_RANGE, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 %15, i64 %20)
  %22 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCI1720_DA0, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outw(i32 2048, i64 %26)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCI1720_DA1, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outw(i32 2048, i64 %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCI1720_DA2, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outw(i32 2048, i64 %38)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCI1720_DA3, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outw(i32 2048, i64 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PCI1720_SYNCOUT, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outb(i32 0, i64 %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 2048, i32* %55, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 2048, i32* %59, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 2048, i32* %63, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  store i32 2048, i32* %67, align 4
  %68 = call i32 @DPRINTK(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
