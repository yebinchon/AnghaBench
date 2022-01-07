; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.netxen_adapter = type { i32, i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.netxen_recv_context }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.netxen_recv_context = type { %struct.nx_host_sds_ring*, %struct.TYPE_8__* }
%struct.nx_host_sds_ring = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NETXEN_NIC_REGS_LEN = common dso_local global i32 0, align 4
@NETXEN_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@CRB_CMDPEG_STATE = common dso_local global i64 0, align 8
@CRB_RCVPEG_STATE = common dso_local global i64 0, align 8
@CRB_FW_CAPABILITIES_1 = common dso_local global i64 0, align 8
@NX_CRB_DEV_REF_COUNT = common dso_local global i64 0, align 8
@NX_CRB_DEV_STATE = common dso_local global i64 0, align 8
@NETXEN_PEG_ALIVE_COUNTER = common dso_local global i64 0, align 8
@NETXEN_PEG_HALT_STATUS1 = common dso_local global i64 0, align 8
@NETXEN_PEG_HALT_STATUS2 = common dso_local global i64 0, align 8
@NETXEN_CRB_PEG_NET_0 = common dso_local global i64 0, align 8
@NETXEN_CRB_PEG_NET_1 = common dso_local global i64 0, align 8
@NETXEN_CRB_PEG_NET_2 = common dso_local global i64 0, align 8
@NETXEN_CRB_PEG_NET_3 = common dso_local global i64 0, align 8
@NETXEN_CRB_PEG_NET_4 = common dso_local global i64 0, align 8
@CRB_XG_STATE_P3 = common dso_local global i64 0, align 8
@NETXEN_NIU_XGE_CONFIG_0 = common dso_local global i64 0, align 8
@NETXEN_NIU_XGE_CONFIG_1 = common dso_local global i64 0, align 8
@CRB_XG_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @netxen_nic_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_nic_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.netxen_adapter*, align 8
  %8 = alloca %struct.netxen_recv_context*, align 8
  %9 = alloca %struct.nx_host_sds_ring*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.netxen_adapter* %15, %struct.netxen_adapter** %7, align 8
  %16 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %17 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %16, i32 0, i32 7
  store %struct.netxen_recv_context* %17, %struct.netxen_recv_context** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %21 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @NETXEN_NIC_REGS_LEN, align 4
  %25 = call i32 @memset(i8* %23, i32 0, i32 %24)
  %26 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %27 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 16
  %31 = or i32 16777216, %30
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %33 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %32, i32 0, i32 6
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %31, %36
  %38 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %41 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NETXEN_ADAPTER_UP_MAGIC, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  br label %315

