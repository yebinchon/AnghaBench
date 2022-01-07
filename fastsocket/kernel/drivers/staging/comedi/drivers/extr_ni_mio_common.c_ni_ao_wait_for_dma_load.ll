; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_wait_for_dma_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_wait_for_dma_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16 (%struct.comedi_device*, i32)* }
%struct.comedi_device = type { i32 }

@ni_ao_wait_for_dma_load.timeout = internal constant i32 10000, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@AO_Status_1_Register = common dso_local global i32 0, align 4
@AO_FIFO_Half_Full_St = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [31 x i8] c"timed out waiting for dma load\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @ni_ao_wait_for_dma_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_wait_for_dma_load(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 10000
  br i1 %8, label %9, label %28

9:                                                ; preds = %6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i16 (%struct.comedi_device*, i32)*, i16 (%struct.comedi_device*, i32)** %11, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = load i32, i32* @AO_Status_1_Register, align 4
  %15 = call zeroext i16 %12(%struct.comedi_device* %13, i32 %14)
  store i16 %15, i16* %5, align 2
  %16 = load i16, i16* %5, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* @AO_FIFO_Half_Full_St, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  br label %28

23:                                               ; preds = %9
  %24 = call i32 @udelay(i32 10)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %6

28:                                               ; preds = %22, %6
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 10000
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %33 = call i32 @comedi_error(%struct.comedi_device* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EPIPE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
