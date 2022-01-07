; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_hpc.c_hpc_check_cmd_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_hpc.c_hpc_check_cmd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }

@CMD_STATUS = common dso_local global i32 0, align 4
@SWITCH_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Switch opened!\0A\00", align 1
@INVALID_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid HPC command!\0A\00", align 1
@INVALID_SPEED_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid bus speed/mode!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @hpc_check_cmd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpc_check_cmd_status(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.controller*, %struct.controller** %2, align 8
  %6 = load i32, i32* @CMD_STATUS, align 4
  %7 = call i32 @shpc_readw(%struct.controller* %5, i32 %6)
  %8 = and i32 %7, 15
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 1
  switch i32 %10, label %24 [
    i32 0, label %11
    i32 1, label %12
    i32 2, label %16
    i32 4, label %20
  ]

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load i32, i32* @SWITCH_OPEN, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.controller*, %struct.controller** %2, align 8
  %15 = call i32 @ctrl_err(%struct.controller* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %26

16:                                               ; preds = %1
  %17 = load i32, i32* @INVALID_CMD, align 4
  store i32 %17, i32* %3, align 4
  %18 = load %struct.controller*, %struct.controller** %2, align 8
  %19 = call i32 @ctrl_err(%struct.controller* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @INVALID_SPEED_MODE, align 4
  store i32 %21, i32* %3, align 4
  %22 = load %struct.controller*, %struct.controller** %2, align 8
  %23 = call i32 @ctrl_err(%struct.controller* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %20, %16, %12, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @shpc_readw(%struct.controller*, i32) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
