; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_invalidate_icds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_invalidate_icds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32 }
%struct.invalidate_command_table = type { i32, i32 }
%struct.be_dma_mem = type { i32, i32, %struct.invalidate_commands_params_in* }
%struct.invalidate_commands_params_in = type { i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_sge = type { i8*, i8*, i8* }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_ERROR_RECOVERY_INVALIDATE_COMMANDS = common dso_local global i32 0, align 4
@CMD_ISCSI_COMMAND_INVALIDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_invalidate_icds(%struct.beiscsi_hba* %0, %struct.invalidate_command_table* %1, i32 %2, i32 %3, %struct.be_dma_mem* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.beiscsi_hba*, align 8
  %8 = alloca %struct.invalidate_command_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.be_dma_mem*, align 8
  %12 = alloca %struct.be_ctrl_info*, align 8
  %13 = alloca %struct.be_mcc_wrb*, align 8
  %14 = alloca %struct.be_sge*, align 8
  %15 = alloca %struct.invalidate_commands_params_in*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %7, align 8
  store %struct.invalidate_command_table* %1, %struct.invalidate_command_table** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.be_dma_mem* %4, %struct.be_dma_mem** %11, align 8
  %18 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %19 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %18, i32 0, i32 0
  store %struct.be_ctrl_info* %19, %struct.be_ctrl_info** %12, align 8
  store i32 0, i32* %17, align 4
  %20 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %12, align 8
  %21 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %24 = call i32 @alloc_mcc_tag(%struct.beiscsi_hba* %23)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %5
  %28 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %12, align 8
  %29 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load i32, i32* %17, align 4
  store i32 %31, i32* %6, align 4
  br label %119

32:                                               ; preds = %5
  %33 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %34 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %33, i32 0, i32 2
  %35 = load %struct.invalidate_commands_params_in*, %struct.invalidate_commands_params_in** %34, align 8
  store %struct.invalidate_commands_params_in* %35, %struct.invalidate_commands_params_in** %15, align 8
  %36 = load %struct.invalidate_commands_params_in*, %struct.invalidate_commands_params_in** %15, align 8
  %37 = call i32 @memset(%struct.invalidate_commands_params_in* %36, i32 0, i32 40)
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %39 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba* %38)
  store %struct.be_mcc_wrb* %39, %struct.be_mcc_wrb** %13, align 8
  %40 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %41 = call %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb* %40)
  store %struct.be_sge* %41, %struct.be_sge** %14, align 8
  %42 = load i32, i32* %17, align 4
  %43 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %44 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %13, align 8
  %48 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %47, i32 40, i32 0, i32 1)
  %49 = load %struct.invalidate_commands_params_in*, %struct.invalidate_commands_params_in** %15, align 8
  %50 = getelementptr inbounds %struct.invalidate_commands_params_in, %struct.invalidate_commands_params_in* %49, i32 0, i32 4
  %51 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %52 = load i32, i32* @OPCODE_COMMON_ISCSI_ERROR_RECOVERY_INVALIDATE_COMMANDS, align 4
  %53 = call i32 @be_cmd_hdr_prepare(i32* %50, i32 %51, i32 %52, i32 40)
  %54 = load %struct.invalidate_commands_params_in*, %struct.invalidate_commands_params_in** %15, align 8
  %55 = getelementptr inbounds %struct.invalidate_commands_params_in, %struct.invalidate_commands_params_in* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @CMD_ISCSI_COMMAND_INVALIDATE, align 4
  %57 = load %struct.invalidate_commands_params_in*, %struct.invalidate_commands_params_in** %15, align 8
  %58 = getelementptr inbounds %struct.invalidate_commands_params_in, %struct.invalidate_commands_params_in* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %16, align 4
  br label %59

59:                                               ; preds = %90, %32
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %59
  %64 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %8, align 8
  %65 = getelementptr inbounds %struct.invalidate_command_table, %struct.invalidate_command_table* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.invalidate_commands_params_in*, %struct.invalidate_commands_params_in** %15, align 8
  %68 = getelementptr inbounds %struct.invalidate_commands_params_in, %struct.invalidate_commands_params_in* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %66, i32* %73, align 4
  %74 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %8, align 8
  %75 = getelementptr inbounds %struct.invalidate_command_table, %struct.invalidate_command_table* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.invalidate_commands_params_in*, %struct.invalidate_commands_params_in** %15, align 8
  %78 = getelementptr inbounds %struct.invalidate_commands_params_in, %struct.invalidate_commands_params_in* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %16, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 4
  %84 = load %struct.invalidate_commands_params_in*, %struct.invalidate_commands_params_in** %15, align 8
  %85 = getelementptr inbounds %struct.invalidate_commands_params_in, %struct.invalidate_commands_params_in* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %8, align 8
  %89 = getelementptr inbounds %struct.invalidate_command_table, %struct.invalidate_command_table* %88, i32 1
  store %struct.invalidate_command_table* %89, %struct.invalidate_command_table** %8, align 8
  br label %90

90:                                               ; preds = %63
  %91 = load i32, i32* %16, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %16, align 4
  br label %59

93:                                               ; preds = %59
  %94 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %95 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @upper_32_bits(i32 %96)
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = load %struct.be_sge*, %struct.be_sge** %14, align 8
  %100 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %102 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.be_sge*, %struct.be_sge** %14, align 8
  %106 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %108 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @cpu_to_le32(i32 %109)
  %111 = load %struct.be_sge*, %struct.be_sge** %14, align 8
  %112 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %114 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %113)
  %115 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %12, align 8
  %116 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %93, %27
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @alloc_mcc_tag(%struct.beiscsi_hba*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memset(%struct.invalidate_commands_params_in*, i32, i32) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba*) #1

declare dso_local %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
