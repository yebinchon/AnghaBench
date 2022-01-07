; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_get_gateway.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_get_gateway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_def_gateway_resp = type { i32 }
%struct.be_cmd_get_def_gateway_req = type { i32 }
%struct.be_dma_mem = type { %struct.be_cmd_get_def_gateway_req* }

@OPCODE_COMMON_ISCSI_NTWK_GET_DEFAULT_GATEWAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_get_gateway(%struct.beiscsi_hba* %0, i32 %1, %struct.be_cmd_get_def_gateway_resp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_cmd_get_def_gateway_resp*, align 8
  %8 = alloca %struct.be_cmd_get_def_gateway_req*, align 8
  %9 = alloca %struct.be_dma_mem, align 8
  %10 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.be_cmd_get_def_gateway_resp* %2, %struct.be_cmd_get_def_gateway_resp** %7, align 8
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %12 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_GET_DEFAULT_GATEWAY, align 4
  %13 = call i32 @mgmt_alloc_cmd_data(%struct.beiscsi_hba* %11, %struct.be_dma_mem* %9, i32 %12, i32 4)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %27

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %20 = load %struct.be_cmd_get_def_gateway_req*, %struct.be_cmd_get_def_gateway_req** %19, align 8
  store %struct.be_cmd_get_def_gateway_req* %20, %struct.be_cmd_get_def_gateway_req** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.be_cmd_get_def_gateway_req*, %struct.be_cmd_get_def_gateway_req** %8, align 8
  %23 = getelementptr inbounds %struct.be_cmd_get_def_gateway_req, %struct.be_cmd_get_def_gateway_req* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %25 = load %struct.be_cmd_get_def_gateway_resp*, %struct.be_cmd_get_def_gateway_resp** %7, align 8
  %26 = call i32 @mgmt_exec_nonemb_cmd(%struct.beiscsi_hba* %24, %struct.be_dma_mem* %9, %struct.be_cmd_get_def_gateway_resp* %25, i32 4)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %18, %16
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @mgmt_alloc_cmd_data(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32) #1

declare dso_local i32 @mgmt_exec_nonemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, %struct.be_cmd_get_def_gateway_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
