; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_handle_rb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_handle_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, i32 }
%struct.iwl_rx_mem_buffer = type { i32, i32*, i32 }
%struct.iwl_trans_pcie = type { i64, i32, i32, i32*, %struct.iwl_txq*, %struct.iwl_rxq }
%struct.iwl_txq = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32*, %struct.iwl_device_cmd* }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_rxq = type { i32, i32, i32, i32 }
%struct.iwl_rx_packet = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iwl_rx_cmd_buffer = type { i32, i32, i32, i32, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@FH_RSCSR_FRAME_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cmd at offset %d: %s (0x%.2x)\0A\00", align 1
@FH_RSCSR_FRAME_SIZE_MSK = common dso_local global i32 0, align 4
@SEQ_RX_FRAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Claim null rxb?\0A\00", align 1
@FH_RSCSR_FRAME_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_rx_mem_buffer*)* @iwl_pcie_rx_handle_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_rx_handle_rb(%struct.iwl_trans* %0, %struct.iwl_rx_mem_buffer* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_rx_mem_buffer*, align 8
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca %struct.iwl_rxq*, align 8
  %7 = alloca %struct.iwl_txq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_rx_packet*, align 8
  %13 = alloca %struct.iwl_device_cmd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.iwl_rx_cmd_buffer, align 8
  %21 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_rx_mem_buffer* %1, %struct.iwl_rx_mem_buffer** %4, align 8
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %23 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %22)
  store %struct.iwl_trans_pcie* %23, %struct.iwl_trans_pcie** %5, align 8
  %24 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %24, i32 0, i32 5
  store %struct.iwl_rxq* %25, %struct.iwl_rxq** %6, align 8
  %26 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %27 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %26, i32 0, i32 4
  %28 = load %struct.iwl_txq*, %struct.iwl_txq** %27, align 8
  %29 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %28, i64 %31
  store %struct.iwl_txq* %32, %struct.iwl_txq** %7, align 8
  store i32 0, i32* %9, align 4
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %35 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %33, %36
  store i32 %37, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %38 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %39 = icmp ne %struct.iwl_rx_mem_buffer* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %2
  br label %320

45:                                               ; preds = %2
  %46 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %47 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %54 = call i32 @dma_unmap_page(i32 %48, i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %225, %45
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 4
  %59 = add i64 %58, 4
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %237

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %20, i32 0, i32 0
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %64, align 8
  %66 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %20, i32 0, i32 1
  %67 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %68 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %66, align 4
  %70 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %20, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %20, i32 0, i32 3
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %71, align 4
  %73 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %20, i32 0, i32 4
  %74 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %75 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %73, align 8
  %77 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %20)
  store %struct.iwl_rx_packet* %77, %struct.iwl_rx_packet** %12, align 8
  %78 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %12, align 8
  %79 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @FH_RSCSR_FRAME_INVALID, align 4
  %82 = call i64 @cpu_to_le32(i32 %81)
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %63
  br label %237

85:                                               ; preds = %63
  %86 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %87 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %20, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %90 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %12, align 8
  %91 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @get_cmd_string(%struct.iwl_trans_pcie* %89, i32 %93)
  %95 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %12, align 8
  %96 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @IWL_DEBUG_RX(%struct.iwl_trans* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %94, i32 %98)
  %100 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %12, align 8
  %101 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @le32_to_cpu(i64 %102)
  %104 = load i32, i32* @FH_RSCSR_FRAME_SIZE_MSK, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = add i64 %107, 4
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %19, align 4
  %110 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %111 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %114 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %12, align 8
  %115 = load i32, i32* %19, align 4
  %116 = call i32 @trace_iwlwifi_dev_rx(i32 %112, %struct.iwl_trans* %113, %struct.iwl_rx_packet* %114, i32 %115)
  %117 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %118 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %121 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %12, align 8
  %122 = load i32, i32* %19, align 4
  %123 = call i32 @trace_iwlwifi_dev_rx_data(i32 %119, %struct.iwl_trans* %120, %struct.iwl_rx_packet* %121, i32 %122)
  %124 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %12, align 8
  %125 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @SEQ_RX_FRAME, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %161

135:                                              ; preds = %85
  store i32 0, i32* %21, align 4
  br label %136

136:                                              ; preds = %157, %135
  %137 = load i32, i32* %21, align 4
  %138 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %139 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %136
  %143 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %144 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %21, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %12, align 8
  %151 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %149, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %142
  store i32 0, i32* %15, align 4
  br label %160

156:                                              ; preds = %142
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %21, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %21, align 4
  br label %136

160:                                              ; preds = %155, %136
  br label %161

