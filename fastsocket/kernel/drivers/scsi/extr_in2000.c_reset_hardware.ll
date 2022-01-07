; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_in2000.c_reset_hardware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_in2000.c_reset_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i64 }
%struct.IN2000_hostdata = type { i32 }

@IO_LED_ON = common dso_local global i32 0, align 4
@RESET_CARD_AND_BUS = common dso_local global i32 0, align 4
@IO_CARD_RESET = common dso_local global i32 0, align 4
@IO_HARDWARE = common dso_local global i32 0, align 4
@WD_SCSI_STATUS = common dso_local global i32 0, align 4
@WD_OWN_ID = common dso_local global i32 0, align 4
@OWNID_EAF = common dso_local global i32 0, align 4
@OWNID_RAF = common dso_local global i32 0, align 4
@OWNID_FS_8 = common dso_local global i32 0, align 4
@WD_CONTROL = common dso_local global i32 0, align 4
@CTRL_IDI = common dso_local global i32 0, align 4
@CTRL_EDI = common dso_local global i32 0, align 4
@CTRL_POLLED = common dso_local global i32 0, align 4
@WD_SYNCHRONOUS_TRANSFER = common dso_local global i32 0, align 4
@DEFAULT_SX_OFF = common dso_local global i32 0, align 4
@IO_FIFO_WRITE = common dso_local global i32 0, align 4
@IO_FIFO_READ = common dso_local global i32 0, align 4
@WD_COMMAND = common dso_local global i32 0, align 4
@WD_CMD_RESET = common dso_local global i32 0, align 4
@ASR_INT = common dso_local global i32 0, align 4
@WD_QUEUE_TAG = common dso_local global i32 0, align 4
@B_FLAG = common dso_local global i32 0, align 4
@WD_TIMEOUT_PERIOD = common dso_local global i32 0, align 4
@TIMEOUT_PERIOD_VALUE = common dso_local global i32 0, align 4
@IO_LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32)* @reset_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_hardware(%struct.Scsi_Host* %0, i32 %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.IN2000_hostdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.IN2000_hostdata*
  store %struct.IN2000_hostdata* %11, %struct.IN2000_hostdata** %5, align 8
  %12 = load i32, i32* @IO_LED_ON, align 4
  %13 = call i32 @write1_io(i32 0, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @RESET_CARD_AND_BUS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @IO_CARD_RESET, align 4
  %19 = call i32 @write1_io(i32 0, i32 %18)
  %20 = load i32, i32* @IO_HARDWARE, align 4
  %21 = call i32 @read1_io(i32 %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %24 = load i32, i32* @WD_SCSI_STATUS, align 4
  %25 = call i32 @read_3393(%struct.IN2000_hostdata* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %27 = load i32, i32* @WD_OWN_ID, align 4
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @OWNID_EAF, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @OWNID_RAF, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @OWNID_FS_8, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @write_3393(%struct.IN2000_hostdata* %26, i32 %27, i32 %36)
  %38 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %39 = load i32, i32* @WD_CONTROL, align 4
  %40 = load i32, i32* @CTRL_IDI, align 4
  %41 = load i32, i32* @CTRL_EDI, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CTRL_POLLED, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @write_3393(%struct.IN2000_hostdata* %38, i32 %39, i32 %44)
  %46 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %47 = load i32, i32* @WD_SYNCHRONOUS_TRANSFER, align 4
  %48 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %49 = getelementptr inbounds %struct.IN2000_hostdata, %struct.IN2000_hostdata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 4
  %52 = load i32, i32* @DEFAULT_SX_OFF, align 4
  %53 = call i32 @calc_sync_xfer(i32 %51, i32 %52)
  %54 = call i32 @write_3393(%struct.IN2000_hostdata* %46, i32 %47, i32 %53)
  %55 = load i32, i32* @IO_FIFO_WRITE, align 4
  %56 = call i32 @write1_io(i32 0, i32 %55)
  %57 = load i32, i32* @IO_FIFO_READ, align 4
  %58 = call i32 @write1_io(i32 0, i32 %57)
  %59 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %60 = load i32, i32* @WD_COMMAND, align 4
  %61 = load i32, i32* @WD_CMD_RESET, align 4
  %62 = call i32 @write_3393(%struct.IN2000_hostdata* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %69, %22
  %64 = call i32 (...) @READ_AUX_STAT()
  %65 = load i32, i32* @ASR_INT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 (...) @cpu_relax()
  br label %63

71:                                               ; preds = %63
  %72 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %73 = load i32, i32* @WD_SCSI_STATUS, align 4
  %74 = call i32 @read_3393(%struct.IN2000_hostdata* %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %76 = load i32, i32* @WD_QUEUE_TAG, align 4
  %77 = call i32 @write_3393(%struct.IN2000_hostdata* %75, i32 %76, i32 165)
  %78 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %79 = load i32, i32* @WD_QUEUE_TAG, align 4
  %80 = call i32 @read_3393(%struct.IN2000_hostdata* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 165
  br i1 %82, label %83, label %90

83:                                               ; preds = %71
  %84 = load i32, i32* @B_FLAG, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %88 = load i32, i32* @WD_QUEUE_TAG, align 4
  %89 = call i32 @write_3393(%struct.IN2000_hostdata* %87, i32 %88, i32 0)
  br label %90

90:                                               ; preds = %83, %71
  %91 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %92 = load i32, i32* @WD_TIMEOUT_PERIOD, align 4
  %93 = load i32, i32* @TIMEOUT_PERIOD_VALUE, align 4
  %94 = call i32 @write_3393(%struct.IN2000_hostdata* %91, i32 %92, i32 %93)
  %95 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %96 = load i32, i32* @WD_CONTROL, align 4
  %97 = load i32, i32* @CTRL_IDI, align 4
  %98 = load i32, i32* @CTRL_EDI, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @CTRL_POLLED, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @write_3393(%struct.IN2000_hostdata* %95, i32 %96, i32 %101)
  %103 = load i32, i32* @IO_LED_OFF, align 4
  %104 = call i32 @write1_io(i32 0, i32 %103)
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @write1_io(i32, i32) #1

declare dso_local i32 @read1_io(i32) #1

declare dso_local i32 @read_3393(%struct.IN2000_hostdata*, i32) #1

declare dso_local i32 @write_3393(%struct.IN2000_hostdata*, i32, i32) #1

declare dso_local i32 @calc_sync_xfer(i32, i32) #1

declare dso_local i32 @READ_AUX_STAT(...) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
