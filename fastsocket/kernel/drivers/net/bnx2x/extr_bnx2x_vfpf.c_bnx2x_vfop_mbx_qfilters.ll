; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfop_mbx_qfilters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfop_mbx_qfilters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_vfop_cmd = type { void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*, i32 }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_virtf = type { i32, i32 }
%struct.bnx2x = type { i32 }
%struct.vfpf_set_q_filters_tlv = type { i32, i32, i32, i32, i32 }
%struct.bnx2x_vfop = type { i32, i64 }
%struct.bnx2x_vfop_filters = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vfpf_set_q_filters_tlv }

@__const.bnx2x_vfop_mbx_qfilters.cmd = private unnamed_addr constant %struct.bnx2x_vfop_cmd { void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_mbx_qfilters to void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*), i32 0 }, align 8
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"STATE: %d\0A\00", align 1
@VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED = common dso_local global i32 0, align 4
@VFPF_MAC_FILTER = common dso_local global i32 0, align 4
@VFPF_VLAN_FILTER = common dso_local global i32 0, align 4
@VFPF_SET_Q_FILTERS_RX_MASK_CHANGED = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_UNICAST = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_MATCHED_MULTICAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_MULTICAST = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_ALL_UNICAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_ALL_UNICAST = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_ALL_MULTICAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_ALL_MULTICAST = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_BROADCAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_BROADCAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_ANY_VLAN = common dso_local global i32 0, align 4
@VFPF_SET_Q_FILTERS_MULTICAST_CHANGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"QFILTERS[%d:%d] error: rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_mbx_qfilters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfop_mbx_qfilters(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfpf_set_q_filters_tlv*, align 8
  %7 = alloca %struct.bnx2x_vfop*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x_vfop_cmd, align 8
  %10 = alloca %struct.bnx2x_vfop_filters*, align 8
  %11 = alloca %struct.bnx2x_vfop_filters*, align 8
  %12 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %15 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_6__* @BP_VF_MBX(%struct.bnx2x* %13, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.vfpf_set_q_filters_tlv* %21, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %24 = call %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x* %22, %struct.bnx2x_virtf* %23)
  store %struct.bnx2x_vfop* %24, %struct.bnx2x_vfop** %7, align 8
  %25 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %26 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = bitcast %struct.bnx2x_vfop_cmd* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.bnx2x_vfop_cmd* @__const.bnx2x_vfop_mbx_qfilters.cmd to i8*), i64 16, i1 false)
  %29 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @DP(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %33 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %239

37:                                               ; preds = %2
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %251 [
    i32 131, label %39
    i32 128, label %83
    i32 129, label %127
    i32 130, label %205
    i32 132, label %234
  ]

39:                                               ; preds = %37
  %40 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %41 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %40, i32 0, i32 0
  store i32 128, i32* %41, align 8
  %42 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %43 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %39
  store %struct.bnx2x_vfop_filters* null, %struct.bnx2x_vfop_filters** %10, align 8
  %49 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %50 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %51 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %52 = load i32, i32* @VFPF_MAC_FILTER, align 4
  %53 = call i8* @bnx2x_vf_mbx_macvlan_list(%struct.bnx2x* %49, %struct.bnx2x_virtf* %50, %struct.vfpf_set_q_filters_tlv* %51, %struct.bnx2x_vfop_filters** %10, i32 %52)
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %56 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %58 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %239

62:                                               ; preds = %48
  %63 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %10, align 8
  %64 = icmp ne %struct.bnx2x_vfop_filters* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %67 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %68 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %10, align 8
  %69 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %70 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bnx2x_vfop_mac_list_cmd(%struct.bnx2x* %66, %struct.bnx2x_virtf* %67, %struct.bnx2x_vfop_cmd* %9, %struct.bnx2x_vfop_filters* %68, i32 %71, i32 0)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %79 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %239

80:                                               ; preds = %65
  br label %254

81:                                               ; preds = %62
  br label %82

82:                                               ; preds = %81, %39
  br label %83

83:                                               ; preds = %37, %82
  %84 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %85 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %84, i32 0, i32 0
  store i32 129, i32* %85, align 8
  %86 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %87 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %126

92:                                               ; preds = %83
  store %struct.bnx2x_vfop_filters* null, %struct.bnx2x_vfop_filters** %11, align 8
  %93 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %94 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %95 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %96 = load i32, i32* @VFPF_VLAN_FILTER, align 4
  %97 = call i8* @bnx2x_vf_mbx_macvlan_list(%struct.bnx2x* %93, %struct.bnx2x_virtf* %94, %struct.vfpf_set_q_filters_tlv* %95, %struct.bnx2x_vfop_filters** %11, i32 %96)
  %98 = ptrtoint i8* %97 to i64
  %99 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %100 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %102 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %239

106:                                              ; preds = %92
  %107 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %11, align 8
  %108 = icmp ne %struct.bnx2x_vfop_filters* %107, null
  br i1 %108, label %109, label %125

109:                                              ; preds = %106
  %110 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %111 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %112 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %11, align 8
  %113 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %114 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @bnx2x_vfop_vlan_list_cmd(%struct.bnx2x* %110, %struct.bnx2x_virtf* %111, %struct.bnx2x_vfop_cmd* %9, %struct.bnx2x_vfop_filters* %112, i32 %115, i32 0)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %123 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  br label %239

124:                                              ; preds = %109
  br label %254

125:                                              ; preds = %106
  br label %126

126:                                              ; preds = %125, %83
  br label %127

127:                                              ; preds = %37, %126
  %128 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %129 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %128, i32 0, i32 0
  store i32 130, i32* %129, align 8
  %130 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %131 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @VFPF_SET_Q_FILTERS_RX_MASK_CHANGED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %204

136:                                              ; preds = %127
  store i64 0, i64* %12, align 8
  %137 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %138 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i32, i32* @BNX2X_ACCEPT_UNICAST, align 4
  %145 = call i32 @__set_bit(i32 %144, i64* %12)
  br label %146

146:                                              ; preds = %143, %136
  %147 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %148 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @VFPF_RX_MASK_ACCEPT_MATCHED_MULTICAST, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load i32, i32* @BNX2X_ACCEPT_MULTICAST, align 4
  %155 = call i32 @__set_bit(i32 %154, i64* %12)
  br label %156

156:                                              ; preds = %153, %146
  %157 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %158 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @VFPF_RX_MASK_ACCEPT_ALL_UNICAST, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32, i32* @BNX2X_ACCEPT_ALL_UNICAST, align 4
  %165 = call i32 @__set_bit(i32 %164, i64* %12)
  br label %166

166:                                              ; preds = %163, %156
  %167 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %168 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @VFPF_RX_MASK_ACCEPT_ALL_MULTICAST, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load i32, i32* @BNX2X_ACCEPT_ALL_MULTICAST, align 4
  %175 = call i32 @__set_bit(i32 %174, i64* %12)
  br label %176

176:                                              ; preds = %173, %166
  %177 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %178 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @VFPF_RX_MASK_ACCEPT_BROADCAST, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %176
  %184 = load i32, i32* @BNX2X_ACCEPT_BROADCAST, align 4
  %185 = call i32 @__set_bit(i32 %184, i64* %12)
  br label %186

186:                                              ; preds = %183, %176
  %187 = load i32, i32* @BNX2X_ACCEPT_ANY_VLAN, align 4
  %188 = call i32 @__set_bit(i32 %187, i64* %12)
  %189 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %190 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %191 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %192 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i64, i64* %12, align 8
  %195 = call i32 @bnx2x_vfop_rxmode_cmd(%struct.bnx2x* %189, %struct.bnx2x_virtf* %190, %struct.bnx2x_vfop_cmd* %9, i32 %193, i64 %194)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %186
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %202 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  br label %239

203:                                              ; preds = %186
  br label %254

204:                                              ; preds = %127
  br label %205

205:                                              ; preds = %37, %204
  %206 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %207 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %206, i32 0, i32 0
  store i32 132, i32* %207, align 8
  %208 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %209 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @VFPF_SET_Q_FILTERS_MULTICAST_CHANGED, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %232

214:                                              ; preds = %205
  %215 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %216 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %217 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %218 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %221 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @bnx2x_vfop_mcast_cmd(%struct.bnx2x* %215, %struct.bnx2x_virtf* %216, %struct.bnx2x_vfop_cmd* %9, i32 %219, i32 %222, i32 0)
  store i32 %223, i32* %5, align 4
  %224 = load i32, i32* %5, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %214
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %230 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %229, i32 0, i32 1
  store i64 %228, i64* %230, align 8
  br label %239

231:                                              ; preds = %214
  br label %254

232:                                              ; preds = %205
  br label %233

233:                                              ; preds = %239, %232
  br label %234

234:                                              ; preds = %37, %233
  %235 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %236 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %237 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %238 = call i32 @bnx2x_vfop_end(%struct.bnx2x* %235, %struct.bnx2x_virtf* %236, %struct.bnx2x_vfop* %237)
  br label %254

239:                                              ; preds = %226, %198, %119, %105, %75, %61, %36
  %240 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %241 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %244 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %7, align 8
  %247 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %242, i32 %245, i32 %249)
  br label %233

251:                                              ; preds = %37
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @bnx2x_vfop_default(i32 %252)
  br label %254

254:                                              ; preds = %80, %124, %203, %231, %234, %251
  ret void
}

declare dso_local %struct.TYPE_6__* @BP_VF_MBX(%struct.bnx2x*, i32) #1

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i8* @bnx2x_vf_mbx_macvlan_list(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.vfpf_set_q_filters_tlv*, %struct.bnx2x_vfop_filters**, i32) #1

declare dso_local i32 @bnx2x_vfop_mac_list_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, %struct.bnx2x_vfop_filters*, i32, i32) #1

declare dso_local i32 @bnx2x_vfop_vlan_list_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, %struct.bnx2x_vfop_filters*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_vfop_rxmode_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32, i64) #1

declare dso_local i32 @bnx2x_vfop_mcast_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_vfop_end(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_vfop_default(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
