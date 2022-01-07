; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_cdio_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_cdio_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32 }

@CDO_FIFO_Mode_Bit = common dso_local global i32 0, align 4
@CDO_Halt_On_Error_Bit = common dso_local global i32 0, align 4
@CDO_Reset_Bit = common dso_local global i32 0, align 4
@M_Offset_CDIO_Command = common dso_local global i32 0, align 4
@CDO_Sample_Source_Select_Mask = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@CDO_Polarity_Bit = common dso_local global i32 0, align 4
@M_Offset_CDO_Mode = common dso_local global i32 0, align 4
@M_Offset_CDO_FIFO_Data = common dso_local global i32 0, align 4
@CDO_SW_Update_Bit = common dso_local global i32 0, align 4
@M_Offset_CDO_Mask_Enable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"attempted to run digital output command with no lines configured as outputs\00", align 1
@EIO = common dso_local global i32 0, align 4
@ni_cdo_inttrig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_cdio_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_cdio_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.comedi_cmd* %12, %struct.comedi_cmd** %6, align 8
  %13 = load i32, i32* @CDO_FIFO_Mode_Bit, align 4
  %14 = load i32, i32* @CDO_Halt_On_Error_Bit, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @CDO_Reset_Bit, align 4
  %17 = load i32, i32* @M_Offset_CDIO_Command, align 4
  %18 = call i32 @ni_writel(i32 %16, i32 %17)
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %31 [
    i32 128, label %22
  ]

22:                                               ; preds = %2
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CR_CHAN(i32 %25)
  %27 = load i32, i32* @CDO_Sample_Source_Select_Mask, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %33

31:                                               ; preds = %2
  %32 = call i32 (...) @BUG()
  br label %33

33:                                               ; preds = %31, %22
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CR_INVERT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @CDO_Polarity_Bit, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @M_Offset_CDO_Mode, align 4
  %47 = call i32 @ni_writel(i32 %45, i32 %46)
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %44
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @M_Offset_CDO_FIFO_Data, align 4
  %57 = call i32 @ni_writel(i32 %55, i32 %56)
  %58 = load i32, i32* @CDO_SW_Update_Bit, align 4
  %59 = load i32, i32* @M_Offset_CDIO_Command, align 4
  %60 = call i32 @ni_writel(i32 %58, i32 %59)
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @M_Offset_CDO_Mask_Enable, align 4
  %65 = call i32 @ni_writel(i32 %63, i32 %64)
  br label %71

66:                                               ; preds = %44
  %67 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %68 = call i32 @comedi_error(%struct.comedi_device* %67, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %83

71:                                               ; preds = %52
  %72 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %73 = call i32 @ni_request_cdo_mite_channel(%struct.comedi_device* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %83

78:                                               ; preds = %71
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %80 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32* @ni_cdo_inttrig, i32** %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %76, %66
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @ni_writel(i32, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @ni_request_cdo_mite_channel(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
