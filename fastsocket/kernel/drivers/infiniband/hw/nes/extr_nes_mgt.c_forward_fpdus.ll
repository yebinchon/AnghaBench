; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_forward_fpdus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_forward_fpdus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_vnic = type { i64, %struct.nes_device* }
%struct.nes_device = type { i32 }
%struct.nes_qp = type { i32 }
%struct.pau_fpdu_info = type { i32, %struct.TYPE_2__*, i64, i64, %struct.nes_cqp_request* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nes_cqp_request = type { i32, i32, i32, %struct.pau_fpdu_info*, %struct.nes_hw_cqp_wqe }
%struct.nes_hw_cqp_wqe = type { i32 }

@NES_CQP_WQE_DL_OPCODE_IDX = common dso_local global i32 0, align 4
@NES_CQP_DOWNLOAD_SEGMENT = common dso_local global i32 0, align 4
@NES_CQP_OP_LOGICAL_PORT_SHIFT = common dso_local global i32 0, align 4
@NES_CQP_WQE_DL_LENGTH_0_TOTAL_IDX = common dso_local global i32 0, align 4
@NES_NIC_SQ_WQE_LENGTH_2_1_IDX = common dso_local global i32 0, align 4
@NES_NIC_SQ_WQE_LENGTH_4_3_IDX = common dso_local global i32 0, align 4
@NES_NIC_SQ_WQE_FRAG0_LOW_IDX = common dso_local global i32 0, align 4
@NES_NIC_SQ_WQE_FRAG0_HIGH_IDX = common dso_local global i32 0, align 4
@NES_NIC_SQ_WQE_FRAG1_LOW_IDX = common dso_local global i32 0, align 4
@NES_NIC_SQ_WQE_FRAG1_HIGH_IDX = common dso_local global i32 0, align 4
@NES_NIC_SQ_WQE_FRAG2_LOW_IDX = common dso_local global i32 0, align 4
@NES_NIC_SQ_WQE_FRAG2_HIGH_IDX = common dso_local global i32 0, align 4
@NES_NIC_SQ_WQE_FRAG3_LOW_IDX = common dso_local global i32 0, align 4
@NES_NIC_SQ_WQE_FRAG3_HIGH_IDX = common dso_local global i32 0, align 4
@NES_NIC_SQ_WQE_FRAG4_LOW_IDX = common dso_local global i32 0, align 4
@NES_NIC_SQ_WQE_FRAG4_HIGH_IDX = common dso_local global i32 0, align 4
@nes_download_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_vnic*, %struct.nes_qp*)* @forward_fpdus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forward_fpdus(%struct.nes_vnic* %0, %struct.nes_qp* %1) #0 {
  %3 = alloca %struct.nes_vnic*, align 8
  %4 = alloca %struct.nes_qp*, align 8
  %5 = alloca %struct.nes_device*, align 8
  %6 = alloca %struct.pau_fpdu_info*, align 8
  %7 = alloca %struct.nes_hw_cqp_wqe*, align 8
  %8 = alloca %struct.nes_cqp_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nes_vnic* %0, %struct.nes_vnic** %3, align 8
  store %struct.nes_qp* %1, %struct.nes_qp** %4, align 8
  %12 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %13 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %12, i32 0, i32 1
  %14 = load %struct.nes_device*, %struct.nes_device** %13, align 8
  store %struct.nes_device* %14, %struct.nes_device** %5, align 8
  br label %15

15:                                               ; preds = %2, %23
  %16 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %17 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %18 = call i32 @get_fpdu_info(%struct.nes_device* %16, %struct.nes_qp* %17, %struct.pau_fpdu_info** %6)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %20 = icmp eq %struct.pau_fpdu_info* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %11, align 4
  ret i32 %22

