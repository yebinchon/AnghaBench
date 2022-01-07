; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_cs.c_nsphw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_cs.c_nsphw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i32* }

@NSP_DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"in base=0x%x\00", align 1
@CLOCK_40M = common dso_local global i32 0, align 4
@FAST_20 = common dso_local global i32 0, align 4
@MODE_IO8 = common dso_local global i32 0, align 4
@IRQCONTROL = common dso_local global i32 0, align 4
@IRQCONTROL_ALLMASK = common dso_local global i32 0, align 4
@IFSELECT = common dso_local global i32 0, align 4
@IF_IFSEL = common dso_local global i32 0, align 4
@SCSIIRQMODE = common dso_local global i32 0, align 4
@TRANSFERMODE = common dso_local global i32 0, align 4
@CLOCKDIV = common dso_local global i32 0, align 4
@PARITYCTRL = common dso_local global i32 0, align 4
@POINTERCLR = common dso_local global i32 0, align 4
@POINTER_CLEAR = common dso_local global i32 0, align 4
@ACK_COUNTER_CLEAR = common dso_local global i32 0, align 4
@REQ_COUNTER_CLEAR = common dso_local global i32 0, align 4
@HOST_COUNTER_CLEAR = common dso_local global i32 0, align 4
@IF_REGSEL = common dso_local global i32 0, align 4
@TERMPWRCTRL = common dso_local global i32 0, align 4
@OTHERCONTROL = common dso_local global i32 0, align 4
@TPWR_SENSE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"terminator power on\00", align 1
@POWER_ON = common dso_local global i32 0, align 4
@TIMERCOUNT = common dso_local global i32 0, align 4
@SYNCREG = common dso_local global i32 0, align 4
@ACKWIDTH = common dso_local global i32 0, align 4
@SCSI_PHASE_CHANGE_EI = common dso_local global i32 0, align 4
@RESELECT_EI = common dso_local global i32 0, align 4
@SCSI_RESET_IRQ_EI = common dso_local global i32 0, align 4
@IRQCONTROL_ALLCLEAR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @nsphw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsphw_init(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @nsp_dbg(i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @CLOCK_40M, align 4
  %11 = load i32, i32* @FAST_20, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @MODE_IO8, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = call i32 @nsphw_init_sync(%struct.TYPE_5__* %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @IRQCONTROL, align 4
  %26 = load i32, i32* @IRQCONTROL_ALLMASK, align 4
  %27 = call i32 @nsp_write(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @IFSELECT, align 4
  %30 = load i32, i32* @IF_IFSEL, align 4
  %31 = call i32 @nsp_write(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SCSIIRQMODE, align 4
  %34 = call i32 @nsp_index_write(i32 %32, i32 %33, i32 0)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @TRANSFERMODE, align 4
  %37 = load i32, i32* @MODE_IO8, align 4
  %38 = call i32 @nsp_index_write(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @CLOCKDIV, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nsp_index_write(i32 %39, i32 %40, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @PARITYCTRL, align 4
  %47 = call i32 @nsp_index_write(i32 %45, i32 %46, i32 0)
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @POINTERCLR, align 4
  %50 = load i32, i32* @POINTER_CLEAR, align 4
  %51 = load i32, i32* @ACK_COUNTER_CLEAR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @REQ_COUNTER_CLEAR, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @HOST_COUNTER_CLEAR, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @nsp_index_write(i32 %48, i32 %49, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @IFSELECT, align 4
  %60 = load i32, i32* @IF_REGSEL, align 4
  %61 = call i32 @nsp_write(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @TERMPWRCTRL, align 4
  %64 = call i32 @nsp_index_write(i32 %62, i32 %63, i32 0)
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @OTHERCONTROL, align 4
  %67 = call i32 @nsp_index_read(i32 %65, i32 %66)
  %68 = load i32, i32* @TPWR_SENSE, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %1
  %72 = load i32, i32* @KERN_INFO, align 4
  %73 = call i32 @nsp_msg(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @TERMPWRCTRL, align 4
  %76 = load i32, i32* @POWER_ON, align 4
  %77 = call i32 @nsp_index_write(i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %1
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @TIMERCOUNT, align 4
  %81 = call i32 @nsp_index_write(i32 %79, i32 %80, i32 0)
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @TIMERCOUNT, align 4
  %84 = call i32 @nsp_index_write(i32 %82, i32 %83, i32 0)
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @SYNCREG, align 4
  %87 = call i32 @nsp_index_write(i32 %85, i32 %86, i32 0)
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @ACKWIDTH, align 4
  %90 = call i32 @nsp_index_write(i32 %88, i32 %89, i32 0)
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @SCSIIRQMODE, align 4
  %93 = load i32, i32* @SCSI_PHASE_CHANGE_EI, align 4
  %94 = load i32, i32* @RESELECT_EI, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SCSI_RESET_IRQ_EI, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @nsp_index_write(i32 %91, i32 %92, i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @IRQCONTROL, align 4
  %101 = load i32, i32* @IRQCONTROL_ALLCLEAR, align 4
  %102 = call i32 @nsp_write(i32 %99, i32 %100, i32 %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %104 = load i32, i32* @FALSE, align 4
  %105 = call i32 @nsp_setup_fifo(%struct.TYPE_5__* %103, i32 %104)
  %106 = load i32, i32* @TRUE, align 4
  ret i32 %106
}

declare dso_local i32 @nsp_dbg(i32, i8*, i32) #1

declare dso_local i32 @nsphw_init_sync(%struct.TYPE_5__*) #1

declare dso_local i32 @nsp_write(i32, i32, i32) #1

declare dso_local i32 @nsp_index_write(i32, i32, i32) #1

declare dso_local i32 @nsp_index_read(i32, i32) #1

declare dso_local i32 @nsp_msg(i32, i8*) #1

declare dso_local i32 @nsp_setup_fifo(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
