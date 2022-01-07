; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_get_all_if_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_get_all_if_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_get_all_if_id_req = type { i32*, i32 }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_NTWK_GET_ALL_IF_ID = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"BG_%d : Failed in mgmt_get_all_if_id\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_get_all_if_id(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_ctrl_info*, align 8
  %4 = alloca %struct.be_mcc_wrb*, align 8
  %5 = alloca %struct.be_cmd_get_all_if_id_req*, align 8
  %6 = alloca %struct.be_cmd_get_all_if_id_req*, align 8
  %7 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %8 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %9 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %8, i32 0, i32 1
  store %struct.be_ctrl_info* %9, %struct.be_ctrl_info** %3, align 8
  %10 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %11 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %10, i32 0, i32 1
  %12 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %11)
  store %struct.be_mcc_wrb* %12, %struct.be_mcc_wrb** %4, align 8
  %13 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %14 = call %struct.be_cmd_get_all_if_id_req* @embedded_payload(%struct.be_mcc_wrb* %13)
  store %struct.be_cmd_get_all_if_id_req* %14, %struct.be_cmd_get_all_if_id_req** %5, align 8
  %15 = load %struct.be_cmd_get_all_if_id_req*, %struct.be_cmd_get_all_if_id_req** %5, align 8
  store %struct.be_cmd_get_all_if_id_req* %15, %struct.be_cmd_get_all_if_id_req** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %17 = call i32 @memset(%struct.be_mcc_wrb* %16, i32 0, i32 4)
  %18 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %19 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %22 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %21, i32 16, i32 1, i32 0)
  %23 = load %struct.be_cmd_get_all_if_id_req*, %struct.be_cmd_get_all_if_id_req** %5, align 8
  %24 = getelementptr inbounds %struct.be_cmd_get_all_if_id_req, %struct.be_cmd_get_all_if_id_req* %23, i32 0, i32 1
  %25 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %26 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_GET_ALL_IF_ID, align 4
  %27 = call i32 @be_cmd_hdr_prepare(i32* %24, i32 %25, i32 %26, i32 16)
  %28 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %29 = call i32 @be_mbox_notify(%struct.be_ctrl_info* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %1
  %33 = load %struct.be_cmd_get_all_if_id_req*, %struct.be_cmd_get_all_if_id_req** %6, align 8
  %34 = getelementptr inbounds %struct.be_cmd_get_all_if_id_req, %struct.be_cmd_get_all_if_id_req* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %39 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %45

40:                                               ; preds = %1
  %41 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %42 = load i32, i32* @KERN_WARNING, align 4
  %43 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %44 = call i32 @beiscsi_log(%struct.beiscsi_hba* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %32
  %46 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %47 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local %struct.be_cmd_get_all_if_id_req* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @be_mbox_notify(%struct.be_ctrl_info*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
