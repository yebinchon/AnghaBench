; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_in2000.c_read_1_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_in2000.c_read_1_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IN2000_hostdata = type { i32 }

@WD_CONTROL = common dso_local global i32 0, align 4
@CTRL_IDI = common dso_local global i32 0, align 4
@CTRL_EDI = common dso_local global i32 0, align 4
@CTRL_POLLED = common dso_local global i32 0, align 4
@WD_CMD_TRANS_INFO = common dso_local global i32 0, align 4
@ASR_DBR = common dso_local global i32 0, align 4
@WD_DATA = common dso_local global i32 0, align 4
@ASR_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IN2000_hostdata*)* @read_1_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_1_byte(%struct.IN2000_hostdata* %0) #0 {
  %2 = alloca %struct.IN2000_hostdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.IN2000_hostdata* %0, %struct.IN2000_hostdata** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %2, align 8
  %6 = load i32, i32* @WD_CONTROL, align 4
  %7 = load i32, i32* @CTRL_IDI, align 4
  %8 = load i32, i32* @CTRL_EDI, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CTRL_POLLED, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @write_3393(%struct.IN2000_hostdata* %5, i32 %6, i32 %11)
  %13 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %2, align 8
  %14 = load i32, i32* @WD_CMD_TRANS_INFO, align 4
  %15 = or i32 %14, 128
  %16 = call i32 @write_3393_cmd(%struct.IN2000_hostdata* %13, i32 %15)
  br label %17

17:                                               ; preds = %28, %1
  %18 = call i32 (...) @READ_AUX_STAT()
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ASR_DBR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %2, align 8
  %25 = load i32, i32* @WD_DATA, align 4
  %26 = call i32 @read_3393(%struct.IN2000_hostdata* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %17
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ASR_INT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %17, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @write_3393(%struct.IN2000_hostdata*, i32, i32) #1

declare dso_local i32 @write_3393_cmd(%struct.IN2000_hostdata*, i32) #1

declare dso_local i32 @READ_AUX_STAT(...) #1

declare dso_local i32 @read_3393(%struct.IN2000_hostdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
