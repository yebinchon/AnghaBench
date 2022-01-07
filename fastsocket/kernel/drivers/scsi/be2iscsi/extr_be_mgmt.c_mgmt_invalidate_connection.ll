; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_invalidate_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_invalidate_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32 }
%struct.beiscsi_endpoint = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.iscsi_invalidate_connection_params_in = type { i16, i16, i32, i32, i32 }

@CMD_SUBSYSTEM_ISCSI_INI = common dso_local global i32 0, align 4
@OPCODE_ISCSI_INI_DRIVER_INVALIDATE_CONNECTION = common dso_local global i32 0, align 4
@CMD_ISCSI_CONNECTION_ISSUE_TCP_RST = common dso_local global i32 0, align 4
@CMD_ISCSI_CONNECTION_INVALIDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_invalidate_connection(%struct.beiscsi_hba* %0, %struct.beiscsi_endpoint* %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.beiscsi_hba*, align 8
  %8 = alloca %struct.beiscsi_endpoint*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca %struct.be_ctrl_info*, align 8
  %13 = alloca %struct.be_mcc_wrb*, align 8
  %14 = alloca %struct.iscsi_invalidate_connection_params_in*, align 8
  %15 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %7, align 8
  store %struct.beiscsi_endpoint* %1, %struct.beiscsi_endpoint** %8, align 8
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store i16 %4, i16* %11, align 2
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 0
  store %struct.be_ctrl_info* %17, %struct.be_ctrl_info** %12, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %12, align 8
  %19 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %22 = call i32 @alloc_mcc_tag(%struct.beiscsi_hba* %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %5
  %26 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %12, align 8
  %27 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %6, align 4
  br label %75

30:                                               ; preds = %5
  %31 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %32 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba* %31)
  store %struct.be_mcc_wrb* %32, %struct.be_mcc_wrb** %13, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %35 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %39 = call %struct.iscsi_invalidate_connection_params_in* @embedded_payload(%struct.be_mcc_wrb* %38)
  store %struct.iscsi_invalidate_connection_params_in* %39, %struct.iscsi_invalidate_connection_params_in** %14, align 8
  %40 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %41 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %40, i32 16, i32 1, i32 0)
  %42 = load %struct.iscsi_invalidate_connection_params_in*, %struct.iscsi_invalidate_connection_params_in** %14, align 8
  %43 = getelementptr inbounds %struct.iscsi_invalidate_connection_params_in, %struct.iscsi_invalidate_connection_params_in* %42, i32 0, i32 4
  %44 = load i32, i32* @CMD_SUBSYSTEM_ISCSI_INI, align 4
  %45 = load i32, i32* @OPCODE_ISCSI_INI_DRIVER_INVALIDATE_CONNECTION, align 4
  %46 = call i32 @be_cmd_hdr_prepare(i32* %43, i32 %44, i32 %45, i32 16)
  %47 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %48 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.iscsi_invalidate_connection_params_in*, %struct.iscsi_invalidate_connection_params_in** %14, align 8
  %51 = getelementptr inbounds %struct.iscsi_invalidate_connection_params_in, %struct.iscsi_invalidate_connection_params_in* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i16, i16* %9, align 2
  %53 = load %struct.iscsi_invalidate_connection_params_in*, %struct.iscsi_invalidate_connection_params_in** %14, align 8
  %54 = getelementptr inbounds %struct.iscsi_invalidate_connection_params_in, %struct.iscsi_invalidate_connection_params_in* %53, i32 0, i32 0
  store i16 %52, i16* %54, align 4
  %55 = load i16, i16* %10, align 2
  %56 = icmp ne i16 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %30
  %58 = load i32, i32* @CMD_ISCSI_CONNECTION_ISSUE_TCP_RST, align 4
  %59 = load %struct.iscsi_invalidate_connection_params_in*, %struct.iscsi_invalidate_connection_params_in** %14, align 8
  %60 = getelementptr inbounds %struct.iscsi_invalidate_connection_params_in, %struct.iscsi_invalidate_connection_params_in* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %65

61:                                               ; preds = %30
  %62 = load i32, i32* @CMD_ISCSI_CONNECTION_INVALIDATE, align 4
  %63 = load %struct.iscsi_invalidate_connection_params_in*, %struct.iscsi_invalidate_connection_params_in** %14, align 8
  %64 = getelementptr inbounds %struct.iscsi_invalidate_connection_params_in, %struct.iscsi_invalidate_connection_params_in* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i16, i16* %11, align 2
  %67 = load %struct.iscsi_invalidate_connection_params_in*, %struct.iscsi_invalidate_connection_params_in** %14, align 8
  %68 = getelementptr inbounds %struct.iscsi_invalidate_connection_params_in, %struct.iscsi_invalidate_connection_params_in* %67, i32 0, i32 1
  store i16 %66, i16* %68, align 2
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %70 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %69)
  %71 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %12, align 8
  %72 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %65, %25
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @alloc_mcc_tag(%struct.beiscsi_hba*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba*) #1

declare dso_local %struct.iscsi_invalidate_connection_params_in* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
