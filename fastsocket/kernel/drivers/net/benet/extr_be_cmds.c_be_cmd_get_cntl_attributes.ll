; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_cntl_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_cntl_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_cntl_attribs = type { i32 }
%struct.be_cmd_resp_cntl_attribs = type { i32 }
%struct.mgmt_controller_attrib = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_req_cntl_attribs* }

@.str = private unnamed_addr constant [27 x i8] c"Memory allocation failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_CNTL_ATTRIBUTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_cntl_attributes(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_mcc_wrb*, align 8
  %5 = alloca %struct.be_cmd_req_cntl_attribs*, align 8
  %6 = alloca %struct.be_cmd_resp_cntl_attribs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mgmt_controller_attrib*, align 8
  %10 = alloca %struct.be_dma_mem, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %11 = call i32 @max(i32 4, i32 4)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %12, i32 0, i32 1
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %93

17:                                               ; preds = %1
  %18 = call i32 @memset(%struct.be_dma_mem* %10, i32 0, i32 16)
  %19 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 0
  store i32 4, i32* %19, align 8
  %20 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 1
  %26 = call %struct.be_cmd_req_cntl_attribs* @pci_alloc_consistent(%struct.TYPE_5__* %22, i32 %24, i32* %25)
  %27 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 2
  store %struct.be_cmd_req_cntl_attribs* %26, %struct.be_cmd_req_cntl_attribs** %27, align 8
  %28 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 2
  %29 = load %struct.be_cmd_req_cntl_attribs*, %struct.be_cmd_req_cntl_attribs** %28, align 8
  %30 = icmp ne %struct.be_cmd_req_cntl_attribs* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %17
  %32 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %73

39:                                               ; preds = %17
  %40 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %41 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %40)
  store %struct.be_mcc_wrb* %41, %struct.be_mcc_wrb** %4, align 8
  %42 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %43 = icmp ne %struct.be_mcc_wrb* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %73

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 2
  %49 = load %struct.be_cmd_req_cntl_attribs*, %struct.be_cmd_req_cntl_attribs** %48, align 8
  store %struct.be_cmd_req_cntl_attribs* %49, %struct.be_cmd_req_cntl_attribs** %5, align 8
  %50 = load %struct.be_cmd_req_cntl_attribs*, %struct.be_cmd_req_cntl_attribs** %5, align 8
  %51 = getelementptr inbounds %struct.be_cmd_req_cntl_attribs, %struct.be_cmd_req_cntl_attribs* %50, i32 0, i32 0
  %52 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %53 = load i32, i32* @OPCODE_COMMON_GET_CNTL_ATTRIBUTES, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %56 = call i32 @be_wrb_cmd_hdr_prepare(i32* %51, i32 %52, i32 %53, i32 %54, %struct.be_mcc_wrb* %55, %struct.be_dma_mem* %10)
  %57 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %58 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 2
  %63 = load %struct.be_cmd_req_cntl_attribs*, %struct.be_cmd_req_cntl_attribs** %62, align 8
  %64 = getelementptr inbounds %struct.be_cmd_req_cntl_attribs, %struct.be_cmd_req_cntl_attribs* %63, i64 4
  %65 = bitcast %struct.be_cmd_req_cntl_attribs* %64 to %struct.mgmt_controller_attrib*
  store %struct.mgmt_controller_attrib* %65, %struct.mgmt_controller_attrib** %9, align 8
  %66 = load %struct.mgmt_controller_attrib*, %struct.mgmt_controller_attrib** %9, align 8
  %67 = getelementptr inbounds %struct.mgmt_controller_attrib, %struct.mgmt_controller_attrib* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %61, %47
  br label %73

73:                                               ; preds = %72, %44, %31
  %74 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 2
  %78 = load %struct.be_cmd_req_cntl_attribs*, %struct.be_cmd_req_cntl_attribs** %77, align 8
  %79 = icmp ne %struct.be_cmd_req_cntl_attribs* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 2
  %87 = load %struct.be_cmd_req_cntl_attribs*, %struct.be_cmd_req_cntl_attribs** %86, align 8
  %88 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pci_free_consistent(%struct.TYPE_5__* %83, i32 %85, %struct.be_cmd_req_cntl_attribs* %87, i32 %89)
  br label %91

91:                                               ; preds = %80, %73
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %16
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #1

declare dso_local %struct.be_cmd_req_cntl_attribs* @pci_alloc_consistent(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_5__*, i32, %struct.be_cmd_req_cntl_attribs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
