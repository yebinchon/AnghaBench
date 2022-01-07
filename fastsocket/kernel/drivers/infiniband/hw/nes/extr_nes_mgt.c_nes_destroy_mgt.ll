; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_destroy_mgt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_destroy_mgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_vnic = type { i32, i32*, i32, %struct.nes_vnic_mgt**, i32, %struct.nes_device* }
%struct.nes_vnic_mgt = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i32, i64, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.nes_device = type { i32, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i32, i64, i32, i32, %struct.nes_hw_cqp_wqe* }
%struct.nes_hw_cqp_wqe = type { i32 }

@NES_MGT_QP_COUNT = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@NES_CQP_WQE_OPCODE_IDX = common dso_local global i32 0, align 4
@NES_CQP_DESTROY_QP = common dso_local global i64 0, align 8
@NES_CQP_QP_TYPE_NIC = common dso_local global i64 0, align 8
@NES_CQP_WQE_ID_IDX = common dso_local global i32 0, align 4
@NES_CQP_DESTROY_CQ = common dso_local global i64 0, align 8
@NES_WQE_ALLOC = common dso_local global i64 0, align 8
@NES_DBG_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Waiting for CQP, cqp_head=%u, cqp.sq_head=%u, cqp.sq_tail=%u, cqp.sq_size=%u\0A\00", align 1
@NES_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [99 x i8] c"Destroy MGT QP returned, wait_event_timeout ret = %u, cqp_head=%u, cqp.sq_head=%u, cqp.sq_tail=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"MGT QP%u destroy timeout expired\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_destroy_mgt(%struct.nes_vnic* %0) #0 {
  %2 = alloca %struct.nes_vnic*, align 8
  %3 = alloca %struct.nes_device*, align 8
  %4 = alloca %struct.nes_vnic_mgt*, align 8
  %5 = alloca %struct.nes_vnic_mgt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nes_hw_cqp_wqe*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nes_vnic* %0, %struct.nes_vnic** %2, align 8
  %12 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %13 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %12, i32 0, i32 5
  %14 = load %struct.nes_device*, %struct.nes_device** %13, align 8
  store %struct.nes_device* %14, %struct.nes_device** %3, align 8
  %15 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %16 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @kthread_stop(i32 %17)
  %19 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %20 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %19, i32 0, i32 3
  %21 = load %struct.nes_vnic_mgt**, %struct.nes_vnic_mgt*** %20, align 8
  %22 = getelementptr inbounds %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %21, i64 0
  %23 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %22, align 8
  store %struct.nes_vnic_mgt* %23, %struct.nes_vnic_mgt** %5, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %248, %1
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @NES_MGT_QP_COUNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %251

28:                                               ; preds = %24
  %29 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %30 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %29, i32 0, i32 3
  %31 = load %struct.nes_vnic_mgt**, %struct.nes_vnic_mgt*** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %31, i64 %33
  %35 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %34, align 8
  store %struct.nes_vnic_mgt* %35, %struct.nes_vnic_mgt** %4, align 8
  %36 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %4, align 8
  %37 = icmp eq %struct.nes_vnic_mgt* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %248

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %50, %39
  %41 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %4, align 8
  %42 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %4, align 8
  %46 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %40
  %51 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %4, align 8
  %52 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = load %struct.sk_buff**, %struct.sk_buff*** %53, align 8
  %55 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %4, align 8
  %56 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %54, i64 %58
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  store %struct.sk_buff* %60, %struct.sk_buff** %9, align 8
  %61 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %64 = call i32 @nes_mgt_free_skb(%struct.nes_device* %61, %struct.sk_buff* %62, i32 %63)
  %65 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %4, align 8
  %66 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %4, align 8
  %71 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %4, align 8
  %77 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = and i64 %79, %75
  store i64 %80, i64* %78, align 8
  br label %40

81:                                               ; preds = %40
  %82 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %83 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 5
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %88 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %8, align 8
  %91 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %92 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 6
  %94 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %94, i64 %95
  store %struct.nes_hw_cqp_wqe* %96, %struct.nes_hw_cqp_wqe** %7, align 8
  %97 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %98 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %99 = call i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe* %97, %struct.nes_device* %98)
  %100 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %101 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @NES_CQP_WQE_OPCODE_IDX, align 4
  %104 = load i64, i64* @NES_CQP_DESTROY_QP, align 8
  %105 = load i64, i64* @NES_CQP_QP_TYPE_NIC, align 8
  %106 = or i64 %104, %105
  %107 = call i32 @set_wqe_32bit_value(i32 %102, i32 %103, i64 %106)
  %108 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %109 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @NES_CQP_WQE_ID_IDX, align 4
  %112 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %4, align 8
  %113 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @set_wqe_32bit_value(i32 %110, i32 %111, i64 %115)
  %117 = load i64, i64* %8, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %8, align 8
  %119 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %120 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp uge i64 %118, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %81
  store i64 0, i64* %8, align 8
  br label %125

