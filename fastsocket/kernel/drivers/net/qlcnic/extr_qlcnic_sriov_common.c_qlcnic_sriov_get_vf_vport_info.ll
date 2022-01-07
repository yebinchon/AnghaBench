; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_get_vf_vport_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_get_vf_vport_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.qlcnic_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.qlcnic_cmd_args = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@QLCNIC_CMD_GET_NIC_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to get vport info, err=%d\0A\00", align 1
@BIT_0 = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@BIT_2 = common dso_local global i32 0, align 4
@BIT_3 = common dso_local global i32 0, align 4
@BIT_4 = common dso_local global i32 0, align 4
@BIT_5 = common dso_local global i32 0, align 4
@BIT_6 = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@BIT_8 = common dso_local global i32 0, align 4
@BIT_9 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [305 x i8] c"\0A\09min_tx_bw: %d, max_tx_bw: %d max_tx_ques: %d,\0A\09max_tx_mac_filters: %d max_rx_mcast_mac_filters: %d,\0A\09max_rx_ucast_mac_filters: 0x%x, max_rx_ip_addr: %d,\0A\09max_rx_lro_flow: %d max_rx_status_rings: %d,\0A\09max_rx_buf_rings: %d, max_rx_ques: %d, max_tx_vlan_keys %d\0A\09local_ipv6_addr: %d, remote_ipv6_addr: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_get_vf_vport_info(%struct.qlcnic_adapter* %0, %struct.qlcnic_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.qlcnic_cmd_args, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_info* %1, %struct.qlcnic_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %17 = load i32, i32* @QLCNIC_CMD_GET_NIC_INFO, align 4
  %18 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %9, %struct.qlcnic_adapter* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %269

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 16
  %26 = or i32 %25, 1
  %27 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %26, i32* %30, align 4
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %32 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %31, %struct.qlcnic_cmd_args* %9)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %23
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %9)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %269

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 65535
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @BIT_0, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @MSW(i32 %60)
  %62 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %63 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %62, i32 0, i32 13
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %55, %44
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @BIT_1, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @LSW(i32 %74)
  %76 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %77 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %76, i32 0, i32 12
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %69, %64
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @BIT_2, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @MSW(i32 %88)
  %90 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %91 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %90, i32 0, i32 11
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %83, %78
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @BIT_3, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @LSW(i32 %102)
  %104 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %105 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %104, i32 0, i32 10
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %97, %92
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @BIT_4, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @MSW(i32 %116)
  %118 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %119 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %118, i32 0, i32 9
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %111, %106
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @BIT_5, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 5
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @LSW(i32 %130)
  %132 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %133 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %132, i32 0, i32 8
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %125, %120
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @BIT_6, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 5
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @MSW(i32 %144)
  %146 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %147 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %146, i32 0, i32 7
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %139, %134
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @BIT_7, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 6
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @LSW(i32 %158)
  %160 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %161 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %160, i32 0, i32 6
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %153, %148
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @BIT_8, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 6
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @MSW(i32 %172)
  %174 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %175 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %174, i32 0, i32 5
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %167, %162
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* @BIT_9, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 7
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @LSW(i32 %186)
  %188 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %189 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  br label %190

190:                                              ; preds = %181, %176
  %191 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 7
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @MSW(i32 %195)
  %197 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %198 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %197, i32 0, i32 3
  store i8* %196, i8** %198, align 8
  %199 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 8
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @LSW(i32 %203)
  %205 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %206 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %205, i32 0, i32 2
  store i8* %204, i8** %206, align 8
  %207 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 8
  %211 = load i32, i32* %210, align 4
  %212 = call i8* @MSW(i32 %211)
  %213 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %214 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %213, i32 0, i32 1
  store i8* %212, i8** %214, align 8
  %215 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 9
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @LSW(i32 %219)
  %221 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %222 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %221, i32 0, i32 0
  store i8* %220, i8** %222, align 8
  %223 = load %struct.device*, %struct.device** %8, align 8
  %224 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %225 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %224, i32 0, i32 13
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %228 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %227, i32 0, i32 12
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %231 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %230, i32 0, i32 11
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %234 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %233, i32 0, i32 10
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %237 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %236, i32 0, i32 9
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %240 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %239, i32 0, i32 8
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %243 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %242, i32 0, i32 7
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %246 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %245, i32 0, i32 6
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %249 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %248, i32 0, i32 5
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %252 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %251, i32 0, i32 4
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %255 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %254, i32 0, i32 3
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %258 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %257, i32 0, i32 2
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %261 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %264 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @dev_info(%struct.device* %223, i8* getelementptr inbounds ([305 x i8], [305 x i8]* @.str.1, i64 0, i64 0), i8* %226, i8* %229, i8* %232, i8* %235, i8* %238, i8* %241, i8* %244, i8* %247, i8* %250, i8* %253, i8* %256, i8* %259, i8* %262, i8* %265)
  %267 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %9)
  %268 = load i32, i32* %10, align 4
  store i32 %268, i32* %4, align 4
  br label %269

269:                                              ; preds = %190, %35, %21
  %270 = load i32, i32* %4, align 4
  ret i32 %270
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i8* @MSW(i32) #1

declare dso_local i8* @LSW(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
