; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_request_mite_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_request_mite_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.ni_gpct = type { i32 }
%struct.mite_channel = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"failed to reserve mite dma channel for counter.\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.ni_gpct*, i32)* @ni_660x_request_mite_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_request_mite_channel(%struct.comedi_device* %0, %struct.ni_gpct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.ni_gpct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.mite_channel*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.ni_gpct* %1, %struct.ni_gpct** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %11 = call %struct.TYPE_3__* @private(%struct.comedi_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ni_gpct*, %struct.ni_gpct** %6, align 8
  %16 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %20 = call %struct.TYPE_3__* @private(%struct.comedi_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %24 = call %struct.TYPE_3__* @private(%struct.comedi_device* %23)
  %25 = load %struct.ni_gpct*, %struct.ni_gpct** %6, align 8
  %26 = call i32 @mite_ring(%struct.TYPE_3__* %24, %struct.ni_gpct* %25)
  %27 = call %struct.mite_channel* @mite_request_channel(i32 %22, i32 %26)
  store %struct.mite_channel* %27, %struct.mite_channel** %9, align 8
  %28 = load %struct.mite_channel*, %struct.mite_channel** %9, align 8
  %29 = icmp eq %struct.mite_channel* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %32 = call %struct.TYPE_3__* @private(%struct.comedi_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %37 = call i32 @comedi_error(%struct.comedi_device* %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %58

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.mite_channel*, %struct.mite_channel** %9, align 8
  %43 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ni_gpct*, %struct.ni_gpct** %6, align 8
  %45 = load %struct.mite_channel*, %struct.mite_channel** %9, align 8
  %46 = call i32 @ni_tio_set_mite_channel(%struct.ni_gpct* %44, %struct.mite_channel* %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %48 = load %struct.mite_channel*, %struct.mite_channel** %9, align 8
  %49 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ni_gpct*, %struct.ni_gpct** %6, align 8
  %52 = call i32 @ni_660x_set_dma_channel(%struct.comedi_device* %47, i32 %50, %struct.ni_gpct* %51)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %54 = call %struct.TYPE_3__* @private(%struct.comedi_device* %53)
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %40, %30
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_3__* @private(%struct.comedi_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.mite_channel* @mite_request_channel(i32, i32) #1

declare dso_local i32 @mite_ring(%struct.TYPE_3__*, %struct.ni_gpct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @ni_tio_set_mite_channel(%struct.ni_gpct*, %struct.mite_channel*) #1

declare dso_local i32 @ni_660x_set_dma_channel(%struct.comedi_device*, i32, %struct.ni_gpct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
