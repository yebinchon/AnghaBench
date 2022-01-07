; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_static_ip_modify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_static_ip_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_if_info_resp = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.iscsi_iface_param_info = type { i64, i32, i32 }
%struct.be_cmd_set_ip_addr_req = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.be_dma_mem = type { %struct.be_cmd_set_ip_addr_req* }

@OPCODE_COMMON_ISCSI_NTWK_MODIFY_IP_ADDR = common dso_local global i32 0, align 4
@ISCSI_NET_PARAM_IPV6_ADDR = common dso_local global i64 0, align 8
@BE2_IPV6 = common dso_local global i64 0, align 8
@BE2_IPV4 = common dso_local global i64 0, align 8
@IP_ACTION_ADD = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"BG_%d : Failed to Modify existing IP Address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.be_cmd_get_if_info_resp*, %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info*, i64)* @mgmt_static_ip_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgmt_static_ip_modify(%struct.beiscsi_hba* %0, %struct.be_cmd_get_if_info_resp* %1, %struct.iscsi_iface_param_info* %2, %struct.iscsi_iface_param_info* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.beiscsi_hba*, align 8
  %8 = alloca %struct.be_cmd_get_if_info_resp*, align 8
  %9 = alloca %struct.iscsi_iface_param_info*, align 8
  %10 = alloca %struct.iscsi_iface_param_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.be_cmd_set_ip_addr_req*, align 8
  %13 = alloca %struct.be_dma_mem, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %7, align 8
  store %struct.be_cmd_get_if_info_resp* %1, %struct.be_cmd_get_if_info_resp** %8, align 8
  store %struct.iscsi_iface_param_info* %2, %struct.iscsi_iface_param_info** %9, align 8
  store %struct.iscsi_iface_param_info* %3, %struct.iscsi_iface_param_info** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %17 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_MODIFY_IP_ADDR, align 4
  %18 = call i32 @mgmt_alloc_cmd_data(%struct.beiscsi_hba* %16, %struct.be_dma_mem* %13, i32 %17, i32 48)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %15, align 4
  store i32 %22, i32* %6, align 4
  br label %138

23:                                               ; preds = %5
  %24 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %9, align 8
  %25 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ISCSI_NET_PARAM_IPV6_ADDR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* @BE2_IPV6, align 8
  br label %33

31:                                               ; preds = %23
  %32 = load i64, i64* @BE2_IPV4, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  store i64 %34, i64* %14, align 8
  %35 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 0
  %36 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %35, align 8
  store %struct.be_cmd_set_ip_addr_req* %36, %struct.be_cmd_set_ip_addr_req** %12, align 8
  %37 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %12, align 8
  %38 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %12, align 8
  %42 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i64 %40, i64* %44, align 8
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %46 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %12, align 8
  %49 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 8
  %52 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %12, align 8
  %53 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 4, i32* %56, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %12, align 8
  %59 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store i64 %57, i64* %62, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @IP_ACTION_ADD, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %97

66:                                               ; preds = %33
  %67 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %12, align 8
  %68 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %9, align 8
  %74 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %9, align 8
  %77 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memcpy(i32 %72, i32 %75, i32 %78)
  %80 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %10, align 8
  %81 = icmp ne %struct.iscsi_iface_param_info* %80, null
  br i1 %81, label %82, label %96

82:                                               ; preds = %66
  %83 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %12, align 8
  %84 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %10, align 8
  %90 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %10, align 8
  %93 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @memcpy(i32 %88, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %82, %66
  br label %126

97:                                               ; preds = %33
  %98 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %12, align 8
  %99 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %8, align 8
  %105 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %9, align 8
  %109 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @memcpy(i32 %103, i32 %107, i32 %110)
  %112 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %12, align 8
  %113 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %8, align 8
  %119 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %9, align 8
  %123 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @memcpy(i32 %117, i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %97, %96
  %127 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %128 = call i32 @mgmt_exec_nonemb_cmd(%struct.beiscsi_hba* %127, %struct.be_dma_mem* %13, i32* null, i32 0)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %133 = load i32, i32* @KERN_WARNING, align 4
  %134 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %135 = call i32 @beiscsi_log(%struct.beiscsi_hba* %132, i32 %133, i32 %134, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %136

136:                                              ; preds = %131, %126
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %136, %21
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @mgmt_alloc_cmd_data(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mgmt_exec_nonemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
