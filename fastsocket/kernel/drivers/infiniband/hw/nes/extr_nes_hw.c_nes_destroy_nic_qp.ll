; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_destroy_nic_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_destroy_nic_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_vnic = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__, %struct.nes_device* }
%struct.TYPE_7__ = type { i64, i64, i32, i64, i64, i32, i32, %struct.sk_buff**, i32, %struct.nes_hw_nic_sq_wqe*, %struct.sk_buff** }
%struct.nes_hw_nic_sq_wqe = type { i32* }
%struct.sk_buff = type { i32* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.nes_device = type { i32, %struct.TYPE_8__, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, %struct.nes_hw_cqp_wqe* }
%struct.nes_hw_cqp_wqe = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.nes_rskb_cb = type { i64, i64 }

@NES_IDX_WQM_CONFIG0 = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@NES_NIC_SQ_WQE_LENGTH_0_TAG_IDX = common dso_local global i64 0, align 8
@NES_NIC_SQ_WQE_FRAG0_LOW_IDX = common dso_local global i64 0, align 8
@NES_NIC_SQ_WQE_FRAG0_HIGH_IDX = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@NES_CQP_WQE_OPCODE_IDX = common dso_local global i32 0, align 4
@NES_CQP_DESTROY_QP = common dso_local global i32 0, align 4
@NES_CQP_QP_TYPE_NIC = common dso_local global i32 0, align 4
@NES_CQP_WQE_ID_IDX = common dso_local global i32 0, align 4
@NES_CQP_DESTROY_CQ = common dso_local global i32 0, align 4
@NES_WQE_ALLOC = common dso_local global i64 0, align 8
@NES_DBG_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Waiting for CQP, cqp_head=%u, cqp.sq_head=%u, cqp.sq_tail=%u, cqp.sq_size=%u\0A\00", align 1
@NES_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [99 x i8] c"Destroy NIC QP returned, wait_event_timeout ret = %u, cqp_head=%u, cqp.sq_head=%u, cqp.sq_tail=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"NIC QP%u destroy timeout expired\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_destroy_nic_qp(%struct.nes_vnic* %0) #0 {
  %2 = alloca %struct.nes_vnic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.nes_device*, align 8
  %6 = alloca %struct.nes_hw_cqp_wqe*, align 8
  %7 = alloca %struct.nes_hw_nic_sq_wqe*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.nes_rskb_cb*, align 8
  %15 = alloca i32, align 4
  store %struct.nes_vnic* %0, %struct.nes_vnic** %2, align 8
  %16 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %17 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %16, i32 0, i32 5
  %18 = load %struct.nes_device*, %struct.nes_device** %17, align 8
  store %struct.nes_device* %18, %struct.nes_device** %5, align 8
  %19 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %20 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %19, i32 0, i32 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %27 = call i32 @nes_destroy_mgt(%struct.nes_vnic* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %30 = load i32, i32* @NES_IDX_WQM_CONFIG0, align 4
  %31 = call i32 @nes_read_indexed(%struct.nes_device* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %33 = load i32, i32* @NES_IDX_WQM_CONFIG0, align 4
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, -32769
  %36 = call i32 @nes_write_indexed(%struct.nes_device* %32, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %47, %28
  %38 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %39 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %43 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %97

47:                                               ; preds = %37
  %48 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %49 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 10
  %51 = load %struct.sk_buff**, %struct.sk_buff*** %50, align 8
  %52 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %53 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %51, i64 %55
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %13, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = bitcast i32* %61 to %struct.nes_rskb_cb*
  store %struct.nes_rskb_cb* %62, %struct.nes_rskb_cb** %14, align 8
  %63 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %64 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %14, align 8
  %67 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %14, align 8
  %70 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %73 = call i32 @pci_unmap_single(i32 %65, i64 %68, i64 %71, i32 %72)
  %74 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %75 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 10
  %77 = load %struct.sk_buff**, %struct.sk_buff*** %76, align 8
  %78 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %79 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %77, i64 %81
  %84 = load %struct.sk_buff*, %struct.sk_buff** %83, align 8
  %85 = call i32 @dev_kfree_skb(%struct.sk_buff* %84)
  %86 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %87 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %93 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = and i64 %95, %91
  store i64 %96, i64* %94, align 8
  br label %37

97:                                               ; preds = %37
  br label %98

98:                                               ; preds = %258, %97
  %99 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %100 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %104 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %102, %106
  br i1 %107, label %108, label %274

108:                                              ; preds = %98
  %109 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %110 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 9
  %112 = load %struct.nes_hw_nic_sq_wqe*, %struct.nes_hw_nic_sq_wqe** %111, align 8
  %113 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %114 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.nes_hw_nic_sq_wqe, %struct.nes_hw_nic_sq_wqe* %112, i64 %116
  store %struct.nes_hw_nic_sq_wqe* %117, %struct.nes_hw_nic_sq_wqe** %7, align 8
  store i64 1, i64* %9, align 8
  %118 = load %struct.nes_hw_nic_sq_wqe*, %struct.nes_hw_nic_sq_wqe** %7, align 8
  %119 = getelementptr inbounds %struct.nes_hw_nic_sq_wqe, %struct.nes_hw_nic_sq_wqe* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @NES_NIC_SQ_WQE_LENGTH_0_TAG_IDX, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = bitcast i32* %122 to i64*
  store i64* %123, i64** %8, align 8
  %124 = load i64*, i64** %8, align 8
  %125 = getelementptr inbounds i64, i64* %124, i32 1
  store i64* %125, i64** %8, align 8
  %126 = load i64*, i64** %8, align 8
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @le16_to_cpu(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %234

132:                                              ; preds = %108
  %133 = load %struct.nes_hw_nic_sq_wqe*, %struct.nes_hw_nic_sq_wqe** %7, align 8
  %134 = getelementptr inbounds %struct.nes_hw_nic_sq_wqe, %struct.nes_hw_nic_sq_wqe* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* @NES_NIC_SQ_WQE_FRAG0_LOW_IDX, align 8
  %137 = load i64, i64* %9, align 8
  %138 = mul i64 %137, 2
  %139 = add i64 %136, %138
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @le32_to_cpu(i32 %141)
  store i32 %142, i32* %3, align 4
  %143 = load %struct.nes_hw_nic_sq_wqe*, %struct.nes_hw_nic_sq_wqe** %7, align 8
  %144 = getelementptr inbounds %struct.nes_hw_nic_sq_wqe, %struct.nes_hw_nic_sq_wqe* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* @NES_NIC_SQ_WQE_FRAG0_HIGH_IDX, align 8
  %147 = load i64, i64* %9, align 8
  %148 = mul i64 %147, 2
  %149 = add i64 %146, %148
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @le32_to_cpu(i32 %151)
  %153 = shl i32 %152, 32
  %154 = load i32, i32* %3, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %4, align 8
  %158 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %159 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %163 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @test_and_clear_bit(i64 %161, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %132
  %169 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %170 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i64, i64* %4, align 8
  %173 = load i64*, i64** %8, align 8
  %174 = load i64, i64* %9, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %9, align 8
  %176 = getelementptr inbounds i64, i64* %173, i64 %174
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @le16_to_cpu(i64 %177)
  %179 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %180 = call i32 @pci_unmap_single(i32 %171, i64 %172, i64 %178, i32 %179)
  br label %181

181:                                              ; preds = %168, %132
  br label %182

182:                                              ; preds = %230, %181
  %183 = load i64, i64* %9, align 8
  %184 = icmp ult i64 %183, 5
  br i1 %184, label %185, label %233

185:                                              ; preds = %182
  %186 = load i64*, i64** %8, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %228

191:                                              ; preds = %185
  %192 = load %struct.nes_hw_nic_sq_wqe*, %struct.nes_hw_nic_sq_wqe** %7, align 8
  %193 = getelementptr inbounds %struct.nes_hw_nic_sq_wqe, %struct.nes_hw_nic_sq_wqe* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* @NES_NIC_SQ_WQE_FRAG0_LOW_IDX, align 8
  %196 = load i64, i64* %9, align 8
  %197 = mul i64 %196, 2
  %198 = add i64 %195, %197
  %199 = getelementptr inbounds i32, i32* %194, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @le32_to_cpu(i32 %200)
  store i32 %201, i32* %3, align 4
  %202 = load %struct.nes_hw_nic_sq_wqe*, %struct.nes_hw_nic_sq_wqe** %7, align 8
  %203 = getelementptr inbounds %struct.nes_hw_nic_sq_wqe, %struct.nes_hw_nic_sq_wqe* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* @NES_NIC_SQ_WQE_FRAG0_HIGH_IDX, align 8
  %206 = load i64, i64* %9, align 8
  %207 = mul i64 %206, 2
  %208 = add i64 %205, %207
  %209 = getelementptr inbounds i32, i32* %204, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @le32_to_cpu(i32 %210)
  %212 = shl i32 %211, 32
  %213 = load i32, i32* %3, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %3, align 4
  %215 = load i32, i32* %3, align 4
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %4, align 8
  %217 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %218 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i64, i64* %4, align 8
  %221 = load i64*, i64** %8, align 8
  %222 = load i64, i64* %9, align 8
  %223 = getelementptr inbounds i64, i64* %221, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = call i64 @le16_to_cpu(i64 %224)
  %226 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %227 = call i32 @pci_unmap_page(i32 %219, i64 %220, i64 %225, i32 %226)
  br label %229

228:                                              ; preds = %185
  br label %233

229:                                              ; preds = %191
  br label %230

230:                                              ; preds = %229
  %231 = load i64, i64* %9, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %9, align 8
  br label %182

233:                                              ; preds = %228, %182
  br label %234

234:                                              ; preds = %233, %108
  %235 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %236 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 7
  %238 = load %struct.sk_buff**, %struct.sk_buff*** %237, align 8
  %239 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %240 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %238, i64 %242
  %244 = load %struct.sk_buff*, %struct.sk_buff** %243, align 8
  %245 = icmp ne %struct.sk_buff* %244, null
  br i1 %245, label %246, label %258

246:                                              ; preds = %234
  %247 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %248 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 7
  %250 = load %struct.sk_buff**, %struct.sk_buff*** %249, align 8
  %251 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %252 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %250, i64 %254
  %256 = load %struct.sk_buff*, %struct.sk_buff** %255, align 8
  %257 = call i32 @dev_kfree_skb(%struct.sk_buff* %256)
  br label %258

258:                                              ; preds = %246, %234
  %259 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %260 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = add i64 %262, 1
  %264 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %265 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 8
  %268 = sub nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = and i64 %263, %269
  %271 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %272 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 4
  store i64 %270, i64* %273, align 8
  br label %98

274:                                              ; preds = %98
  %275 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %276 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 5
  %278 = load i64, i64* %12, align 8
  %279 = call i32 @spin_lock_irqsave(i32* %277, i64 %278)
  %280 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %281 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  store i32 %283, i32* %10, align 4
  %284 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %285 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 6
  %287 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %286, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %287, i64 %289
  store %struct.nes_hw_cqp_wqe* %290, %struct.nes_hw_cqp_wqe** %6, align 8
  %291 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %6, align 8
  %292 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %293 = call i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe* %291, %struct.nes_device* %292)
  %294 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %6, align 8
  %295 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @NES_CQP_WQE_OPCODE_IDX, align 4
  %298 = load i32, i32* @NES_CQP_DESTROY_QP, align 4
  %299 = load i32, i32* @NES_CQP_QP_TYPE_NIC, align 4
  %300 = or i32 %298, %299
  %301 = call i32 @set_wqe_32bit_value(i32 %296, i32 %297, i32 %300)
  %302 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %6, align 8
  %303 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @NES_CQP_WQE_ID_IDX, align 4
  %306 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %307 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @set_wqe_32bit_value(i32 %304, i32 %305, i32 %309)
  %311 = load i32, i32* %10, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %10, align 4
  %313 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %314 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = icmp sge i32 %312, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %274
  store i32 0, i32* %10, align 4
  br label %319

319:                                              ; preds = %318, %274
  %320 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %321 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 6
  %323 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %322, align 8
  %324 = load i32, i32* %10, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %323, i64 %325
  store %struct.nes_hw_cqp_wqe* %326, %struct.nes_hw_cqp_wqe** %6, align 8
  %327 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %6, align 8
  %328 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %329 = call i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe* %327, %struct.nes_device* %328)
  %330 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %6, align 8
  %331 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @NES_CQP_WQE_OPCODE_IDX, align 4
  %334 = load i32, i32* @NES_CQP_DESTROY_CQ, align 4
  %335 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %336 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %335, i32 0, i32 4
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = trunc i64 %338 to i32
  %340 = shl i32 %339, 16
  %341 = or i32 %334, %340
  %342 = call i32 @set_wqe_32bit_value(i32 %332, i32 %333, i32 %341)
  %343 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %6, align 8
  %344 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @NES_CQP_WQE_ID_IDX, align 4
  %347 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %348 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %347, i32 0, i32 4
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %352 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %351, i32 0, i32 3
  %353 = load i64, i64* %352, align 8
  %354 = trunc i64 %353 to i32
  %355 = shl i32 %354, 16
  %356 = or i32 %350, %355
  %357 = call i32 @set_wqe_32bit_value(i32 %345, i32 %346, i32 %356)
  %358 = load i32, i32* %10, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %10, align 4
  %360 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %361 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = icmp sge i32 %359, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %319
  store i32 0, i32* %10, align 4
  br label %366

366:                                              ; preds = %365, %319
  %367 = load i32, i32* %10, align 4
  %368 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %369 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 0
  store i32 %367, i32* %370, align 8
  %371 = call i32 (...) @barrier()
  %372 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %373 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @NES_WQE_ALLOC, align 8
  %376 = add nsw i64 %374, %375
  %377 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %378 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = or i32 41943040, %380
  %382 = call i32 @nes_write32(i64 %376, i32 %381)
  %383 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %384 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 5
  %386 = load i64, i64* %12, align 8
  %387 = call i32 @spin_unlock_irqrestore(i32* %385, i64 %386)
  %388 = load i32, i32* @NES_DBG_SHUTDOWN, align 4
  %389 = load i32, i32* %10, align 4
  %390 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %391 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %395 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %399 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %388, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %389, i32 %393, i32 %397, i32 %401)
  %403 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %404 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %408 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* %10, align 4
  %412 = icmp eq i32 %410, %411
  %413 = zext i1 %412 to i32
  %414 = load i32, i32* @NES_EVENT_TIMEOUT, align 4
  %415 = call i32 @wait_event_timeout(i32 %406, i32 %413, i32 %414)
  store i32 %415, i32* %15, align 4
  %416 = load i32, i32* @NES_DBG_SHUTDOWN, align 4
  %417 = load i32, i32* %15, align 4
  %418 = load i32, i32* %10, align 4
  %419 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %420 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %424 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %416, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %417, i32 %418, i32 %422, i32 %426)
  %428 = load i32, i32* %15, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %437, label %430

430:                                              ; preds = %366
  %431 = load i32, i32* @NES_DBG_SHUTDOWN, align 4
  %432 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %433 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %432, i32 0, i32 3
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 6
  %435 = load i32, i32* %434, align 4
  %436 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %431, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %435)
  br label %437

437:                                              ; preds = %430, %366
  %438 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %439 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %442 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %445 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %448 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = call i32 @pci_free_consistent(i32 %440, i32 %443, i32 %446, i32 %449)
  %451 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %452 = load i32, i32* @NES_IDX_WQM_CONFIG0, align 4
  %453 = load i32, i32* %11, align 4
  %454 = call i32 @nes_write_indexed(%struct.nes_device* %451, i32 %452, i32 %453)
  ret void
}

declare dso_local i32 @nes_destroy_mgt(%struct.nes_vnic*) #1

declare dso_local i32 @nes_read_indexed(%struct.nes_device*, i32) #1

declare dso_local i32 @nes_write_indexed(%struct.nes_device*, i32, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i64, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @test_and_clear_bit(i64, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i64, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe*, %struct.nes_device*) #1

declare dso_local i32 @set_wqe_32bit_value(i32, i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @nes_write32(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nes_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
