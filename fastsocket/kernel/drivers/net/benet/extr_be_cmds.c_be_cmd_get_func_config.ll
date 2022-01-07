; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_func_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_func_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.be_resources = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_func_config = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_resp_get_func_config* }
%struct.be_cmd_resp_get_func_config = type { i32, i32, %struct.TYPE_5__ }
%struct.be_nic_res_desc = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Memory alloc failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_FUNC_CONFIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_func_config(%struct.be_adapter* %0, %struct.be_resources* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.be_resources*, align 8
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca %struct.be_cmd_req_get_func_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.be_dma_mem, align 8
  %10 = alloca %struct.be_cmd_resp_get_func_config*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.be_nic_res_desc*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.be_resources* %1, %struct.be_resources** %5, align 8
  %13 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 1
  %15 = call i64 @mutex_lock_interruptible(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %119

18:                                               ; preds = %2
  %19 = call i32 @memset(%struct.be_dma_mem* %9, i32 0, i32 16)
  %20 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  store i32 12, i32* %20, align 8
  %21 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %27 = call %struct.be_cmd_resp_get_func_config* @pci_alloc_consistent(%struct.TYPE_4__* %23, i32 %25, i32* %26)
  %28 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  store %struct.be_cmd_resp_get_func_config* %27, %struct.be_cmd_resp_get_func_config** %28, align 8
  %29 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %30 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %29, align 8
  %31 = icmp ne %struct.be_cmd_resp_get_func_config* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %18
  %33 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %99

40:                                               ; preds = %18
  %41 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %42 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %41)
  store %struct.be_mcc_wrb* %42, %struct.be_mcc_wrb** %6, align 8
  %43 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %44 = icmp ne %struct.be_mcc_wrb* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %99

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %50 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %49, align 8
  %51 = bitcast %struct.be_cmd_resp_get_func_config* %50 to %struct.be_cmd_req_get_func_config*
  store %struct.be_cmd_req_get_func_config* %51, %struct.be_cmd_req_get_func_config** %7, align 8
  %52 = load %struct.be_cmd_req_get_func_config*, %struct.be_cmd_req_get_func_config** %7, align 8
  %53 = getelementptr inbounds %struct.be_cmd_req_get_func_config, %struct.be_cmd_req_get_func_config* %52, i32 0, i32 2
  %54 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %55 = load i32, i32* @OPCODE_COMMON_GET_FUNC_CONFIG, align 4
  %56 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %59 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_5__* %53, i32 %54, i32 %55, i32 %57, %struct.be_mcc_wrb* %58, %struct.be_dma_mem* %9)
  %60 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %61 = call i64 @skyhawk_chip(%struct.be_adapter* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %48
  %64 = load %struct.be_cmd_req_get_func_config*, %struct.be_cmd_req_get_func_config** %7, align 8
  %65 = getelementptr inbounds %struct.be_cmd_req_get_func_config, %struct.be_cmd_req_get_func_config* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %48
  %68 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %69 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %74 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %73, align 8
  store %struct.be_cmd_resp_get_func_config* %74, %struct.be_cmd_resp_get_func_config** %10, align 8
  %75 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %10, align 8
  %76 = getelementptr inbounds %struct.be_cmd_resp_get_func_config, %struct.be_cmd_resp_get_func_config* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %10, align 8
  %80 = getelementptr inbounds %struct.be_cmd_resp_get_func_config, %struct.be_cmd_resp_get_func_config* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call %struct.be_nic_res_desc* @be_get_nic_desc(i32 %81, i32 %82)
  store %struct.be_nic_res_desc* %83, %struct.be_nic_res_desc** %12, align 8
  %84 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %12, align 8
  %85 = icmp ne %struct.be_nic_res_desc* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %72
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %8, align 4
  br label %99

89:                                               ; preds = %72
  %90 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %12, align 8
  %91 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %94 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.be_resources*, %struct.be_resources** %5, align 8
  %96 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %12, align 8
  %97 = call i32 @be_copy_nic_desc(%struct.be_resources* %95, %struct.be_nic_res_desc* %96)
  br label %98

98:                                               ; preds = %89, %67
  br label %99

99:                                               ; preds = %98, %86, %45, %32
  %100 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %101 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %100, i32 0, i32 1
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %104 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %103, align 8
  %105 = icmp ne %struct.be_cmd_resp_get_func_config* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %99
  %107 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %108 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %113 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %112, align 8
  %114 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @pci_free_consistent(%struct.TYPE_4__* %109, i32 %111, %struct.be_cmd_resp_get_func_config* %113, i32 %115)
  br label %117

117:                                              ; preds = %106, %99
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %17
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #1

declare dso_local %struct.be_cmd_resp_get_func_config* @pci_alloc_consistent(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_5__*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i64 @skyhawk_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.be_nic_res_desc* @be_get_nic_desc(i32, i32) #1

declare dso_local i32 @be_copy_nic_desc(%struct.be_resources*, %struct.be_nic_res_desc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_4__*, i32, %struct.be_cmd_resp_get_func_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
