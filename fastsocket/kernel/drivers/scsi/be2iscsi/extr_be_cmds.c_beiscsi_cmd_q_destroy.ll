; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_cmd_q_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_cmd_q_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32, i32, i32 }
%struct.be_queue_info = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_q_destroy = type { i32, i32 }
%struct.beiscsi_hba = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"BC_%d : In beiscsi_cmd_q_destroy queue_type : %d\0A\00", align 1
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_EQ_DESTROY = common dso_local global i32 0, align 4
@OPCODE_COMMON_CQ_DESTROY = common dso_local global i32 0, align 4
@OPCODE_COMMON_MCC_DESTROY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_WRBQ_DESTROY = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_DEFQ_DESTROY = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_CFG_REMOVE_SGL_PAGES = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %0, %struct.be_queue_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_ctrl_info*, align 8
  %6 = alloca %struct.be_queue_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_mcc_wrb*, align 8
  %9 = alloca %struct.be_cmd_req_q_destroy*, align 8
  %10 = alloca %struct.beiscsi_hba*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %5, align 8
  store %struct.be_queue_info* %1, %struct.be_queue_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %5, align 8
  %15 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %14, i32 0, i32 2
  %16 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %15)
  store %struct.be_mcc_wrb* %16, %struct.be_mcc_wrb** %8, align 8
  %17 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %18 = call %struct.be_cmd_req_q_destroy* @embedded_payload(%struct.be_mcc_wrb* %17)
  store %struct.be_cmd_req_q_destroy* %18, %struct.be_cmd_req_q_destroy** %9, align 8
  %19 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %5, align 8
  %20 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.beiscsi_hba* @pci_get_drvdata(i32 %21)
  store %struct.beiscsi_hba* %22, %struct.beiscsi_hba** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %10, align 8
  %24 = load i32, i32* @KERN_INFO, align 4
  %25 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @beiscsi_log(%struct.beiscsi_hba* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %5, align 8
  %29 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %32 = call i32 @memset(%struct.be_mcc_wrb* %31, i32 0, i32 4)
  %33 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %34 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %33, i32 8, i32 1, i32 0)
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %54 [
    i32 131, label %36
    i32 133, label %39
    i32 130, label %42
    i32 128, label %45
    i32 132, label %48
    i32 129, label %51
  ]

36:                                               ; preds = %3
  %37 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @OPCODE_COMMON_EQ_DESTROY, align 4
  store i32 %38, i32* %12, align 4
  br label %61

39:                                               ; preds = %3
  %40 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @OPCODE_COMMON_CQ_DESTROY, align 4
  store i32 %41, i32* %12, align 4
  br label %61

42:                                               ; preds = %3
  %43 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @OPCODE_COMMON_MCC_DESTROY, align 4
  store i32 %44, i32* %12, align 4
  br label %61

45:                                               ; preds = %3
  %46 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @OPCODE_COMMON_ISCSI_WRBQ_DESTROY, align 4
  store i32 %47, i32* %12, align 4
  br label %61

48:                                               ; preds = %3
  %49 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @OPCODE_COMMON_ISCSI_DEFQ_DESTROY, align 4
  store i32 %50, i32* %12, align 4
  br label %61

51:                                               ; preds = %3
  %52 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @OPCODE_COMMON_ISCSI_CFG_REMOVE_SGL_PAGES, align 4
  store i32 %53, i32* %12, align 4
  br label %61

54:                                               ; preds = %3
  %55 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %5, align 8
  %56 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = call i32 (...) @BUG()
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %83

61:                                               ; preds = %51, %48, %45, %42, %39, %36
  %62 = load %struct.be_cmd_req_q_destroy*, %struct.be_cmd_req_q_destroy** %9, align 8
  %63 = getelementptr inbounds %struct.be_cmd_req_q_destroy, %struct.be_cmd_req_q_destroy* %62, i32 0, i32 1
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @be_cmd_hdr_prepare(i32* %63, i32 %64, i32 %65, i32 8)
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 129
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.be_queue_info*, %struct.be_queue_info** %6, align 8
  %71 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cpu_to_le16(i32 %72)
  %74 = load %struct.be_cmd_req_q_destroy*, %struct.be_cmd_req_q_destroy** %9, align 8
  %75 = getelementptr inbounds %struct.be_cmd_req_q_destroy, %struct.be_cmd_req_q_destroy* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %69, %61
  %77 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %5, align 8
  %78 = call i32 @be_mbox_notify(%struct.be_ctrl_info* %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %5, align 8
  %80 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %76, %54
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local %struct.be_cmd_req_q_destroy* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local %struct.beiscsi_hba* @pci_get_drvdata(i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @be_mbox_notify(%struct.be_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
