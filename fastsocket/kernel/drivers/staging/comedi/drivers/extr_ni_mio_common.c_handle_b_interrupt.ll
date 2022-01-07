; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_handle_b_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_handle_b_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.comedi_device*, i32)*, i32 }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NI_AO_SUBDEV = common dso_local global i32 0, align 4
@AO_Overrun_St = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [62 x i8] c"ni_mio_common: AO FIFO underrun status=0x%04x status2=0x%04x\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@AO_Status_2_Register = common dso_local global i32 0, align 4
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@AO_BC_TC_St = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [54 x i8] c"ni_mio_common: AO BC_TC status=0x%04x status2=0x%04x\0A\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@AO_FIFO_Request_St = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [35 x i8] c"ni_mio_common: AO buffer underrun\0A\00", align 1
@Interrupt_B_Enable_Register = common dso_local global i32 0, align 4
@AO_FIFO_Interrupt_Enable = common dso_local global i32 0, align 4
@AO_Error_Interrupt_Enable = common dso_local global i32 0, align 4
@CHSR_DONE = common dso_local global i32 0, align 4
@CHSR_DRDY = common dso_local global i32 0, align 4
@CHSR_DRQ0 = common dso_local global i32 0, align 4
@CHSR_DRQ1 = common dso_local global i32 0, align 4
@CHSR_ERROR = common dso_local global i32 0, align 4
@CHSR_INT = common dso_local global i32 0, align 4
@CHSR_LINKC = common dso_local global i32 0, align 4
@CHSR_LxERR_mask = common dso_local global i32 0, align 4
@CHSR_MRDY = common dso_local global i32 0, align 4
@CHSR_SABORT = common dso_local global i32 0, align 4
@CHSR_XFERR = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i16, i32)* @handle_b_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_b_interrupt(%struct.comedi_device* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %12 = load i32, i32* @NI_AO_SUBDEV, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i64 %13
  store %struct.comedi_subdevice* %14, %struct.comedi_subdevice** %7, align 8
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp eq i32 %16, 65535
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %99

19:                                               ; preds = %3
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @AO_Overrun_St, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i32
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.comedi_device*, i32)*, i32 (%struct.comedi_device*, i32)** %30, align 8
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = load i32, i32* @AO_Status_2_Register, align 4
  %34 = call i32 %31(%struct.comedi_device* %32, i32 %33)
  %35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %34)
  %36 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %36
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %26, %19
  %44 = load i16, i16* %5, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* @AO_BC_TC_St, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load i16, i16* %5, align 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.comedi_device*, i32)*, i32 (%struct.comedi_device*, i32)** %53, align 8
  %55 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %56 = load i32, i32* @AO_Status_2_Register, align 4
  %57 = call i32 %54(%struct.comedi_device* %55, i32 %56)
  %58 = call i32 @MDPRINTK(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %51, i32 %57)
  %59 = load i32, i32* @COMEDI_CB_EOA, align 4
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %59
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %50, %43
  %67 = load i16, i16* %5, align 2
  %68 = zext i16 %67 to i32
  %69 = load i16, i16* @AO_FIFO_Request_St, align 2
  %70 = zext i16 %69 to i32
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %66
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %76 = call i32 @ni_ao_fifo_half_empty(%struct.comedi_device* %74, %struct.comedi_subdevice* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %73
  %80 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %82 = load i32, i32* @Interrupt_B_Enable_Register, align 4
  %83 = load i32, i32* @AO_FIFO_Interrupt_Enable, align 4
  %84 = load i32, i32* @AO_Error_Interrupt_Enable, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @ni_set_bits(%struct.comedi_device* %81, i32 %82, i32 %85, i32 0)
  %87 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %87
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %79, %73
  br label %95

95:                                               ; preds = %94, %66
  %96 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %97 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %98 = call i32 @ni_event(%struct.comedi_device* %96, %struct.comedi_subdevice* %97)
  br label %99

99:                                               ; preds = %95, %18
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @MDPRINTK(i8*, i16 zeroext, i32) #1

declare dso_local i32 @ni_ao_fifo_half_empty(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @ni_set_bits(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @ni_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