125:                                              ; preds = %124, %81
  %126 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %127 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 6
  %129 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %128, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %129, i64 %130
  store %struct.nes_hw_cqp_wqe* %131, %struct.nes_hw_cqp_wqe** %7, align 8
  %132 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %133 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %134 = call i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe* %132, %struct.nes_device* %133)
  %135 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %136 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @NES_CQP_WQE_OPCODE_IDX, align 4
  %139 = load i64, i64* @NES_CQP_DESTROY_CQ, align 8
  %140 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %4, align 8
  %141 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = shl i64 %143, 16
  %145 = or i64 %139, %144
  %146 = call i32 @set_wqe_32bit_value(i32 %137, i32 %138, i64 %145)
  %147 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %148 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @NES_CQP_WQE_ID_IDX, align 4
  %151 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %4, align 8
  %152 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %156 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = shl i64 %157, 16
  %159 = or i64 %154, %158
  %160 = call i32 @set_wqe_32bit_value(i32 %149, i32 %150, i64 %159)
  %161 = load i64, i64* %8, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %8, align 8
  %163 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %164 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp uge i64 %162, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %125
  store i64 0, i64* %8, align 8
  br label %169

169:                                              ; preds = %168, %125
  %170 = load i64, i64* %8, align 8
  %171 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %172 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  store i64 %170, i64* %173, align 8
  %174 = call i32 (...) @barrier()
  %175 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %176 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @NES_WQE_ALLOC, align 8
  %179 = add nsw i64 %177, %178
  %180 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %181 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = or i32 41943040, %183
  %185 = call i32 @nes_write32(i64 %179, i32 %184)
  %186 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %187 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 5
  %189 = load i64, i64* %6, align 8
  %190 = call i32 @spin_unlock_irqrestore(i32* %188, i64 %189)
  %191 = load i32, i32* @NES_DBG_SHUTDOWN, align 4
  %192 = load i64, i64* %8, align 8
  %193 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %194 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %198 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %202 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = call i32 (i32, i8*, i64, ...) @nes_debug(i32 %191, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %192, i64 %196, i64 %200, i64 %204)
  %206 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %207 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %211 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %8, align 8
  %215 = icmp eq i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* @NES_EVENT_TIMEOUT, align 4
  %218 = call i32 @wait_event_timeout(i32 %209, i32 %216, i32 %217)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* @NES_DBG_SHUTDOWN, align 4
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = load i64, i64* %8, align 8
  %223 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %224 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %228 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = call i32 (i32, i8*, i64, ...) @nes_debug(i32 %219, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i64 %221, i64 %222, i64 %226, i64 %230)
  %232 = load i32, i32* %11, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %241, label %234

234:                                              ; preds = %169
  %235 = load i32, i32* @NES_DBG_SHUTDOWN, align 4
  %236 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %4, align 8
  %237 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = call i32 (i32, i8*, i64, ...) @nes_debug(i32 %235, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %239)
  br label %241

241:                                              ; preds = %234, %169
  %242 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %243 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %242, i32 0, i32 3
  %244 = load %struct.nes_vnic_mgt**, %struct.nes_vnic_mgt*** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %244, i64 %246
  store %struct.nes_vnic_mgt* null, %struct.nes_vnic_mgt** %247, align 8
  br label %248

248:                                              ; preds = %241, %38
  %249 = load i32, i32* %10, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %10, align 4
  br label %24

251:                                              ; preds = %24
  %252 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %253 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %274

256:                                              ; preds = %251
  %257 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %258 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %261 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %264 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %267 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @pci_free_consistent(i32 %259, i32 %262, i32* %265, i32 %268)
  %270 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %271 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %270, i32 0, i32 1
  store i32* null, i32** %271, align 8
  %272 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %273 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %272, i32 0, i32 0
  store i32 0, i32* %273, align 8
  br label %274

274:                                              ; preds = %256, %251
  %275 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %5, align 8
  %276 = call i32 @kfree(%struct.nes_vnic_mgt* %275)
  ret void
}

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @nes_mgt_free_skb(%struct.nes_device*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe*, %struct.nes_device*) #1

declare dso_local i32 @set_wqe_32bit_value(i32, i32, i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @nes_write32(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nes_debug(i32, i8*, i64, ...) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.nes_vnic_mgt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
