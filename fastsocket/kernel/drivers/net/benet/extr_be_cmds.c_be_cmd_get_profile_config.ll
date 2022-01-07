; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_profile_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_profile_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.be_queue_info }
%struct.be_queue_info = type { i32 }
%struct.be_resources = type { i32 }
%struct.be_cmd_resp_get_profile_config = type { i32, i32 }
%struct.be_pcie_res_desc = type { i32 }
%struct.be_nic_res_desc = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_resp_get_profile_config* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_profile_config(%struct.be_adapter* %0, %struct.be_resources* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca %struct.be_resources*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_cmd_resp_get_profile_config*, align 8
  %9 = alloca %struct.be_pcie_res_desc*, align 8
  %10 = alloca %struct.be_nic_res_desc*, align 8
  %11 = alloca %struct.be_queue_info*, align 8
  %12 = alloca %struct.be_dma_mem, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store %struct.be_resources* %1, %struct.be_resources** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.be_queue_info* %17, %struct.be_queue_info** %11, align 8
  %18 = call i32 @memset(%struct.be_dma_mem* %12, i32 0, i32 16)
  %19 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  store i32 8, i32* %19, align 8
  %20 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 1
  %26 = call %struct.be_cmd_resp_get_profile_config* @pci_alloc_consistent(%struct.TYPE_5__* %22, i32 %24, i32* %25)
  %27 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  store %struct.be_cmd_resp_get_profile_config* %26, %struct.be_cmd_resp_get_profile_config** %27, align 8
  %28 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %29 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %28, align 8
  %30 = icmp ne %struct.be_cmd_resp_get_profile_config* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %107

34:                                               ; preds = %3
  %35 = load %struct.be_queue_info*, %struct.be_queue_info** %11, align 8
  %36 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @be_cmd_get_profile_config_mbox(%struct.be_adapter* %40, i32 %41, %struct.be_dma_mem* %12)
  store i32 %42, i32* %14, align 4
  br label %47

43:                                               ; preds = %34
  %44 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @be_cmd_get_profile_config_mccq(%struct.be_adapter* %44, i32 %45, %struct.be_dma_mem* %12)
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %90

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %53 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %52, align 8
  store %struct.be_cmd_resp_get_profile_config* %53, %struct.be_cmd_resp_get_profile_config** %8, align 8
  %54 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %8, align 8
  %55 = getelementptr inbounds %struct.be_cmd_resp_get_profile_config, %struct.be_cmd_resp_get_profile_config* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %8, align 8
  %64 = getelementptr inbounds %struct.be_cmd_resp_get_profile_config, %struct.be_cmd_resp_get_profile_config* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call %struct.be_pcie_res_desc* @be_get_pcie_desc(i32 %62, i32 %65, i32 %66)
  store %struct.be_pcie_res_desc* %67, %struct.be_pcie_res_desc** %9, align 8
  %68 = load %struct.be_pcie_res_desc*, %struct.be_pcie_res_desc** %9, align 8
  %69 = icmp ne %struct.be_pcie_res_desc* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %51
  %71 = load %struct.be_pcie_res_desc*, %struct.be_pcie_res_desc** %9, align 8
  %72 = getelementptr inbounds %struct.be_pcie_res_desc, %struct.be_pcie_res_desc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = load %struct.be_resources*, %struct.be_resources** %6, align 8
  %76 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %51
  %78 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %8, align 8
  %79 = getelementptr inbounds %struct.be_cmd_resp_get_profile_config, %struct.be_cmd_resp_get_profile_config* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call %struct.be_nic_res_desc* @be_get_nic_desc(i32 %80, i32 %81)
  store %struct.be_nic_res_desc* %82, %struct.be_nic_res_desc** %10, align 8
  %83 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %10, align 8
  %84 = icmp ne %struct.be_nic_res_desc* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load %struct.be_resources*, %struct.be_resources** %6, align 8
  %87 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %10, align 8
  %88 = call i32 @be_copy_nic_desc(%struct.be_resources* %86, %struct.be_nic_res_desc* %87)
  br label %89

89:                                               ; preds = %85, %77
  br label %90

90:                                               ; preds = %89, %50
  %91 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %92 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %91, align 8
  %93 = icmp ne %struct.be_cmd_resp_get_profile_config* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %96 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %101 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %100, align 8
  %102 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @pci_free_consistent(%struct.TYPE_5__* %97, i32 %99, %struct.be_cmd_resp_get_profile_config* %101, i32 %103)
  br label %105

105:                                              ; preds = %94, %90
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %31
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #1

declare dso_local %struct.be_cmd_resp_get_profile_config* @pci_alloc_consistent(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @be_cmd_get_profile_config_mbox(%struct.be_adapter*, i32, %struct.be_dma_mem*) #1

declare dso_local i32 @be_cmd_get_profile_config_mccq(%struct.be_adapter*, i32, %struct.be_dma_mem*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.be_pcie_res_desc* @be_get_pcie_desc(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.be_nic_res_desc* @be_get_nic_desc(i32, i32) #1

declare dso_local i32 @be_copy_nic_desc(%struct.be_resources*, %struct.be_nic_res_desc*) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_5__*, i32, %struct.be_cmd_resp_get_profile_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