23:                                               ; preds = %15
  %24 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %25 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %24, i32 0, i32 4
  %26 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %25, align 8
  store %struct.nes_cqp_request* %26, %struct.nes_cqp_request** %8, align 8
  %27 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %28 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %27, i32 0, i32 4
  store %struct.nes_hw_cqp_wqe* %28, %struct.nes_hw_cqp_wqe** %7, align 8
  %29 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %30 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %31 = call i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe* %29, %struct.nes_device* %30)
  %32 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %33 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NES_CQP_WQE_DL_OPCODE_IDX, align 4
  %36 = load i32, i32* @NES_CQP_DOWNLOAD_SEGMENT, align 4
  %37 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %38 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @NES_CQP_OP_LOGICAL_PORT_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %36, %42
  %44 = call i32 @set_wqe_32bit_value(i32 %34, i32 %35, i32 %43)
  %45 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %46 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %47, 16
  store i32 %48, i32* %10, align 4
  %49 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %50 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %53 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = add nsw i32 %51, %55
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %60 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NES_CQP_WQE_DL_LENGTH_0_TOTAL_IDX, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @set_wqe_32bit_value(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %66 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 16
  %72 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %73 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %71, %77
  store i32 %78, i32* %10, align 4
  %79 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %80 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NES_NIC_SQ_WQE_LENGTH_2_1_IDX, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @set_wqe_32bit_value(i32 %81, i32 %82, i32 %83)
  %85 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %86 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 16
  %92 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %93 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %91, %97
  store i32 %98, i32* %10, align 4
  %99 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %100 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @NES_NIC_SQ_WQE_LENGTH_4_3_IDX, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @set_wqe_32bit_value(i32 %101, i32 %102, i32 %103)
  %105 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %106 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %9, align 4
  %109 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %110 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @NES_NIC_SQ_WQE_FRAG0_LOW_IDX, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @lower_32_bits(i32 %113)
  %115 = call i32 @set_wqe_32bit_value(i32 %111, i32 %112, i32 %114)
  %116 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %117 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @NES_NIC_SQ_WQE_FRAG0_HIGH_IDX, align 4
  %120 = load i32, i32* %9, align 4
  %121 = ashr i32 %120, 32
  %122 = call i32 @upper_32_bits(i32 %121)
  %123 = call i32 @set_wqe_32bit_value(i32 %118, i32 %119, i32 %122)
  %124 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %125 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @NES_NIC_SQ_WQE_FRAG1_LOW_IDX, align 4
  %128 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %129 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @lower_32_bits(i32 %133)
  %135 = call i32 @set_wqe_32bit_value(i32 %126, i32 %127, i32 %134)
  %136 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %137 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @NES_NIC_SQ_WQE_FRAG1_HIGH_IDX, align 4
  %140 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %141 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @upper_32_bits(i32 %145)
  %147 = call i32 @set_wqe_32bit_value(i32 %138, i32 %139, i32 %146)
  %148 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %149 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @NES_NIC_SQ_WQE_FRAG2_LOW_IDX, align 4
  %152 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %153 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %152, i32 0, i32 1
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @lower_32_bits(i32 %157)
  %159 = call i32 @set_wqe_32bit_value(i32 %150, i32 %151, i32 %158)
  %160 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %161 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @NES_NIC_SQ_WQE_FRAG2_HIGH_IDX, align 4
  %164 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %165 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %164, i32 0, i32 1
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @upper_32_bits(i32 %169)
  %171 = call i32 @set_wqe_32bit_value(i32 %162, i32 %163, i32 %170)
  %172 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %173 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @NES_NIC_SQ_WQE_FRAG3_LOW_IDX, align 4
  %176 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %177 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %176, i32 0, i32 1
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 2
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @lower_32_bits(i32 %181)
  %183 = call i32 @set_wqe_32bit_value(i32 %174, i32 %175, i32 %182)
  %184 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %185 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @NES_NIC_SQ_WQE_FRAG3_HIGH_IDX, align 4
  %188 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %189 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %188, i32 0, i32 1
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 2
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @upper_32_bits(i32 %193)
  %195 = call i32 @set_wqe_32bit_value(i32 %186, i32 %187, i32 %194)
  %196 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %197 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @NES_NIC_SQ_WQE_FRAG4_LOW_IDX, align 4
  %200 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %201 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %200, i32 0, i32 1
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i64 3
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @lower_32_bits(i32 %205)
  %207 = call i32 @set_wqe_32bit_value(i32 %198, i32 %199, i32 %206)
  %208 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %7, align 8
  %209 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @NES_NIC_SQ_WQE_FRAG4_HIGH_IDX, align 4
  %212 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %213 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %212, i32 0, i32 1
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i64 3
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @upper_32_bits(i32 %217)
  %219 = call i32 @set_wqe_32bit_value(i32 %210, i32 %211, i32 %218)
  %220 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %6, align 8
  %221 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %222 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %221, i32 0, i32 3
  store %struct.pau_fpdu_info* %220, %struct.pau_fpdu_info** %222, align 8
  %223 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %224 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %223, i32 0, i32 0
  store i32 1, i32* %224, align 8
  %225 = load i32, i32* @nes_download_callback, align 4
  %226 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %227 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 8
  %228 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %229 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %228, i32 0, i32 1
  %230 = call i32 @atomic_set(i32* %229, i32 1)
  %231 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %232 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %233 = call i32 @nes_post_cqp_request(%struct.nes_device* %231, %struct.nes_cqp_request* %232)
  br label %15
}

declare dso_local i32 @get_fpdu_info(%struct.nes_device*, %struct.nes_qp*, %struct.pau_fpdu_info**) #1

declare dso_local i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe*, %struct.nes_device*) #1

declare dso_local i32 @set_wqe_32bit_value(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nes_post_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
