; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_replenish_nic_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_replenish_nic_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_vnic = type { i32, %struct.TYPE_2__, i32, i32, %struct.nes_hw_nic, i32, %struct.nes_device* }
%struct.TYPE_2__ = type { i8* }
%struct.nes_hw_nic = type { i32, i32, i64, i32, i32, %struct.sk_buff**, %struct.nes_hw_nic_rq_wqe* }
%struct.sk_buff = type { i32*, i32, i32 }
%struct.nes_hw_nic_rq_wqe = type { i8** }
%struct.nes_device = type { i64, i32 }
%struct.nes_rskb_cb = type { i32, i64 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@NES_NIC_RQ_WQE_LENGTH_1_0_IDX = common dso_local global i64 0, align 8
@NES_NIC_RQ_WQE_LENGTH_3_2_IDX = common dso_local global i64 0, align 8
@NES_NIC_RQ_WQE_FRAG0_LOW_IDX = common dso_local global i64 0, align 8
@NES_NIC_RQ_WQE_FRAG0_HIGH_IDX = common dso_local global i64 0, align 8
@NES_WQE_ALLOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_vnic*)* @nes_replenish_nic_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_replenish_nic_rq(%struct.nes_vnic* %0) #0 {
  %2 = alloca %struct.nes_vnic*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nes_hw_nic_rq_wqe*, align 8
  %7 = alloca %struct.nes_hw_nic*, align 8
  %8 = alloca %struct.nes_device*, align 8
  %9 = alloca %struct.nes_rskb_cb*, align 8
  %10 = alloca i32, align 4
  store %struct.nes_vnic* %0, %struct.nes_vnic** %2, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %12 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %11, i32 0, i32 4
  store %struct.nes_hw_nic* %12, %struct.nes_hw_nic** %7, align 8
  %13 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %14 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %13, i32 0, i32 6
  %15 = load %struct.nes_device*, %struct.nes_device** %14, align 8
  store %struct.nes_device* %15, %struct.nes_device** %8, align 8
  %16 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %17 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %16, i32 0, i32 4
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %21 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %1
  %25 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %26 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %30 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %29, i32 0, i32 3
  %31 = call i32 @atomic_read(i32* %30)
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %24
  %34 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %35 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %34, i32 0, i32 2
  %36 = call i32 @atomic_read(i32* %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %40 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %39, i32 0, i32 2
  %41 = call i32 @atomic_set(i32* %40, i32 1)
  %42 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %43 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %42, i32 0, i32 4
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i8*, i8** @jiffies, align 8
  %47 = load i32, i32* @HZ, align 4
  %48 = sdiv i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %46, i64 %49
  %51 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %52 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %55 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %54, i32 0, i32 1
  %56 = call i32 @add_timer(%struct.TYPE_2__* %55)
  br label %62

57:                                               ; preds = %33, %24
  %58 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %59 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %58, i32 0, i32 4
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %38
  br label %257

63:                                               ; preds = %1
  %64 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %65 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %67 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %66, i32 0, i32 4
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  br label %70

70:                                               ; preds = %232, %63
  %71 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %72 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.sk_buff* @dev_alloc_skb(i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %5, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %77, label %188

77:                                               ; preds = %70
  %78 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %79 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.nes_device*, %struct.nes_device** %8, align 8
  %84 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %90 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %93 = call i64 @pci_map_single(i32 %85, i32 %88, i32 %91, i32 %92)
  store i64 %93, i64* %4, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = bitcast i32* %97 to %struct.nes_rskb_cb*
  store %struct.nes_rskb_cb* %98, %struct.nes_rskb_cb** %9, align 8
  %99 = load i64, i64* %4, align 8
  %100 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %9, align 8
  %101 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %103 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %9, align 8
  %106 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %108 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %107, i32 0, i32 6
  %109 = load %struct.nes_hw_nic_rq_wqe*, %struct.nes_hw_nic_rq_wqe** %108, align 8
  %110 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %111 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.nes_hw_nic_rq_wqe, %struct.nes_hw_nic_rq_wqe* %109, i64 %113
  store %struct.nes_hw_nic_rq_wqe* %114, %struct.nes_hw_nic_rq_wqe** %6, align 8
  %115 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %116 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @cpu_to_le32(i32 %117)
  %119 = load %struct.nes_hw_nic_rq_wqe*, %struct.nes_hw_nic_rq_wqe** %6, align 8
  %120 = getelementptr inbounds %struct.nes_hw_nic_rq_wqe, %struct.nes_hw_nic_rq_wqe* %119, i32 0, i32 0
  %121 = load i8**, i8*** %120, align 8
  %122 = load i64, i64* @NES_NIC_RQ_WQE_LENGTH_1_0_IDX, align 8
  %123 = getelementptr inbounds i8*, i8** %121, i64 %122
  store i8* %118, i8** %123, align 8
  %124 = load %struct.nes_hw_nic_rq_wqe*, %struct.nes_hw_nic_rq_wqe** %6, align 8
  %125 = getelementptr inbounds %struct.nes_hw_nic_rq_wqe, %struct.nes_hw_nic_rq_wqe* %124, i32 0, i32 0
  %126 = load i8**, i8*** %125, align 8
  %127 = load i64, i64* @NES_NIC_RQ_WQE_LENGTH_3_2_IDX, align 8
  %128 = getelementptr inbounds i8*, i8** %126, i64 %127
  store i8* null, i8** %128, align 8
  %129 = load i64, i64* %4, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i8* @cpu_to_le32(i32 %130)
  %132 = load %struct.nes_hw_nic_rq_wqe*, %struct.nes_hw_nic_rq_wqe** %6, align 8
  %133 = getelementptr inbounds %struct.nes_hw_nic_rq_wqe, %struct.nes_hw_nic_rq_wqe* %132, i32 0, i32 0
  %134 = load i8**, i8*** %133, align 8
  %135 = load i64, i64* @NES_NIC_RQ_WQE_FRAG0_LOW_IDX, align 8
  %136 = getelementptr inbounds i8*, i8** %134, i64 %135
  store i8* %131, i8** %136, align 8
  %137 = load i64, i64* %4, align 8
  %138 = trunc i64 %137 to i32
  %139 = ashr i32 %138, 32
  %140 = call i8* @cpu_to_le32(i32 %139)
  %141 = load %struct.nes_hw_nic_rq_wqe*, %struct.nes_hw_nic_rq_wqe** %6, align 8
  %142 = getelementptr inbounds %struct.nes_hw_nic_rq_wqe, %struct.nes_hw_nic_rq_wqe* %141, i32 0, i32 0
  %143 = load i8**, i8*** %142, align 8
  %144 = load i64, i64* @NES_NIC_RQ_WQE_FRAG0_HIGH_IDX, align 8
  %145 = getelementptr inbounds i8*, i8** %143, i64 %144
  store i8* %140, i8** %145, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %148 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %147, i32 0, i32 5
  %149 = load %struct.sk_buff**, %struct.sk_buff*** %148, align 8
  %150 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %151 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %149, i64 %152
  store %struct.sk_buff* %146, %struct.sk_buff** %153, align 8
  %154 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %155 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %159 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %164 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = and i64 %165, %162
  store i64 %166, i64* %164, align 8
  %167 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %168 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %167, i32 0, i32 3
  %169 = call i32 @atomic_dec(i32* %168)
  %170 = call i32 (...) @barrier()
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  %173 = icmp eq i32 %172, 255
  br i1 %173, label %174, label %187

174:                                              ; preds = %77
  %175 = load %struct.nes_device*, %struct.nes_device** %8, align 8
  %176 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @NES_WQE_ALLOC, align 8
  %179 = add nsw i64 %177, %178
  %180 = load i32, i32* %10, align 4
  %181 = shl i32 %180, 24
  %182 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %183 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %181, %184
  %186 = call i32 @nes_write32(i64 %179, i32 %185)
  store i32 0, i32* %10, align 4
  br label %187

187:                                              ; preds = %174, %77
  br label %231

188:                                              ; preds = %70
  %189 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %190 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %189, i32 0, i32 4
  %191 = load i64, i64* %3, align 8
  %192 = call i32 @spin_lock_irqsave(i32* %190, i64 %191)
  %193 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %194 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, 1
  %197 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %198 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %197, i32 0, i32 3
  %199 = call i32 @atomic_read(i32* %198)
  %200 = icmp eq i32 %196, %199
  br i1 %200, label %201, label %225

201:                                              ; preds = %188
  %202 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %203 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %202, i32 0, i32 2
  %204 = call i32 @atomic_read(i32* %203)
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %225

206:                                              ; preds = %201
  %207 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %208 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %207, i32 0, i32 2
  %209 = call i32 @atomic_set(i32* %208, i32 1)
  %210 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %211 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %210, i32 0, i32 4
  %212 = load i64, i64* %3, align 8
  %213 = call i32 @spin_unlock_irqrestore(i32* %211, i64 %212)
  %214 = load i8*, i8** @jiffies, align 8
  %215 = load i32, i32* @HZ, align 4
  %216 = sdiv i32 %215, 2
  %217 = sext i32 %216 to i64
  %218 = getelementptr i8, i8* %214, i64 %217
  %219 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %220 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  store i8* %218, i8** %221, align 8
  %222 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %223 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %222, i32 0, i32 1
  %224 = call i32 @add_timer(%struct.TYPE_2__* %223)
  br label %230

225:                                              ; preds = %201, %188
  %226 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %227 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %226, i32 0, i32 4
  %228 = load i64, i64* %3, align 8
  %229 = call i32 @spin_unlock_irqrestore(i32* %227, i64 %228)
  br label %230

230:                                              ; preds = %225, %206
  br label %237

231:                                              ; preds = %187
  br label %232

232:                                              ; preds = %231
  %233 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %234 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %233, i32 0, i32 3
  %235 = call i32 @atomic_read(i32* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %70, label %237

237:                                              ; preds = %232, %230
  %238 = call i32 (...) @barrier()
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %254

241:                                              ; preds = %237
  %242 = load %struct.nes_device*, %struct.nes_device** %8, align 8
  %243 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @NES_WQE_ALLOC, align 8
  %246 = add nsw i64 %244, %245
  %247 = load i32, i32* %10, align 4
  %248 = shl i32 %247, 24
  %249 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %250 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %248, %251
  %253 = call i32 @nes_write32(i64 %246, i32 %252)
  br label %254

254:                                              ; preds = %241, %237
  %255 = load %struct.nes_hw_nic*, %struct.nes_hw_nic** %7, align 8
  %256 = getelementptr inbounds %struct.nes_hw_nic, %struct.nes_hw_nic* %255, i32 0, i32 0
  store i32 0, i32* %256, align 8
  br label %257

257:                                              ; preds = %254, %62
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

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
