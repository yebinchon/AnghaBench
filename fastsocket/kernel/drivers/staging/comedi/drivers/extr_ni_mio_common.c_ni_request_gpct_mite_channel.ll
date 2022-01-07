; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_request_gpct_mite_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_request_gpct_mite_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_4__*, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.mite_channel = type { i32, i32 }

@NUM_GPCT = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"failed to reserve mite dma channel for counter.\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @ni_request_gpct_mite_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_request_gpct_mite_channel(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.mite_channel*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NUM_GPCT, align 4
  %12 = icmp uge i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.mite_channel* @mite_request_channel(i32 %32, i32 %39)
  store %struct.mite_channel* %40, %struct.mite_channel** %9, align 8
  %41 = load %struct.mite_channel*, %struct.mite_channel** %9, align 8
  %42 = icmp eq %struct.mite_channel* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %49 = call i32 @comedi_error(%struct.comedi_device* %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %76

52:                                               ; preds = %3
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.mite_channel*, %struct.mite_channel** %9, align 8
  %55 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = load %struct.mite_channel*, %struct.mite_channel** %9, align 8
  %65 = call i32 @ni_tio_set_mite_channel(%struct.TYPE_5__* %63, %struct.mite_channel* %64)
  %66 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.mite_channel*, %struct.mite_channel** %9, align 8
  %69 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ni_set_gpct_dma_channel(%struct.comedi_device* %66, i32 %67, i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %52, %43
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.mite_channel* @mite_request_channel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @ni_tio_set_mite_channel(%struct.TYPE_5__*, %struct.mite_channel*) #1

declare dso_local i32 @ni_set_gpct_dma_channel(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
