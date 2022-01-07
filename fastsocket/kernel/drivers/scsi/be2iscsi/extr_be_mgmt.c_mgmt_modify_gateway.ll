; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_modify_gateway.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_modify_gateway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_set_def_gateway_req = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.be_dma_mem = type { %struct.be_cmd_set_def_gateway_req* }

@OPCODE_COMMON_ISCSI_NTWK_MODIFY_DEFAULT_GATEWAY = common dso_local global i32 0, align 4
@BE2_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, i32*, i32, i32)* @mgmt_modify_gateway to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgmt_modify_gateway(%struct.beiscsi_hba* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.be_cmd_set_def_gateway_req*, align 8
  %11 = alloca %struct.be_dma_mem, align 8
  %12 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %14 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_MODIFY_DEFAULT_GATEWAY, align 4
  %15 = call i32 @mgmt_alloc_cmd_data(%struct.beiscsi_hba* %13, %struct.be_dma_mem* %11, i32 %14, i32 12)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %5, align 4
  br label %39

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 0
  %22 = load %struct.be_cmd_set_def_gateway_req*, %struct.be_cmd_set_def_gateway_req** %21, align 8
  store %struct.be_cmd_set_def_gateway_req* %22, %struct.be_cmd_set_def_gateway_req** %10, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.be_cmd_set_def_gateway_req*, %struct.be_cmd_set_def_gateway_req** %10, align 8
  %25 = getelementptr inbounds %struct.be_cmd_set_def_gateway_req, %struct.be_cmd_set_def_gateway_req* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @BE2_IPV4, align 4
  %27 = load %struct.be_cmd_set_def_gateway_req*, %struct.be_cmd_set_def_gateway_req** %10, align 8
  %28 = getelementptr inbounds %struct.be_cmd_set_def_gateway_req, %struct.be_cmd_set_def_gateway_req* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.be_cmd_set_def_gateway_req*, %struct.be_cmd_set_def_gateway_req** %10, align 8
  %31 = getelementptr inbounds %struct.be_cmd_set_def_gateway_req, %struct.be_cmd_set_def_gateway_req* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @memcpy(i32 %33, i32* %34, i32 %35)
  %37 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %38 = call i32 @mgmt_exec_nonemb_cmd(%struct.beiscsi_hba* %37, %struct.be_dma_mem* %11, i32* null, i32 0)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %20, %18
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @mgmt_alloc_cmd_data(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mgmt_exec_nonemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
