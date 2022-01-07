; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_do_bus_device_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_do_bus_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.scsi_cmnd* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.message = type { i32 }

@PHASE_SELECTION = common dso_local global i32 0, align 4
@fasdma_none = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"sending bus device reset\00", align 1
@BUS_DEVICE_RESET = common dso_local global i32 0, align 4
@CMD_NOP = common dso_local global i32 0, align 4
@CMD_WITHDMA = common dso_local global i32 0, align 4
@CMD_FLUSHFIFO = common dso_local global i32 0, align 4
@REG_SDID = common dso_local global i32 0, align 4
@REG_STIM = common dso_local global i32 0, align 4
@REG_FF = common dso_local global i32 0, align 4
@CMD_SELECTATNSTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.scsi_cmnd*)* @fas216_do_bus_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fas216_do_bus_device_reset(%struct.TYPE_16__* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.message*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = load i32, i32* @PHASE_SELECTION, align 4
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  store i32 %6, i32* %9, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  store %struct.scsi_cmnd* %16, %struct.scsi_cmnd** %18, align 8
  %19 = load i32, i32* @fasdma_none, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = load i32, i32* @LOG_ERROR, align 4
  %25 = call i32 @fas216_log(%struct.TYPE_16__* %23, i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = call i32 @msgqueue_flush(i32* %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* @BUS_DEVICE_RESET, align 4
  %34 = call i32 @msgqueue_addmsg(i32* %32, i32 1, i32 %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = call i32 @fas216_set_stc(%struct.TYPE_16__* %35, i32 0)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = load i32, i32* @CMD_NOP, align 4
  %39 = load i32, i32* @CMD_WITHDMA, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @fas216_cmd(%struct.TYPE_16__* %37, i32 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = load i32, i32* @CMD_FLUSHFIFO, align 4
  %44 = call i32 @fas216_cmd(%struct.TYPE_16__* %42, i32 %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = load i32, i32* @REG_SDID, align 4
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @BUSID(i32 %51)
  %53 = call i32 @fas216_writeb(%struct.TYPE_16__* %45, i32 %46, i32 %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = load i32, i32* @REG_STIM, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fas216_writeb(%struct.TYPE_16__* %54, i32 %55, i32 %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @fas216_set_sync(%struct.TYPE_16__* %61, i32 %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = call %struct.message* @msgqueue_getmsg(i32* %70, i32 0)
  store %struct.message* %71, %struct.message** %5, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = load i32, i32* @REG_FF, align 4
  %74 = load i32, i32* @BUS_DEVICE_RESET, align 4
  %75 = call i32 @fas216_writeb(%struct.TYPE_16__* %72, i32 %73, i32 %74)
  %76 = load %struct.message*, %struct.message** %5, align 8
  %77 = getelementptr inbounds %struct.message, %struct.message* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = load i32, i32* @CMD_SELECTATNSTOP, align 4
  %80 = call i32 @fas216_cmd(%struct.TYPE_16__* %78, i32 %79)
  ret void
}

declare dso_local i32 @fas216_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @msgqueue_flush(i32*) #1

declare dso_local i32 @msgqueue_addmsg(i32*, i32, i32) #1

declare dso_local i32 @fas216_set_stc(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @fas216_cmd(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @fas216_writeb(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @BUSID(i32) #1

declare dso_local i32 @fas216_set_sync(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.message* @msgqueue_getmsg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
