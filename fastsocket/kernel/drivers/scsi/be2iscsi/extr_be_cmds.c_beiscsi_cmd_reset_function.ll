; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_cmd_reset_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_cmd_reset_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_post_sgl_pages_req = type { i32 }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_FUNCTION_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_cmd_reset_function(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_ctrl_info*, align 8
  %4 = alloca %struct.be_mcc_wrb*, align 8
  %5 = alloca %struct.be_post_sgl_pages_req*, align 8
  %6 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %7 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %8 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %7, i32 0, i32 0
  store %struct.be_ctrl_info* %8, %struct.be_ctrl_info** %3, align 8
  %9 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %10 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %9, i32 0, i32 1
  %11 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %10)
  store %struct.be_mcc_wrb* %11, %struct.be_mcc_wrb** %4, align 8
  %12 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %13 = call %struct.be_post_sgl_pages_req* @embedded_payload(%struct.be_mcc_wrb* %12)
  store %struct.be_post_sgl_pages_req* %13, %struct.be_post_sgl_pages_req** %5, align 8
  %14 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %15 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %18 = call %struct.be_post_sgl_pages_req* @embedded_payload(%struct.be_mcc_wrb* %17)
  store %struct.be_post_sgl_pages_req* %18, %struct.be_post_sgl_pages_req** %5, align 8
  %19 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %20 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %19, i32 4, i32 1, i32 0)
  %21 = load %struct.be_post_sgl_pages_req*, %struct.be_post_sgl_pages_req** %5, align 8
  %22 = getelementptr inbounds %struct.be_post_sgl_pages_req, %struct.be_post_sgl_pages_req* %21, i32 0, i32 0
  %23 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %24 = load i32, i32* @OPCODE_COMMON_FUNCTION_RESET, align 4
  %25 = call i32 @be_cmd_hdr_prepare(i32* %22, i32 %23, i32 %24, i32 4)
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %27 = call i32 @be_mbox_notify_wait(%struct.beiscsi_hba* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %29 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local %struct.be_post_sgl_pages_req* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.beiscsi_hba*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
