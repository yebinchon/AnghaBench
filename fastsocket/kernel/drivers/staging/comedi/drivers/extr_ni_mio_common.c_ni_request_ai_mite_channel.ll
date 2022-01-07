; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_request_ai_mite_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_request_ai_mite_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"failed to reserve mite dma channel for analog input.\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @ni_request_ai_mite_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_request_ai_mite_channel(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @BUG_ON(%struct.TYPE_4__* %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_4__* @mite_request_channel(i32 %15, i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp eq %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %32 = call i32 @comedi_error(%struct.comedi_device* %31, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %52

35:                                               ; preds = %1
  %36 = load i32, i32* @COMEDI_INPUT, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ni_set_ai_dma_channel(%struct.comedi_device* %41, i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %35, %26
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @mite_request_channel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @ni_set_ai_dma_channel(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
