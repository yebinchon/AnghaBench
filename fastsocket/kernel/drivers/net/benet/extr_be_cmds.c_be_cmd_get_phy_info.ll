; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_phy_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_phy_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8* }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_phy_info = type { i32, i32, i32, i32, i32, i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_phy_info* }
%struct.be_phy_info = type { i32, i32, i32, i32, i32, i32 }

@OPCODE_COMMON_GET_PHY_DETAILS = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Memory alloc failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_phy_info(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_mcc_wrb*, align 8
  %5 = alloca %struct.be_cmd_req_get_phy_info*, align 8
  %6 = alloca %struct.be_dma_mem, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_phy_info*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = load i32, i32* @OPCODE_COMMON_GET_PHY_DETAILS, align 4
  %11 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %12 = call i32 @be_cmd_allowed(%struct.be_adapter* %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %118

17:                                               ; preds = %1
  %18 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %22 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %21)
  store %struct.be_mcc_wrb* %22, %struct.be_mcc_wrb** %4, align 8
  %23 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %24 = icmp ne %struct.be_mcc_wrb* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %113

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  store i32 24, i32* %29, align 8
  %30 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 1
  %36 = call %struct.be_phy_info* @pci_alloc_consistent(%struct.TYPE_5__* %32, i32 %34, i32* %35)
  %37 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  store %struct.be_phy_info* %36, %struct.be_phy_info** %37, align 8
  %38 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %39 = load %struct.be_phy_info*, %struct.be_phy_info** %38, align 8
  %40 = icmp ne %struct.be_phy_info* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %28
  %42 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %113

49:                                               ; preds = %28
  %50 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %51 = load %struct.be_phy_info*, %struct.be_phy_info** %50, align 8
  %52 = bitcast %struct.be_phy_info* %51 to %struct.be_cmd_req_get_phy_info*
  store %struct.be_cmd_req_get_phy_info* %52, %struct.be_cmd_req_get_phy_info** %5, align 8
  %53 = load %struct.be_cmd_req_get_phy_info*, %struct.be_cmd_req_get_phy_info** %5, align 8
  %54 = getelementptr inbounds %struct.be_cmd_req_get_phy_info, %struct.be_cmd_req_get_phy_info* %53, i32 0, i32 5
  %55 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %56 = load i32, i32* @OPCODE_COMMON_GET_PHY_DETAILS, align 4
  %57 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %58 = call i32 @be_wrb_cmd_hdr_prepare(i32* %54, i32 %55, i32 %56, i32 24, %struct.be_mcc_wrb* %57, %struct.be_dma_mem* %6)
  %59 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %60 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %102, label %63

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %65 = load %struct.be_phy_info*, %struct.be_phy_info** %64, align 8
  %66 = getelementptr inbounds %struct.be_phy_info, %struct.be_phy_info* %65, i64 4
  store %struct.be_phy_info* %66, %struct.be_phy_info** %8, align 8
  %67 = load %struct.be_phy_info*, %struct.be_phy_info** %8, align 8
  %68 = getelementptr inbounds %struct.be_phy_info, %struct.be_phy_info* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le16_to_cpu(i32 %69)
  %71 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i8* %70, i8** %73, align 8
  %74 = load %struct.be_phy_info*, %struct.be_phy_info** %8, align 8
  %75 = getelementptr inbounds %struct.be_phy_info, %struct.be_phy_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @le16_to_cpu(i32 %76)
  %78 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i8* %77, i8** %80, align 8
  %81 = load %struct.be_phy_info*, %struct.be_phy_info** %8, align 8
  %82 = getelementptr inbounds %struct.be_phy_info, %struct.be_phy_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @le16_to_cpu(i32 %83)
  %85 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i8* %84, i8** %87, align 8
  %88 = load %struct.be_phy_info*, %struct.be_phy_info** %8, align 8
  %89 = getelementptr inbounds %struct.be_phy_info, %struct.be_phy_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le16_to_cpu(i32 %90)
  %92 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i8* %91, i8** %94, align 8
  %95 = load %struct.be_phy_info*, %struct.be_phy_info** %8, align 8
  %96 = getelementptr inbounds %struct.be_phy_info, %struct.be_phy_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le32_to_cpu(i32 %97)
  %99 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %63, %49
  %103 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %109 = load %struct.be_phy_info*, %struct.be_phy_info** %108, align 8
  %110 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pci_free_consistent(%struct.TYPE_5__* %105, i32 %107, %struct.be_phy_info* %109, i32 %111)
  br label %113

113:                                              ; preds = %102, %41, %25
  %114 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock_bh(i32* %115)
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %113, %14
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @be_cmd_allowed(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_phy_info* @pci_alloc_consistent(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_5__*, i32, %struct.be_phy_info*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
