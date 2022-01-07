; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_mac_from_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_mac_from_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_mac_list = type { i32, i32, i32, %struct.get_list_macaddr*, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_13__ }
%struct.get_list_macaddr = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_resp_get_mac_list* }
%struct.be_cmd_resp_get_mac_list = type { i32, i32, i32, %struct.get_list_macaddr*, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_13__ }

@.str = private unnamed_addr constant [47 x i8] c"Memory allocation failure during GET_MAC_LIST\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_MAC_LIST = common dso_local global i32 0, align 4
@MAC_ADDRESS_TYPE_NETWORK = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_mac_from_list(%struct.be_adapter* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.be_mcc_wrb*, align 8
  %13 = alloca %struct.be_cmd_req_get_mac_list*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.be_dma_mem, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.be_cmd_resp_get_mac_list*, align 8
  %19 = alloca %struct.get_list_macaddr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = call i32 @memset(%struct.be_dma_mem* %16, i32 0, i32 16)
  %23 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 0
  store i32 48, i32* %23, align 8
  %24 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %25 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 1
  %30 = call %struct.be_cmd_resp_get_mac_list* @pci_alloc_consistent(%struct.TYPE_12__* %26, i32 %28, i32* %29)
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 2
  store %struct.be_cmd_resp_get_mac_list* %30, %struct.be_cmd_resp_get_mac_list** %31, align 8
  %32 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 2
  %33 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %32, align 8
  %34 = icmp ne %struct.be_cmd_resp_get_mac_list* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %5
  %36 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %37 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %181

43:                                               ; preds = %5
  %44 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %45 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %44, i32 0, i32 1
  %46 = call i32 @spin_lock_bh(i32* %45)
  %47 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %48 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %47)
  store %struct.be_mcc_wrb* %48, %struct.be_mcc_wrb** %12, align 8
  %49 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %12, align 8
  %50 = icmp ne %struct.be_mcc_wrb* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %14, align 4
  br label %166

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 2
  %56 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %55, align 8
  %57 = bitcast %struct.be_cmd_resp_get_mac_list* %56 to %struct.be_cmd_req_get_mac_list*
  store %struct.be_cmd_req_get_mac_list* %57, %struct.be_cmd_req_get_mac_list** %13, align 8
  %58 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %13, align 8
  %59 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %58, i32 0, i32 8
  %60 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %61 = load i32, i32* @OPCODE_COMMON_GET_MAC_LIST, align 4
  %62 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %12, align 8
  %65 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_13__* %59, i32 %60, i32 %61, i32 %63, %struct.be_mcc_wrb* %64, %struct.be_dma_mem* %16)
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %13, align 8
  %68 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @MAC_ADDRESS_TYPE_NETWORK, align 4
  %71 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %13, align 8
  %72 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %54
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cpu_to_le32(i32 %78)
  %80 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %13, align 8
  %81 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %83 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @cpu_to_le16(i32 %84)
  %86 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %13, align 8
  %87 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %13, align 8
  %89 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  br label %93

90:                                               ; preds = %54
  %91 = load %struct.be_cmd_req_get_mac_list*, %struct.be_cmd_req_get_mac_list** %13, align 8
  %92 = getelementptr inbounds %struct.be_cmd_req_get_mac_list, %struct.be_cmd_req_get_mac_list* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %76
  %94 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %95 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %165, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 2
  %100 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %99, align 8
  store %struct.be_cmd_resp_get_mac_list* %100, %struct.be_cmd_resp_get_mac_list** %18, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load i32*, i32** %8, align 8
  %106 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %18, align 8
  %107 = getelementptr inbounds %struct.be_cmd_resp_get_mac_list, %struct.be_cmd_resp_get_mac_list* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ETH_ALEN, align 4
  %112 = call i32 @memcpy(i32* %105, i32 %110, i32 %111)
  br label %166

113:                                              ; preds = %98
  %114 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %18, align 8
  %115 = getelementptr inbounds %struct.be_cmd_resp_get_mac_list, %struct.be_cmd_resp_get_mac_list* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %18, align 8
  %118 = getelementptr inbounds %struct.be_cmd_resp_get_mac_list, %struct.be_cmd_resp_get_mac_list* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %116, %119
  store i32 %120, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %121

121:                                              ; preds = %150, %113
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %153

125:                                              ; preds = %121
  %126 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %18, align 8
  %127 = getelementptr inbounds %struct.be_cmd_resp_get_mac_list, %struct.be_cmd_resp_get_mac_list* %126, i32 0, i32 3
  %128 = load %struct.get_list_macaddr*, %struct.get_list_macaddr** %127, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.get_list_macaddr, %struct.get_list_macaddr* %128, i64 %130
  store %struct.get_list_macaddr* %131, %struct.get_list_macaddr** %19, align 8
  %132 = load %struct.get_list_macaddr*, %struct.get_list_macaddr** %19, align 8
  %133 = getelementptr inbounds %struct.get_list_macaddr, %struct.get_list_macaddr* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @le16_to_cpu(i32 %134)
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* %20, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp eq i64 %137, 4
  br i1 %138, label %139, label %149

139:                                              ; preds = %125
  %140 = load i32*, i32** %9, align 8
  store i32 1, i32* %140, align 4
  %141 = load %struct.get_list_macaddr*, %struct.get_list_macaddr** %19, align 8
  %142 = getelementptr inbounds %struct.get_list_macaddr, %struct.get_list_macaddr* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %21, align 4
  %147 = call i32 @le32_to_cpu(i32 %146)
  %148 = load i32*, i32** %10, align 8
  store i32 %147, i32* %148, align 4
  br label %166

149:                                              ; preds = %125
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %17, align 4
  br label %121

153:                                              ; preds = %121
  %154 = load i32*, i32** %9, align 8
  store i32 0, i32* %154, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %18, align 8
  %157 = getelementptr inbounds %struct.be_cmd_resp_get_mac_list, %struct.be_cmd_resp_get_mac_list* %156, i32 0, i32 3
  %158 = load %struct.get_list_macaddr*, %struct.get_list_macaddr** %157, align 8
  %159 = getelementptr inbounds %struct.get_list_macaddr, %struct.get_list_macaddr* %158, i64 0
  %160 = getelementptr inbounds %struct.get_list_macaddr, %struct.get_list_macaddr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @ETH_ALEN, align 4
  %164 = call i32 @memcpy(i32* %155, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %153, %93
  br label %166

166:                                              ; preds = %165, %139, %104, %51
  %167 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %168 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %167, i32 0, i32 1
  %169 = call i32 @spin_unlock_bh(i32* %168)
  %170 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %171 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %170, i32 0, i32 0
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 2
  %176 = load %struct.be_cmd_resp_get_mac_list*, %struct.be_cmd_resp_get_mac_list** %175, align 8
  %177 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @pci_free_consistent(%struct.TYPE_12__* %172, i32 %174, %struct.be_cmd_resp_get_mac_list* %176, i32 %178)
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %166, %35
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #1

declare dso_local %struct.be_cmd_resp_get_mac_list* @pci_alloc_consistent(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_13__*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_12__*, i32, %struct.be_cmd_resp_get_mac_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
