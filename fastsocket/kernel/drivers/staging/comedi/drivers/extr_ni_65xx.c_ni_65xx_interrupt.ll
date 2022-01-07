; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@Change_Status = common dso_local global i64 0, align 8
@MasterInterruptStatus = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@EdgeStatus = common dso_local global i32 0, align 4
@ClrEdge = common dso_local global i32 0, align 4
@ClrOverflow = common dso_local global i32 0, align 4
@Clear_Register = common dso_local global i64 0, align 8
@COMEDI_CB_EOS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ni_65xx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_65xx_interrupt(i32 %0, i8* %1) #0 {
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
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = call %struct.TYPE_5__* @private(%struct.comedi_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @Change_Status, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readb(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MasterInterruptStatus, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @EdgeStatus, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  br label %65

37:                                               ; preds = %30
  %38 = load i32, i32* @ClrEdge, align 4
  %39 = load i32, i32* @ClrOverflow, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = call %struct.TYPE_5__* @private(%struct.comedi_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @Clear_Register, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writeb(i32 %40, i64 %48)
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %51 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @comedi_buf_put(%struct.TYPE_6__* %52, i32 0)
  %54 = load i32, i32* @COMEDI_CB_EOS, align 4
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %63 = call i32 @comedi_event(%struct.comedi_device* %61, %struct.comedi_subdevice* %62)
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %37, %35, %28
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @readb(i64) #1

declare dso_local %struct.TYPE_5__* @private(%struct.comedi_device*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @comedi_buf_put(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
