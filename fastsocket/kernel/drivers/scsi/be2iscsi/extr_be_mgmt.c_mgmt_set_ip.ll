; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_set_ip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_set_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.iscsi_iface_param_info = type { i64, i32 }
%struct.be_cmd_get_def_gateway_resp = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64* }
%struct.be_cmd_get_if_info_resp = type { %struct.TYPE_2__, i64 }
%struct.be_cmd_set_dhcp_req = type { i32, i64, i32, i32 }
%struct.be_cmd_rel_dhcp_req = type { i32, i64, i32, i32 }
%struct.be_dma_mem = type { %struct.be_cmd_set_dhcp_req* }

@EIO = common dso_local global i32 0, align 4
@ISCSI_NET_PARAM_IPV6_ADDR = common dso_local global i64 0, align 8
@BE2_IPV6 = common dso_local global i64 0, align 8
@BE2_IPV4 = common dso_local global i64 0, align 8
@ISCSI_BOOTPROTO_DHCP = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"BG_%d : DHCP Already Enabled\0A\00", align 1
@IP_V6_LEN = common dso_local global i32 0, align 4
@IP_V4_LEN = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_NTWK_REL_STATELESS_IP_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"BG_%d : Failed to Delete existing dhcp\0A\00", align 1
@IP_ACTION_DEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"BG_%d : Failed to Get Gateway Addr\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"BG_%d : Failed to clear Gateway Addr Set\0A\00", align 1
@OPCODE_COMMON_ISCSI_NTWK_CONFIG_STATELESS_IP_ADDR = common dso_local global i32 0, align 4
@BLOCKING = common dso_local global i32 0, align 4
@BE2_DHCP_V4 = common dso_local global i64 0, align 8
@IP_ACTION_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_set_ip(%struct.beiscsi_hba* %0, %struct.iscsi_iface_param_info* %1, %struct.iscsi_iface_param_info* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.iscsi_iface_param_info*, align 8
  %8 = alloca %struct.iscsi_iface_param_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.be_cmd_get_def_gateway_resp, align 8
  %11 = alloca %struct.be_cmd_get_if_info_resp, align 8
  %12 = alloca %struct.be_cmd_set_dhcp_req*, align 8
  %13 = alloca %struct.be_cmd_rel_dhcp_req*, align 8
  %14 = alloca %struct.be_dma_mem, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %6, align 8
  store %struct.iscsi_iface_param_info* %1, %struct.iscsi_iface_param_info** %7, align 8
  store %struct.iscsi_iface_param_info* %2, %struct.iscsi_iface_param_info** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %19 = call i64 @mgmt_get_all_if_id(%struct.beiscsi_hba* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %206

24:                                               ; preds = %4
  %25 = call i32 @memset(%struct.be_cmd_get_if_info_resp* %11, i32 0, i32 16)
  %26 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %7, align 8
  %27 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ISCSI_NET_PARAM_IPV6_ADDR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @BE2_IPV6, align 8
  br label %35

33:                                               ; preds = %24
  %34 = load i64, i64* @BE2_IPV4, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  store i64 %36, i64* %16, align 8
  %37 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %38 = load i64, i64* %16, align 8
  %39 = call i32 @mgmt_get_if_info(%struct.beiscsi_hba* %37, i64 %38, %struct.be_cmd_get_if_info_resp* %11)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %5, align 4
  br label %206

44:                                               ; preds = %35
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @ISCSI_BOOTPROTO_DHCP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %11, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %54 = load i32, i32* @KERN_WARNING, align 4
  %55 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %56 = call i32 @beiscsi_log(%struct.beiscsi_hba* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %206

57:                                               ; preds = %48
  %58 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %7, align 8
  %59 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ISCSI_NET_PARAM_IPV6_ADDR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @IP_V6_LEN, align 4
  br label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @IP_V4_LEN, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %7, align 8
  %70 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %108

71:                                               ; preds = %44
  %72 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %11, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %107

75:                                               ; preds = %71
  %76 = call i32 @memset(%struct.be_cmd_get_if_info_resp* %11, i32 0, i32 16)
  %77 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %78 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_REL_STATELESS_IP_ADDR, align 4
  %79 = call i32 @mgmt_alloc_cmd_data(%struct.beiscsi_hba* %77, %struct.be_dma_mem* %14, i32 %78, i32 24)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %5, align 4
  br label %206

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %14, i32 0, i32 0
  %86 = load %struct.be_cmd_set_dhcp_req*, %struct.be_cmd_set_dhcp_req** %85, align 8
  %87 = bitcast %struct.be_cmd_set_dhcp_req* %86 to %struct.be_cmd_rel_dhcp_req*
  store %struct.be_cmd_rel_dhcp_req* %87, %struct.be_cmd_rel_dhcp_req** %13, align 8
  %88 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %89 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.be_cmd_rel_dhcp_req*, %struct.be_cmd_rel_dhcp_req** %13, align 8
  %92 = getelementptr inbounds %struct.be_cmd_rel_dhcp_req, %struct.be_cmd_rel_dhcp_req* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load %struct.be_cmd_rel_dhcp_req*, %struct.be_cmd_rel_dhcp_req** %13, align 8
  %95 = getelementptr inbounds %struct.be_cmd_rel_dhcp_req, %struct.be_cmd_rel_dhcp_req* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %97 = call i32 @mgmt_exec_nonemb_cmd(%struct.beiscsi_hba* %96, %struct.be_dma_mem* %14, i32* null, i32 0)
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %84
  %101 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %102 = load i32, i32* @KERN_WARNING, align 4
  %103 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %104 = call i32 @beiscsi_log(%struct.beiscsi_hba* %101, i32 %102, i32 %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* %17, align 4
  store i32 %105, i32* %5, align 4
  br label %206

106:                                              ; preds = %84
  br label %107

107:                                              ; preds = %106, %71
  br label %108

108:                                              ; preds = %107, %67
  %109 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %11, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %108
  %116 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %117 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %7, align 8
  %118 = load i32, i32* @IP_ACTION_DEL, align 4
  %119 = call i32 @mgmt_static_ip_modify(%struct.beiscsi_hba* %116, %struct.be_cmd_get_if_info_resp* %11, %struct.iscsi_iface_param_info* %117, %struct.iscsi_iface_param_info* null, i32 %118)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* %17, align 4
  store i32 %123, i32* %5, align 4
  br label %206

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %108
  %126 = load i64, i64* %9, align 8
  %127 = load i64, i64* @ISCSI_BOOTPROTO_DHCP, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %170

129:                                              ; preds = %125
  %130 = bitcast %struct.be_cmd_get_def_gateway_resp* %10 to %struct.be_cmd_get_if_info_resp*
  %131 = call i32 @memset(%struct.be_cmd_get_if_info_resp* %130, i32 0, i32 16)
  %132 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %133 = load i64, i64* @BE2_IPV4, align 8
  %134 = bitcast %struct.be_cmd_get_def_gateway_resp* %10 to %struct.be_cmd_get_if_info_resp*
  %135 = call i32 @mgmt_get_gateway(%struct.beiscsi_hba* %132, i64 %133, %struct.be_cmd_get_if_info_resp* %134)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %129
  %139 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %140 = load i32, i32* @KERN_WARNING, align 4
  %141 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %142 = call i32 @beiscsi_log(%struct.beiscsi_hba* %139, i32 %140, i32 %141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* %17, align 4
  store i32 %143, i32* %5, align 4
  br label %206

144:                                              ; preds = %129
  %145 = getelementptr inbounds %struct.be_cmd_get_def_gateway_resp, %struct.be_cmd_get_def_gateway_resp* %10, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.be_cmd_get_def_gateway_resp, %struct.be_cmd_get_def_gateway_resp* %10, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = bitcast i64** %153 to i32*
  store i32* %154, i32** %15, align 8
  %155 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = load i32, i32* @IP_ACTION_DEL, align 4
  %158 = load i32, i32* @IP_V4_LEN, align 4
  %159 = call i32 @mgmt_modify_gateway(%struct.beiscsi_hba* %155, i32* %156, i32 %157, i32 %158)
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %151
  %163 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %164 = load i32, i32* @KERN_WARNING, align 4
  %165 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %166 = call i32 @beiscsi_log(%struct.beiscsi_hba* %163, i32 %164, i32 %165, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %167 = load i32, i32* %17, align 4
  store i32 %167, i32* %5, align 4
  br label %206

168:                                              ; preds = %151
  br label %169

169:                                              ; preds = %168, %144
  br label %170

170:                                              ; preds = %169, %125
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* @ISCSI_BOOTPROTO_DHCP, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %200

174:                                              ; preds = %170
  %175 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %176 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_CONFIG_STATELESS_IP_ADDR, align 4
  %177 = call i32 @mgmt_alloc_cmd_data(%struct.beiscsi_hba* %175, %struct.be_dma_mem* %14, i32 %176, i32 24)
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %17, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %17, align 4
  store i32 %181, i32* %5, align 4
  br label %206

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %14, i32 0, i32 0
  %184 = load %struct.be_cmd_set_dhcp_req*, %struct.be_cmd_set_dhcp_req** %183, align 8
  store %struct.be_cmd_set_dhcp_req* %184, %struct.be_cmd_set_dhcp_req** %12, align 8
  %185 = load i32, i32* @BLOCKING, align 4
  %186 = load %struct.be_cmd_set_dhcp_req*, %struct.be_cmd_set_dhcp_req** %12, align 8
  %187 = getelementptr inbounds %struct.be_cmd_set_dhcp_req, %struct.be_cmd_set_dhcp_req* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %struct.be_cmd_set_dhcp_req*, %struct.be_cmd_set_dhcp_req** %12, align 8
  %189 = getelementptr inbounds %struct.be_cmd_set_dhcp_req, %struct.be_cmd_set_dhcp_req* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  %190 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %191 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.be_cmd_set_dhcp_req*, %struct.be_cmd_set_dhcp_req** %12, align 8
  %194 = getelementptr inbounds %struct.be_cmd_set_dhcp_req, %struct.be_cmd_set_dhcp_req* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load i64, i64* @BE2_DHCP_V4, align 8
  %196 = load %struct.be_cmd_set_dhcp_req*, %struct.be_cmd_set_dhcp_req** %12, align 8
  %197 = getelementptr inbounds %struct.be_cmd_set_dhcp_req, %struct.be_cmd_set_dhcp_req* %196, i32 0, i32 1
  store i64 %195, i64* %197, align 8
  %198 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %199 = call i32 @mgmt_exec_nonemb_cmd(%struct.beiscsi_hba* %198, %struct.be_dma_mem* %14, i32* null, i32 0)
  store i32 %199, i32* %5, align 4
  br label %206

200:                                              ; preds = %170
  %201 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %202 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %7, align 8
  %203 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %8, align 8
  %204 = load i32, i32* @IP_ACTION_ADD, align 4
  %205 = call i32 @mgmt_static_ip_modify(%struct.beiscsi_hba* %201, %struct.be_cmd_get_if_info_resp* %11, %struct.iscsi_iface_param_info* %202, %struct.iscsi_iface_param_info* %203, i32 %204)
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %200, %182, %180, %162, %138, %122, %100, %82, %52, %42, %21
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i64 @mgmt_get_all_if_id(%struct.beiscsi_hba*) #1

declare dso_local i32 @memset(%struct.be_cmd_get_if_info_resp*, i32, i32) #1

declare dso_local i32 @mgmt_get_if_info(%struct.beiscsi_hba*, i64, %struct.be_cmd_get_if_info_resp*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @mgmt_alloc_cmd_data(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32) #1

declare dso_local i32 @mgmt_exec_nonemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32*, i32) #1

declare dso_local i32 @mgmt_static_ip_modify(%struct.beiscsi_hba*, %struct.be_cmd_get_if_info_resp*, %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info*, i32) #1

declare dso_local i32 @mgmt_get_gateway(%struct.beiscsi_hba*, i64, %struct.be_cmd_get_if_info_resp*) #1

declare dso_local i32 @mgmt_modify_gateway(%struct.beiscsi_hba*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
