; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_set_thermal_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_set_thermal_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.set_ctrl_cfg_req = type { i32*, i32 }

@OPC_INB_SET_CONTROLLER_CONFIG = common dso_local global i32 0, align 4
@THERMAL_LOG_ENABLE = common dso_local global i32 0, align 4
@THERMAL_ENABLE = common dso_local global i32 0, align 4
@THERMAL_OP_CODE = common dso_local global i32 0, align 4
@LTEMPHIL = common dso_local global i32 0, align 4
@RTEMPHIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm80xx_set_thermal_config(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca %struct.set_ctrl_cfg_req, align 8
  %5 = alloca %struct.inbound_queue_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %9 = load i32, i32* @OPC_INB_SET_CONTROLLER_CONFIG, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @memset(%struct.set_ctrl_cfg_req* %4, i32 0, i32 16)
  %11 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %12 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %11, i32* %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %18 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %17, i32 0, i32 0
  %19 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %18, align 8
  %20 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %19, i64 0
  store %struct.inbound_queue_table* %20, %struct.inbound_queue_table** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %4, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* @THERMAL_LOG_ENABLE, align 4
  %25 = shl i32 %24, 9
  %26 = load i32, i32* @THERMAL_ENABLE, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %25, %27
  %29 = load i32, i32* @THERMAL_OP_CODE, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %4, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @LTEMPHIL, align 4
  %35 = shl i32 %34, 24
  %36 = load i32, i32* @RTEMPHIL, align 4
  %37 = shl i32 %36, 8
  %38 = or i32 %35, %37
  %39 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %4, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %43 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %42, %struct.inbound_queue_table* %43, i32 %44, %struct.set_ctrl_cfg_req* %4, i32 0)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %16, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.set_ctrl_cfg_req*, i32, i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.set_ctrl_cfg_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
