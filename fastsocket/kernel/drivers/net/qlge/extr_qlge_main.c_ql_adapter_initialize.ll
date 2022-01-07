; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_adapter_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_adapter_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_4__ = type { i32 }

@SYS_EFE = common dso_local global i32 0, align 4
@SYS_FAE = common dso_local global i32 0, align 4
@SYS = common dso_local global i32 0, align 4
@NIC_RCV_CFG_DFQ = common dso_local global i32 0, align 4
@NIC_RCV_CFG_RV = common dso_local global i32 0, align 4
@NIC_RCV_CFG_DFQ_MASK = common dso_local global i32 0, align 4
@NIC_RCV_CFG = common dso_local global i32 0, align 4
@INTR_MASK = common dso_local global i32 0, align 4
@INTR_MASK_PI = common dso_local global i32 0, align 4
@FSC_FE = common dso_local global i32 0, align 4
@FSC_EPC_INBOUND = common dso_local global i32 0, align 4
@FSC_EPC_OUTBOUND = common dso_local global i32 0, align 4
@FSC_EC = common dso_local global i32 0, align 4
@FSC_VM_PAGE_4K = common dso_local global i32 0, align 4
@SPLT_SETTING = common dso_local global i32 0, align 4
@FSC_VM_PAGESIZE_MASK = common dso_local global i32 0, align 4
@FSC_DBL_MASK = common dso_local global i32 0, align 4
@FSC_DBRST_MASK = common dso_local global i32 0, align 4
@FSC = common dso_local global i32 0, align 4
@SPLT_HDR = common dso_local global i32 0, align 4
@SPLT_LEN = common dso_local global i32 0, align 4
@RST_FO = common dso_local global i32 0, align 4
@RST_FO_RR_MASK = common dso_local global i32 0, align 4
@RST_FO_RR_RCV_FUNC_CQ = common dso_local global i32 0, align 4
@MGMT_RCV_CFG = common dso_local global i32 0, align 4
@MGMT_RCV_CFG_RM = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to start rx ring[%d].\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to start RSS.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to start tx ring[%d].\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to start port.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to init CAM/Routing tables.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_adapter_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_adapter_initialize(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @SYS_EFE, align 4
  %9 = load i32, i32* @SYS_FAE, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 16
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %14 = load i32, i32* @SYS, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @ql_write32(%struct.ql_adapter* %13, i32 %14, i32 %17)
  %19 = load i32, i32* @NIC_RCV_CFG_DFQ, align 4
  %20 = load i32, i32* @NIC_RCV_CFG_RV, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @NIC_RCV_CFG_DFQ_MASK, align 4
  %23 = load i32, i32* @NIC_RCV_CFG_RV, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %22, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %27 = load i32, i32* @NIC_RCV_CFG, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ql_write32(%struct.ql_adapter* %26, i32 %27, i32 %30)
  %32 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %33 = load i32, i32* @INTR_MASK, align 4
  %34 = load i32, i32* @INTR_MASK_PI, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* @INTR_MASK_PI, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @ql_write32(%struct.ql_adapter* %32, i32 %33, i32 %37)
  %39 = load i32, i32* @FSC_FE, align 4
  %40 = load i32, i32* @FSC_EPC_INBOUND, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FSC_EPC_OUTBOUND, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FSC_EC, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @FSC_VM_PAGE_4K, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @SPLT_SETTING, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @FSC_VM_PAGESIZE_MASK, align 4
  %52 = load i32, i32* @FSC_DBL_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @FSC_DBRST_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %4, align 4
  %57 = shl i32 %56, 16
  %58 = or i32 %55, %57
  store i32 %58, i32* %5, align 4
  %59 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %60 = load i32, i32* @FSC, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @ql_write32(%struct.ql_adapter* %59, i32 %60, i32 %63)
  %65 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %66 = load i32, i32* @SPLT_HDR, align 4
  %67 = load i32, i32* @SPLT_LEN, align 4
  %68 = call i32 @ql_write32(%struct.ql_adapter* %65, i32 %66, i32 %67)
  %69 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %70 = load i32, i32* @RST_FO, align 4
  %71 = load i32, i32* @RST_FO_RR_MASK, align 4
  %72 = load i32, i32* @RST_FO_RR_RCV_FUNC_CQ, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @ql_write32(%struct.ql_adapter* %69, i32 %70, i32 %73)
  %75 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %76 = load i32, i32* @MGMT_RCV_CFG, align 4
  %77 = call i32 @ql_read32(%struct.ql_adapter* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @MGMT_RCV_CFG_RM, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %4, align 4
  store i32 -65536, i32* %5, align 4
  %82 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %83 = load i32, i32* @MGMT_RCV_CFG, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @ql_write32(%struct.ql_adapter* %82, i32 %83, i32 %84)
  %86 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %87 = load i32, i32* @MGMT_RCV_CFG, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @ql_write32(%struct.ql_adapter* %86, i32 %87, i32 %90)
  %92 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %92, i32 0, i32 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 104
  br i1 %97, label %105, label %98

98:                                               ; preds = %1
  %99 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %99, i32 0, i32 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 384
  br i1 %104, label %105, label %109

105:                                              ; preds = %98, %1
  %106 = load i32, i32* @WAKE_MAGIC, align 4
  %107 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %98
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %137, %109
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %140

116:                                              ; preds = %110
  %117 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %118 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %119 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %118, i32 0, i32 3
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = call i32 @ql_start_rx_ring(%struct.ql_adapter* %117, %struct.TYPE_6__* %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %116
  %128 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %129 = load i32, i32* @ifup, align 4
  %130 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %131 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %128, i32 %129, i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %242

136:                                              ; preds = %116
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %110

140:                                              ; preds = %110
  %141 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %142 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %159

145:                                              ; preds = %140
  %146 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %147 = call i32 @ql_start_rss(%struct.ql_adapter* %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %152 = load i32, i32* @ifup, align 4
  %153 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %154 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %151, i32 %152, i32 %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %157 = load i32, i32* %7, align 4
  store i32 %157, i32* %2, align 4
  br label %242

158:                                              ; preds = %145
  br label %159

159:                                              ; preds = %158, %140
  store i32 0, i32* %6, align 4
  br label %160

160:                                              ; preds = %187, %159
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %163 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %160
  %167 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %168 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %169 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %168, i32 0, i32 6
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = call i32 @ql_start_tx_ring(%struct.ql_adapter* %167, i32* %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %166
  %178 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %179 = load i32, i32* @ifup, align 4
  %180 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %181 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %178, i32 %179, i32 %182, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %7, align 4
  store i32 %185, i32* %2, align 4
  br label %242

186:                                              ; preds = %166
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %160

190:                                              ; preds = %160
  %191 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %192 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %191, i32 0, i32 5
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = bitcast {}** %194 to i32 (%struct.ql_adapter*)**
  %196 = load i32 (%struct.ql_adapter*)*, i32 (%struct.ql_adapter*)** %195, align 8
  %197 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %198 = call i32 %196(%struct.ql_adapter* %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %190
  %202 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %203 = load i32, i32* @ifup, align 4
  %204 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %205 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %202, i32 %203, i32 %206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %208

208:                                              ; preds = %201, %190
  %209 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %210 = call i32 @ql_cam_route_initialize(%struct.ql_adapter* %209)
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %208
  %214 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %215 = load i32, i32* @ifup, align 4
  %216 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %217 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %214, i32 %215, i32 %218, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %220 = load i32, i32* %7, align 4
  store i32 %220, i32* %2, align 4
  br label %242

221:                                              ; preds = %208
  store i32 0, i32* %6, align 4
  br label %222

222:                                              ; preds = %237, %221
  %223 = load i32, i32* %6, align 4
  %224 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %225 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp slt i32 %223, %226
  br i1 %227, label %228, label %240

228:                                              ; preds = %222
  %229 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %230 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %229, i32 0, i32 3
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = call i32 @napi_enable(i32* %235)
  br label %237

237:                                              ; preds = %228
  %238 = load i32, i32* %6, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %6, align 4
  br label %222

240:                                              ; preds = %222
  %241 = load i32, i32* %7, align 4
  store i32 %241, i32* %2, align 4
  br label %242

242:                                              ; preds = %240, %213, %177, %150, %127
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_start_rx_ring(%struct.ql_adapter*, %struct.TYPE_6__*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, ...) #1

declare dso_local i32 @ql_start_rss(%struct.ql_adapter*) #1

declare dso_local i32 @ql_start_tx_ring(%struct.ql_adapter*, i32*) #1

declare dso_local i32 @ql_cam_route_initialize(%struct.ql_adapter*) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