161:                                              ; preds = %160, %85
  %162 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %12, align 8
  %163 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @le16_to_cpu(i32 %165)
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @SEQ_TO_INDEX(i32 %167)
  store i32 %168, i32* %16, align 4
  %169 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %170 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %169, i32 0, i32 1
  %171 = load i32, i32* %16, align 4
  %172 = call i32 @get_cmd_index(i32* %170, i32 %171)
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %161
  %176 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %177 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %176, i32 0, i32 0
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = load i32, i32* %17, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %182, align 8
  store %struct.iwl_device_cmd* %183, %struct.iwl_device_cmd** %13, align 8
  br label %185

184:                                              ; preds = %161
  store %struct.iwl_device_cmd* null, %struct.iwl_device_cmd** %13, align 8
  br label %185

185:                                              ; preds = %184, %175
  %186 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %187 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %13, align 8
  %190 = call i32 @iwl_op_mode_rx(i32 %188, %struct.iwl_rx_cmd_buffer* %20, %struct.iwl_device_cmd* %189)
  store i32 %190, i32* %18, align 4
  %191 = load i32, i32* %15, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %210

193:                                              ; preds = %185
  %194 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %195 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %194, i32 0, i32 0
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load i32, i32* %17, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @kfree(i32* %201)
  %203 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %204 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %203, i32 0, i32 0
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load i32, i32* %17, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  store i32* null, i32** %209, align 8
  br label %210

210:                                              ; preds = %193, %185
  %211 = load i32, i32* %15, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %20, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %219 = load i32, i32* %18, align 4
  %220 = call i32 @iwl_pcie_hcmd_complete(%struct.iwl_trans* %218, %struct.iwl_rx_cmd_buffer* %20, i32 %219)
  br label %224

221:                                              ; preds = %213
  %222 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %223 = call i32 @IWL_WARN(%struct.iwl_trans* %222, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %217
  br label %225

225:                                              ; preds = %224, %210
  %226 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %20, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %9, align 4
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* @FH_RSCSR_FRAME_ALIGN, align 4
  %232 = call i64 @ALIGN(i32 %230, i32 %231)
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %11, align 4
  br label %55

237:                                              ; preds = %84, %55
  %238 = load i32, i32* %9, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %237
  %241 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %242 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %245 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @__free_pages(i32* %243, i32 %246)
  %248 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %249 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %248, i32 0, i32 1
  store i32* null, i32** %249, align 8
  br label %250

250:                                              ; preds = %240, %237
  %251 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %252 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %251, i32 0, i32 0
  %253 = load i64, i64* %8, align 8
  %254 = call i32 @spin_lock_irqsave(i32* %252, i64 %253)
  %255 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %256 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %309

259:                                              ; preds = %250
  %260 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %261 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %264 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* @PAGE_SIZE, align 4
  %267 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %268 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = shl i32 %266, %269
  %271 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %272 = call i32 @dma_map_page(i32 %262, i32* %265, i32 0, i32 %270, i32 %271)
  %273 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %274 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  %275 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %276 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %279 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = call i64 @dma_mapping_error(i32 %277, i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %298

283:                                              ; preds = %259
  %284 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %285 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %288 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @__free_pages(i32* %286, i32 %289)
  %291 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %292 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %291, i32 0, i32 1
  store i32* null, i32** %292, align 8
  %293 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %294 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %293, i32 0, i32 0
  %295 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %296 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %295, i32 0, i32 1
  %297 = call i32 @list_add_tail(i32* %294, i32* %296)
  br label %308

298:                                              ; preds = %259
  %299 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %300 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %299, i32 0, i32 0
  %301 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %302 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %301, i32 0, i32 3
  %303 = call i32 @list_add_tail(i32* %300, i32* %302)
  %304 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %305 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %298, %283
  br label %315

309:                                              ; preds = %250
  %310 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %4, align 8
  %311 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %310, i32 0, i32 0
  %312 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %313 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %312, i32 0, i32 1
  %314 = call i32 @list_add_tail(i32* %311, i32* %313)
  br label %315

315:                                              ; preds = %309, %308
  %316 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %317 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %316, i32 0, i32 0
  %318 = load i64, i64* %8, align 8
  %319 = call i32 @spin_unlock_irqrestore(i32* %317, i64 %318)
  br label %320

320:                                              ; preds = %315, %44
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_trans*, i8*, i32, i32, i32) #1

declare dso_local i32 @get_cmd_string(%struct.iwl_trans_pcie*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @trace_iwlwifi_dev_rx(i32, %struct.iwl_trans*, %struct.iwl_rx_packet*, i32) #1

declare dso_local i32 @trace_iwlwifi_dev_rx_data(i32, %struct.iwl_trans*, %struct.iwl_rx_packet*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SEQ_TO_INDEX(i32) #1

declare dso_local i32 @get_cmd_index(i32*, i32) #1

declare dso_local i32 @iwl_op_mode_rx(i32, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @iwl_pcie_hcmd_complete(%struct.iwl_trans*, %struct.iwl_rx_cmd_buffer*, i32) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_trans*, i8*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dma_map_page(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
