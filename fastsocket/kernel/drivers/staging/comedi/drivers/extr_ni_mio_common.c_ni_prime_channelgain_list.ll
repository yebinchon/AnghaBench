; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_prime_channelgain_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_prime_channelgain_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.comedi_device*, i32)*, i32 (%struct.comedi_device*, i32, i32)* }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@AI_CONVERT_Pulse = common dso_local global i32 0, align 4
@AI_Command_1_Register = common dso_local global i32 0, align 4
@NI_TIMEOUT = common dso_local global i32 0, align 4
@AI_Status_1_Register = common dso_local global i32 0, align 4
@AI_FIFO_Empty_St = common dso_local global i32 0, align 4
@ADC_FIFO_Clear = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ni_mio_common: timeout loading channel/gain list\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ni_prime_channelgain_list(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %5, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = load i32, i32* @AI_CONVERT_Pulse, align 4
  %9 = load i32, i32* @AI_Command_1_Register, align 4
  %10 = call i32 %6(%struct.comedi_device* %7, i32 %8, i32 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %34, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NI_TIMEOUT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.comedi_device*, i32)*, i32 (%struct.comedi_device*, i32)** %17, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = load i32, i32* @AI_Status_1_Register, align 4
  %21 = call i32 %18(%struct.comedi_device* %19, i32 %20)
  %22 = load i32, i32* @AI_FIFO_Empty_St, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %15
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %27, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %30 = load i32, i32* @ADC_FIFO_Clear, align 4
  %31 = call i32 %28(%struct.comedi_device* %29, i32 1, i32 %30)
  br label %39

32:                                               ; preds = %15
  %33 = call i32 @udelay(i32 1)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %11

37:                                               ; preds = %11
  %38 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %25
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
