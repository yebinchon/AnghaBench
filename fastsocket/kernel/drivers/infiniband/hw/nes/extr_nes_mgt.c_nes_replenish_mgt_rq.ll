; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_replenish_mgt_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_replenish_mgt_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_vnic_mgt = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__*, %struct.nes_hw_mgt }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32, i32, %struct.nes_device* }
%struct.nes_device = type { i64, i32 }
%struct.nes_hw_mgt = type { i32, i32, i64, i32, i32, %struct.sk_buff**, %struct.nes_hw_nic_rq_wqe* }
%struct.sk_buff = type { i32*, i32, i32 }
%struct.nes_hw_nic_rq_wqe = type { i8** }
%struct.nes_rskb_cb = type { i32, i64 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@NES_NIC_RQ_WQE_LENGTH_1_0_IDX = common dso_local global i64 0, align 8
@NES_NIC_RQ_WQE_LENGTH_3_2_IDX = common dso_local global i64 0, align 8
@NES_NIC_RQ_WQE_FRAG0_LOW_IDX = common dso_local global i64 0, align 8
@NES_NIC_RQ_WQE_FRAG0_HIGH_IDX = common dso_local global i64 0, align 8
@NES_WQE_ALLOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_vnic_mgt*)* @nes_replenish_mgt_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_replenish_mgt_rq(%struct.nes_vnic_mgt* %0) #0 {
  %2 = alloca %struct.nes_vnic_mgt*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nes_hw_nic_rq_wqe*, align 8
  %7 = alloca %struct.nes_hw_mgt*, align 8
  %8 = alloca %struct.nes_device*, align 8
  %9 = alloca %struct.nes_rskb_cb*, align 8
  %10 = alloca i32, align 4
  store %struct.nes_vnic_mgt* %0, %struct.nes_vnic_mgt** %2, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %12 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %11, i32 0, i32 4
  store %struct.nes_hw_mgt* %12, %struct.nes_hw_mgt** %7, align 8
  %13 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %14 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load %struct.nes_device*, %struct.nes_device** %16, align 8
  store %struct.nes_device* %17, %struct.nes_device** %8, align 8
  %18 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %19 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %18, i32 0, i32 4
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %23 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %1
  %27 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %28 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %32 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %31, i32 0, i32 2
  %33 = call i32 @atomic_read(i32* %32)
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %26
  %36 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %37 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %36, i32 0, i32 1
  %38 = call i32 @atomic_read(i32* %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %42 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %41, i32 0, i32 1
  %43 = call i32 @atomic_set(i32* %42, i32 1)
  %44 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %45 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %44, i32 0, i32 4
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i8*, i8** @jiffies, align 8
  %49 = load i32, i32* @HZ, align 4
  %50 = sdiv i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %48, i64 %51
  %53 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %54 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %57 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %56, i32 0, i32 0
  %58 = call i32 @add_timer(%struct.TYPE_4__* %57)
  br label %64

59:                                               ; preds = %35, %26
  %60 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %61 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %60, i32 0, i32 4
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %59, %40
  br label %269

65:                                               ; preds = %1
  %66 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %67 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %69 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %68, i32 0, i32 4
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %244, %65
  %73 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %74 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %73, i32 0, i32 3
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.sk_buff* @dev_alloc_skb(i32 %77)
  store %struct.sk_buff* %78, %struct.sk_buff** %5, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %81, label %200

81:                                               ; preds = %72
  %82 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %83 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %82, i32 0, i32 3
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.nes_device*, %struct.nes_device** %8, align 8
  %90 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %96 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %95, i32 0, i32 3
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %101 = call i64 @pci_map_single(i32 %91, i32 %94, i32 %99, i32 %100)
  store i64 %101, i64* %4, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = bitcast i32* %105 to %struct.nes_rskb_cb*
  store %struct.nes_rskb_cb* %106, %struct.nes_rskb_cb** %9, align 8
  %107 = load i64, i64* %4, align 8
  %108 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %9, align 8
  %109 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %111 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %110, i32 0, i32 3
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %9, align 8
  %116 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %118 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %117, i32 0, i32 6
  %119 = load %struct.nes_hw_nic_rq_wqe*, %struct.nes_hw_nic_rq_wqe** %118, align 8
  %120 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %121 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.nes_hw_nic_rq_wqe, %struct.nes_hw_nic_rq_wqe* %119, i64 %123
  store %struct.nes_hw_nic_rq_wqe* %124, %struct.nes_hw_nic_rq_wqe** %6, align 8
  %125 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %126 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %125, i32 0, i32 3
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i8* @cpu_to_le32(i32 %129)
  %131 = load %struct.nes_hw_nic_rq_wqe*, %struct.nes_hw_nic_rq_wqe** %6, align 8
  %132 = getelementptr inbounds %struct.nes_hw_nic_rq_wqe, %struct.nes_hw_nic_rq_wqe* %131, i32 0, i32 0
  %133 = load i8**, i8*** %132, align 8
  %134 = load i64, i64* @NES_NIC_RQ_WQE_LENGTH_1_0_IDX, align 8
  %135 = getelementptr inbounds i8*, i8** %133, i64 %134
  store i8* %130, i8** %135, align 8
  %136 = load %struct.nes_hw_nic_rq_wqe*, %struct.nes_hw_nic_rq_wqe** %6, align 8
  %137 = getelementptr inbounds %struct.nes_hw_nic_rq_wqe, %struct.nes_hw_nic_rq_wqe* %136, i32 0, i32 0
  %138 = load i8**, i8*** %137, align 8
  %139 = load i64, i64* @NES_NIC_RQ_WQE_LENGTH_3_2_IDX, align 8
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139
  store i8* null, i8** %140, align 8
  %141 = load i64, i64* %4, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.nes_hw_nic_rq_wqe*, %struct.nes_hw_nic_rq_wqe** %6, align 8
  %145 = getelementptr inbounds %struct.nes_hw_nic_rq_wqe, %struct.nes_hw_nic_rq_wqe* %144, i32 0, i32 0
  %146 = load i8**, i8*** %145, align 8
  %147 = load i64, i64* @NES_NIC_RQ_WQE_FRAG0_LOW_IDX, align 8
  %148 = getelementptr inbounds i8*, i8** %146, i64 %147
  store i8* %143, i8** %148, align 8
  %149 = load i64, i64* %4, align 8
  %150 = trunc i64 %149 to i32
  %151 = ashr i32 %150, 32
  %152 = call i8* @cpu_to_le32(i32 %151)
  %153 = load %struct.nes_hw_nic_rq_wqe*, %struct.nes_hw_nic_rq_wqe** %6, align 8
  %154 = getelementptr inbounds %struct.nes_hw_nic_rq_wqe, %struct.nes_hw_nic_rq_wqe* %153, i32 0, i32 0
  %155 = load i8**, i8*** %154, align 8
  %156 = load i64, i64* @NES_NIC_RQ_WQE_FRAG0_HIGH_IDX, align 8
  %157 = getelementptr inbounds i8*, i8** %155, i64 %156
  store i8* %152, i8** %157, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %159 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %160 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %159, i32 0, i32 5
  %161 = load %struct.sk_buff**, %struct.sk_buff*** %160, align 8
  %162 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %163 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %161, i64 %164
  store %struct.sk_buff* %158, %struct.sk_buff** %165, align 8
  %166 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %167 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %167, align 8
  %170 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %171 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %176 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = and i64 %177, %174
  store i64 %178, i64* %176, align 8
  %179 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %180 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %179, i32 0, i32 2
  %181 = call i32 @atomic_dec(i32* %180)
  %182 = call i32 (...) @barrier()
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  %185 = icmp eq i32 %184, 255
  br i1 %185, label %186, label %199

186:                                              ; preds = %81
  %187 = load %struct.nes_device*, %struct.nes_device** %8, align 8
  %188 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @NES_WQE_ALLOC, align 8
  %191 = add nsw i64 %189, %190
  %192 = load i32, i32* %10, align 4
  %193 = shl i32 %192, 24
  %194 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %195 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %193, %196
  %198 = call i32 @nes_write32(i64 %191, i32 %197)
  store i32 0, i32* %10, align 4
  br label %199

199:                                              ; preds = %186, %81
  br label %243

200:                                              ; preds = %72
  %201 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %202 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %201, i32 0, i32 4
  %203 = load i64, i64* %3, align 8
  %204 = call i32 @spin_lock_irqsave(i32* %202, i64 %203)
  %205 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %206 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %207, 1
  %209 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %210 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %209, i32 0, i32 2
  %211 = call i32 @atomic_read(i32* %210)
  %212 = icmp eq i32 %208, %211
  br i1 %212, label %213, label %237

213:                                              ; preds = %200
  %214 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %215 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %214, i32 0, i32 1
  %216 = call i32 @atomic_read(i32* %215)
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %237

218:                                              ; preds = %213
  %219 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %220 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %219, i32 0, i32 1
  %221 = call i32 @atomic_set(i32* %220, i32 1)
  %222 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %223 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %222, i32 0, i32 4
  %224 = load i64, i64* %3, align 8
  %225 = call i32 @spin_unlock_irqrestore(i32* %223, i64 %224)
  %226 = load i8*, i8** @jiffies, align 8
  %227 = load i32, i32* @HZ, align 4
  %228 = sdiv i32 %227, 2
  %229 = sext i32 %228 to i64
  %230 = getelementptr i8, i8* %226, i64 %229
  %231 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %232 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  store i8* %230, i8** %233, align 8
  %234 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %235 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %234, i32 0, i32 0
  %236 = call i32 @add_timer(%struct.TYPE_4__* %235)
  br label %242

237:                                              ; preds = %213, %200
  %238 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %239 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %238, i32 0, i32 4
  %240 = load i64, i64* %3, align 8
  %241 = call i32 @spin_unlock_irqrestore(i32* %239, i64 %240)
  br label %242

242:                                              ; preds = %237, %218
  br label %249

243:                                              ; preds = %199
  br label %244

244:                                              ; preds = %243
  %245 = load %struct.nes_vnic_mgt*, %struct.nes_vnic_mgt** %2, align 8
  %246 = getelementptr inbounds %struct.nes_vnic_mgt, %struct.nes_vnic_mgt* %245, i32 0, i32 2
  %247 = call i32 @atomic_read(i32* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %72, label %249

249:                                              ; preds = %244, %242
  %250 = call i32 (...) @barrier()
  %251 = load i32, i32* %10, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %249
  %254 = load %struct.nes_device*, %struct.nes_device** %8, align 8
  %255 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @NES_WQE_ALLOC, align 8
  %258 = add nsw i64 %256, %257
  %259 = load i32, i32* %10, align 4
  %260 = shl i32 %259, 24
  %261 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %262 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = or i32 %260, %263
  %265 = call i32 @nes_write32(i64 %258, i32 %264)
  br label %266

266:                                              ; preds = %253, %249
  %267 = load %struct.nes_hw_mgt*, %struct.nes_hw_mgt** %7, align 8
  %268 = getelementptr inbounds %struct.nes_hw_mgt, %struct.nes_hw_mgt* %267, i32 0, i32 0
  store i32 0, i32* %268, align 8
  br label %269

269:                                              ; preds = %266, %64
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @nes_write32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
