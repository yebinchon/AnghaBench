; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_reopen_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_reopen_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_reopen_session_req = type { i32, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@BEISCSI_LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BG_%d : In bescsi_get_boot_target\0A\00", align 1
@CMD_SUBSYSTEM_ISCSI_INI = common dso_local global i32 0, align 4
@OPCODE_ISCSI_INI_DRIVER_REOPEN_ALL_SESSIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_reopen_session(%struct.beiscsi_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_ctrl_info*, align 8
  %9 = alloca %struct.be_mcc_wrb*, align 8
  %10 = alloca %struct.be_cmd_reopen_session_req*, align 8
  %11 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %13 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %12, i32 0, i32 0
  store %struct.be_ctrl_info* %13, %struct.be_ctrl_info** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %15 = load i32, i32* @KERN_INFO, align 4
  %16 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %17 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @beiscsi_log(%struct.beiscsi_hba* %14, i32 %15, i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %21 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %24 = call i32 @alloc_mcc_tag(%struct.beiscsi_hba* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %29 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %61

32:                                               ; preds = %3
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %34 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba* %33)
  store %struct.be_mcc_wrb* %34, %struct.be_mcc_wrb** %9, align 8
  %35 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %36 = call %struct.be_cmd_reopen_session_req* @embedded_payload(%struct.be_mcc_wrb* %35)
  store %struct.be_cmd_reopen_session_req* %36, %struct.be_cmd_reopen_session_req** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %39 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %43 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %42, i32 12, i32 1, i32 0)
  %44 = load %struct.be_cmd_reopen_session_req*, %struct.be_cmd_reopen_session_req** %10, align 8
  %45 = getelementptr inbounds %struct.be_cmd_reopen_session_req, %struct.be_cmd_reopen_session_req* %44, i32 0, i32 2
  %46 = load i32, i32* @CMD_SUBSYSTEM_ISCSI_INI, align 4
  %47 = load i32, i32* @OPCODE_ISCSI_INI_DRIVER_REOPEN_ALL_SESSIONS, align 4
  %48 = call i32 @be_cmd_hdr_prepare(i32* %45, i32 %46, i32 %47, i32 4)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.be_cmd_reopen_session_req*, %struct.be_cmd_reopen_session_req** %10, align 8
  %51 = getelementptr inbounds %struct.be_cmd_reopen_session_req, %struct.be_cmd_reopen_session_req* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.be_cmd_reopen_session_req*, %struct.be_cmd_reopen_session_req** %10, align 8
  %54 = getelementptr inbounds %struct.be_cmd_reopen_session_req, %struct.be_cmd_reopen_session_req* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %56 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %55)
  %57 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %58 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %32, %27
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @alloc_mcc_tag(%struct.beiscsi_hba*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba*) #1

declare dso_local %struct.be_cmd_reopen_session_req* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
