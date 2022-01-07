; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_acpi_wol_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_acpi_wol_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_acpi_wol_magic_config_v1 = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_req_acpi_wol_magic_config_v1* }
%struct.be_cmd_resp_acpi_wol_magic_config_v1 = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_ETH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Memory allocation failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BE_GET_WOL_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_acpi_wol_cap(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_mcc_wrb*, align 8
  %5 = alloca %struct.be_cmd_req_acpi_wol_magic_config_v1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_dma_mem, align 8
  %9 = alloca %struct.be_cmd_resp_acpi_wol_magic_config_v1*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i32 8, i32* %7, align 4
  %10 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %11 = load i32, i32* @OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG, align 4
  %12 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  %13 = call i32 @be_cmd_allowed(%struct.be_adapter* %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %112

18:                                               ; preds = %1
  %19 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %19, i32 0, i32 1
  %21 = call i64 @mutex_lock_interruptible(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %112

24:                                               ; preds = %18
  %25 = call i32 @memset(%struct.be_dma_mem* %8, i32 0, i32 16)
  %26 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  store i32 8, i32* %26, align 8
  %27 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 1
  %33 = call %struct.be_cmd_req_acpi_wol_magic_config_v1* @pci_alloc_consistent(%struct.TYPE_6__* %29, i32 %31, i32* %32)
  %34 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  store %struct.be_cmd_req_acpi_wol_magic_config_v1* %33, %struct.be_cmd_req_acpi_wol_magic_config_v1** %34, align 8
  %35 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %36 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %35, align 8
  %37 = icmp ne %struct.be_cmd_req_acpi_wol_magic_config_v1* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %24
  %39 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %92

46:                                               ; preds = %24
  %47 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %48 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %47)
  store %struct.be_mcc_wrb* %48, %struct.be_mcc_wrb** %4, align 8
  %49 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %50 = icmp ne %struct.be_mcc_wrb* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %92

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %56 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %55, align 8
  store %struct.be_cmd_req_acpi_wol_magic_config_v1* %56, %struct.be_cmd_req_acpi_wol_magic_config_v1** %5, align 8
  %57 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %5, align 8
  %58 = getelementptr inbounds %struct.be_cmd_req_acpi_wol_magic_config_v1, %struct.be_cmd_req_acpi_wol_magic_config_v1* %57, i32 0, i32 1
  %59 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  %60 = load i32, i32* @OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %63 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_7__* %58, i32 %59, i32 %60, i32 %61, %struct.be_mcc_wrb* %62, %struct.be_dma_mem* %8)
  %64 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %5, align 8
  %65 = getelementptr inbounds %struct.be_cmd_req_acpi_wol_magic_config_v1, %struct.be_cmd_req_acpi_wol_magic_config_v1* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* @BE_GET_WOL_CAP, align 4
  %68 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %5, align 8
  %69 = getelementptr inbounds %struct.be_cmd_req_acpi_wol_magic_config_v1, %struct.be_cmd_req_acpi_wol_magic_config_v1* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %71 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %54
  %75 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %76 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %75, align 8
  %77 = bitcast %struct.be_cmd_req_acpi_wol_magic_config_v1* %76 to %struct.be_cmd_resp_acpi_wol_magic_config_v1*
  store %struct.be_cmd_resp_acpi_wol_magic_config_v1* %77, %struct.be_cmd_resp_acpi_wol_magic_config_v1** %9, align 8
  %78 = load %struct.be_cmd_resp_acpi_wol_magic_config_v1*, %struct.be_cmd_resp_acpi_wol_magic_config_v1** %9, align 8
  %79 = getelementptr inbounds %struct.be_cmd_resp_acpi_wol_magic_config_v1, %struct.be_cmd_resp_acpi_wol_magic_config_v1* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i32 -1, i32* %6, align 4
  br label %92

85:                                               ; preds = %74
  %86 = load %struct.be_cmd_resp_acpi_wol_magic_config_v1*, %struct.be_cmd_resp_acpi_wol_magic_config_v1** %9, align 8
  %87 = getelementptr inbounds %struct.be_cmd_resp_acpi_wol_magic_config_v1, %struct.be_cmd_resp_acpi_wol_magic_config_v1* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %54
  br label %92

92:                                               ; preds = %91, %84, %51, %38
  %93 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %97 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %96, align 8
  %98 = icmp ne %struct.be_cmd_req_acpi_wol_magic_config_v1* %97, null
  br i1 %98, label %99, label %110

99:                                               ; preds = %92
  %100 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %106 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %105, align 8
  %107 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @pci_free_consistent(%struct.TYPE_6__* %102, i32 %104, %struct.be_cmd_req_acpi_wol_magic_config_v1* %106, i32 %108)
  br label %110

110:                                              ; preds = %99, %92
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %23, %15
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @be_cmd_allowed(%struct.be_adapter*, i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #1

declare dso_local %struct.be_cmd_req_acpi_wol_magic_config_v1* @pci_alloc_consistent(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_7__*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_6__*, i32, %struct.be_cmd_req_acpi_wol_magic_config_v1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
