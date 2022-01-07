; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_upload_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_upload_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.tcp_upload_params_in = type { i16, i8, i32 }

@CMD_COMMON_TCP_UPLOAD = common dso_local global i32 0, align 4
@OPCODE_COMMON_TCP_UPLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_upload_connection(%struct.beiscsi_hba* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_ctrl_info*, align 8
  %9 = alloca %struct.be_mcc_wrb*, align 8
  %10 = alloca %struct.tcp_upload_params_in*, align 8
  %11 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %13 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %12, i32 0, i32 0
  store %struct.be_ctrl_info* %13, %struct.be_ctrl_info** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %15 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %18 = call i32 @alloc_mcc_tag(%struct.beiscsi_hba* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %23 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %56

26:                                               ; preds = %3
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %28 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba* %27)
  store %struct.be_mcc_wrb* %28, %struct.be_mcc_wrb** %9, align 8
  %29 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %30 = call %struct.tcp_upload_params_in* @embedded_payload(%struct.be_mcc_wrb* %29)
  store %struct.tcp_upload_params_in* %30, %struct.tcp_upload_params_in** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %33 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %37 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %36, i32 8, i32 1, i32 0)
  %38 = load %struct.tcp_upload_params_in*, %struct.tcp_upload_params_in** %10, align 8
  %39 = getelementptr inbounds %struct.tcp_upload_params_in, %struct.tcp_upload_params_in* %38, i32 0, i32 2
  %40 = load i32, i32* @CMD_COMMON_TCP_UPLOAD, align 4
  %41 = load i32, i32* @OPCODE_COMMON_TCP_UPLOAD, align 4
  %42 = call i32 @be_cmd_hdr_prepare(i32* %39, i32 %40, i32 %41, i32 8)
  %43 = load i16, i16* %6, align 2
  %44 = load %struct.tcp_upload_params_in*, %struct.tcp_upload_params_in** %10, align 8
  %45 = getelementptr inbounds %struct.tcp_upload_params_in, %struct.tcp_upload_params_in* %44, i32 0, i32 0
  store i16 %43, i16* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = trunc i32 %46 to i8
  %48 = load %struct.tcp_upload_params_in*, %struct.tcp_upload_params_in** %10, align 8
  %49 = getelementptr inbounds %struct.tcp_upload_params_in, %struct.tcp_upload_params_in* %48, i32 0, i32 1
  store i8 %47, i8* %49, align 2
  %50 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %51 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %50)
  %52 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %53 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %26, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @alloc_mcc_tag(%struct.beiscsi_hba*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba*) #1

declare dso_local %struct.tcp_upload_params_in* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
