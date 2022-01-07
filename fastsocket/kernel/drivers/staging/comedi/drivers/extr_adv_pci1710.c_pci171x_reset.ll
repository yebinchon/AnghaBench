; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci171x_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci171x_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"adv_pci1710 EDBG: BGN: pci171x_reset(...)\0A\00", align 1
@PCI171x_CNTCTRL = common dso_local global i64 0, align 8
@Control_SW = common dso_local global i32 0, align 4
@Control_CNT0 = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@PCI171x_CONTROL = common dso_local global i64 0, align 8
@PCI171x_CLRFIFO = common dso_local global i64 0, align 8
@PCI171x_CLRINT = common dso_local global i64 0, align 8
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@PCI171x_DAREF = common dso_local global i64 0, align 8
@PCI171x_DA1 = common dso_local global i64 0, align 8
@PCI171x_DA2 = common dso_local global i64 0, align 8
@PCI171x_DO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"adv_pci1710 EDBG: END: pci171x_reset(...)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @pci171x_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci171x_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = call i32 @DPRINTK(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PCI171x_CNTCTRL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outw(i32 48, i64 %8)
  %10 = load i32, i32* @Control_SW, align 4
  %11 = load i32, i32* @Control_CNT0, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCI171x_CONTROL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outw(i32 %17, i64 %22)
  %24 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI171x_CLRFIFO, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i64 0, i64 %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCI171x_CLRINT, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb(i64 0, i64 %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %37 = call i32 @start_pacer(%struct.comedi_device* %36, i32 -1, i32 0, i32 0)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %80

44:                                               ; preds = %1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PCI171x_DAREF, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outb(i64 %47, i64 %52)
  %54 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCI171x_DA1, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outw(i32 0, i64 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %79

68:                                               ; preds = %44
  %69 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCI171x_DA2, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outw(i32 0, i64 %73)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %68, %44
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PCI171x_DO, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outw(i32 0, i64 %85)
  %87 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PCI171x_CLRFIFO, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @outb(i64 0, i64 %91)
  %93 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %94 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PCI171x_CLRINT, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @outb(i64 0, i64 %97)
  %99 = call i32 @DPRINTK(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outb(i64, i64) #1

declare dso_local i32 @start_pacer(%struct.comedi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
