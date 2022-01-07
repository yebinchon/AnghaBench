; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_move_block_from_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_move_block_from_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.comedi_device = type { i64, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"adv_pci1710 EDBG: BGN: move_block_from_fifo(...,%d,%d)\0A\00", align 1
@PCI171x_AD_DATA = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"adv_pci1710 EDBG: END: move_block_from_fifo(...)\0A\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@TYPE_PCI1713 = common dso_local global i64 0, align 8
@this_board = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32)* @move_block_from_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_block_from_fifo(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %48, %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI171x_AD_DATA, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inw(i64 %31)
  %33 = and i32 %32, 4095
  %34 = call i32 @comedi_buf_put(%struct.TYPE_6__* %26, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %23
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %19

51:                                               ; preds = %19
  %52 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @comedi_buf_put(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
