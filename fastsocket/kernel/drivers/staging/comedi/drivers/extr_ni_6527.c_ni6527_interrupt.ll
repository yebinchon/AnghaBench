; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_6527.c_ni6527_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_6527.c_ni6527_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@devpriv = common dso_local global %struct.TYPE_5__* null, align 8
@Change_Status = common dso_local global i64 0, align 8
@MasterInterruptStatus = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@EdgeStatus = common dso_local global i32 0, align 4
@ClrEdge = common dso_local global i32 0, align 4
@ClrOverflow = common dso_local global i32 0, align 4
@Clear_Register = common dso_local global i64 0, align 8
@COMEDI_CB_EOS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ni6527_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni6527_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.comedi_device*
  store %struct.comedi_device* %10, %struct.comedi_device** %6, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i64 2
  store %struct.comedi_subdevice* %14, %struct.comedi_subdevice** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @Change_Status, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readb(i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MasterInterruptStatus, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %63

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @EdgeStatus, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @IRQ_NONE, align 4
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %29
  %37 = load i32, i32* @ClrEdge, align 4
  %38 = load i32, i32* @ClrOverflow, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @Clear_Register, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writeb(i32 %39, i64 %46)
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @comedi_buf_put(%struct.TYPE_6__* %50, i32 0)
  %52 = load i32, i32* @COMEDI_CB_EOS, align 4
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 4
  %59 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %61 = call i32 @comedi_event(%struct.comedi_device* %59, %struct.comedi_subdevice* %60)
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %36, %34, %27
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @comedi_buf_put(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