46:                                               ; preds = %3
  %47 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %48 = load i64, i64* @CRB_CMDPEG_STATE, align 8
  %49 = call i32 @NXRD32(%struct.netxen_adapter* %47, i64 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %56 = load i64, i64* @CRB_RCVPEG_STATE, align 8
  %57 = call i32 @NXRD32(%struct.netxen_adapter* %55, i64 %56)
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %64 = load i64, i64* @CRB_FW_CAPABILITIES_1, align 8
  %65 = call i32 @NXRD32(%struct.netxen_adapter* %63, i64 %64)
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %72 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %73 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @NXRDIO(%struct.netxen_adapter* %71, i32 %74)
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %82 = load i64, i64* @NX_CRB_DEV_REF_COUNT, align 8
  %83 = call i32 @NXRD32(%struct.netxen_adapter* %81, i64 %82)
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %90 = load i64, i64* @NX_CRB_DEV_STATE, align 8
  %91 = call i32 @NXRD32(%struct.netxen_adapter* %89, i64 %90)
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %91, i32* %96, align 4
  %97 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %98 = load i64, i64* @NETXEN_PEG_ALIVE_COUNTER, align 8
  %99 = call i32 @NXRD32(%struct.netxen_adapter* %97, i64 %98)
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %99, i32* %104, align 4
  %105 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %106 = load i64, i64* @NETXEN_PEG_HALT_STATUS1, align 8
  %107 = call i32 @NXRD32(%struct.netxen_adapter* %105, i64 %106)
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %107, i32* %112, align 4
  %113 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %114 = load i64, i64* @NETXEN_PEG_HALT_STATUS2, align 8
  %115 = call i32 @NXRD32(%struct.netxen_adapter* %113, i64 %114)
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  %121 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %122 = load i64, i64* @NETXEN_CRB_PEG_NET_0, align 8
  %123 = add nsw i64 %122, 60
  %124 = call i32 @NXRD32(%struct.netxen_adapter* %121, i64 %123)
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  store i32 %124, i32* %129, align 4
  %130 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %131 = load i64, i64* @NETXEN_CRB_PEG_NET_1, align 8
  %132 = add nsw i64 %131, 60
  %133 = call i32 @NXRD32(%struct.netxen_adapter* %130, i64 %132)
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 %133, i32* %138, align 4
  %139 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %140 = load i64, i64* @NETXEN_CRB_PEG_NET_2, align 8
  %141 = add nsw i64 %140, 60
  %142 = call i32 @NXRD32(%struct.netxen_adapter* %139, i64 %141)
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %149 = load i64, i64* @NETXEN_CRB_PEG_NET_3, align 8
  %150 = add nsw i64 %149, 60
  %151 = call i32 @NXRD32(%struct.netxen_adapter* %148, i64 %150)
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  store i32 %151, i32* %156, align 4
  %157 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %158 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @NX_IS_REVISION_P3(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %195

163:                                              ; preds = %46
  %164 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %165 = load i64, i64* @NETXEN_CRB_PEG_NET_4, align 8
  %166 = add nsw i64 %165, 60
  %167 = call i32 @NXRD32(%struct.netxen_adapter* %164, i64 %166)
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  store i32 %167, i32* %172, align 4
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 2
  store i32 %174, i32* %12, align 4
  %175 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %176 = load i64, i64* @CRB_XG_STATE_P3, align 8
  %177 = call i32 @NXRD32(%struct.netxen_adapter* %175, i64 %176)
  %178 = load i32*, i32** %10, align 8
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 %177, i32* %182, align 4
  %183 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %184 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %183, i32 0, i32 3
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @le32_to_cpu(i32 %188)
  %190 = load i32*, i32** %10, align 8
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  br label %242

195:                                              ; preds = %46
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  %198 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %199 = load i64, i64* @NETXEN_NIU_XGE_CONFIG_0, align 8
  %200 = load i32, i32* %13, align 4
  %201 = mul nsw i32 65536, %200
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %199, %202
  %204 = call i32 @NXRD32(%struct.netxen_adapter* %198, i64 %203)
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  store i32 %204, i32* %209, align 4
  %210 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %211 = load i64, i64* @NETXEN_NIU_XGE_CONFIG_1, align 8
  %212 = load i32, i32* %13, align 4
  %213 = mul nsw i32 65536, %212
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %211, %214
  %216 = call i32 @NXRD32(%struct.netxen_adapter* %210, i64 %215)
  %217 = load i32*, i32** %10, align 8
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %12, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32 %216, i32* %221, align 4
  %222 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %223 = load i64, i64* @CRB_XG_STATE, align 8
  %224 = call i32 @NXRD32(%struct.netxen_adapter* %222, i64 %223)
  %225 = load i32*, i32** %10, align 8
  %226 = load i32, i32* %12, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %12, align 4
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  store i32 %224, i32* %229, align 4
  %230 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %231 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %232 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %231, i32 0, i32 3
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @NXRDIO(%struct.netxen_adapter* %230, i32 %235)
  %237 = load i32*, i32** %10, align 8
  %238 = load i32, i32* %12, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %12, align 4
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  store i32 %236, i32* %241, align 4
  br label %242

242:                                              ; preds = %195, %163
  %243 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %244 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %245 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %244, i32 0, i32 3
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @NXRDIO(%struct.netxen_adapter* %243, i32 %248)
  %250 = load i32*, i32** %10, align 8
  %251 = load i32, i32* %12, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %12, align 4
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  store i32 %249, i32* %254, align 4
  %255 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %256 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %8, align 8
  %257 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %256, i32 0, i32 1
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i64 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @NXRDIO(%struct.netxen_adapter* %255, i32 %261)
  %263 = load i32*, i32** %10, align 8
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %12, align 4
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  store i32 %262, i32* %267, align 4
  %268 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %269 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %8, align 8
  %270 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %269, i32 0, i32 1
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i64 1
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @NXRDIO(%struct.netxen_adapter* %268, i32 %274)
  %276 = load i32*, i32** %10, align 8
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %12, align 4
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  store i32 %275, i32* %280, align 4
  %281 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %282 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load i32*, i32** %10, align 8
  %285 = load i32, i32* %12, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %12, align 4
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i32, i32* %284, i64 %287
  store i32 %283, i32* %288, align 4
  store i32 0, i32* %11, align 4
  br label %289

289:                                              ; preds = %312, %242
  %290 = load i32, i32* %11, align 4
  %291 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %292 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = icmp slt i32 %290, %293
  br i1 %294, label %295, label %315

295:                                              ; preds = %289
  %296 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %8, align 8
  %297 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %296, i32 0, i32 0
  %298 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %297, align 8
  %299 = load i32, i32* %11, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %298, i64 %300
  store %struct.nx_host_sds_ring* %301, %struct.nx_host_sds_ring** %9, align 8
  %302 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %303 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %9, align 8
  %304 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @NXRDIO(%struct.netxen_adapter* %302, i32 %305)
  %307 = load i32*, i32** %10, align 8
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %12, align 4
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  store i32 %306, i32* %311, align 4
  br label %312

312:                                              ; preds = %295
  %313 = load i32, i32* %11, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %11, align 4
  br label %289

315:                                              ; preds = %45, %289
  ret void
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i64) #1

declare dso_local i32 @NXRDIO(%struct.netxen_adapter*, i32) #1

declare dso_local i64 @NX_IS_REVISION_P3(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
