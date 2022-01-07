; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_bind_mw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_bind_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_mw = type { i32 }
%struct.ib_mw_bind = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { i64 }
%struct.nes_qp = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.nes_hw_qp_wqe* }
%struct.nes_hw_qp_wqe = type { i64* }

@IB_QPS_RTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NES_IWARP_SQ_WQE_COMP_SCRATCH_LOW_IDX = common dso_local global i32 0, align 4
@NES_IWARP_SQ_OP_BIND = common dso_local global i32 0, align 4
@NES_IWARP_SQ_WQE_LOCAL_FENCE = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@NES_IWARP_SQ_WQE_SIGNALED_COMPL = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@NES_CQP_STAG_RIGHTS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@NES_CQP_STAG_RIGHTS_REMOTE_READ = common dso_local global i32 0, align 4
@NES_IWARP_SQ_WQE_MISC_IDX = common dso_local global i32 0, align 4
@NES_IWARP_SQ_BIND_WQE_MR_IDX = common dso_local global i32 0, align 4
@NES_IWARP_SQ_BIND_WQE_MW_IDX = common dso_local global i32 0, align 4
@NES_IWARP_SQ_BIND_WQE_LENGTH_LOW_IDX = common dso_local global i32 0, align 4
@NES_IWARP_SQ_BIND_WQE_LENGTH_HIGH_IDX = common dso_local global i64 0, align 8
@NES_IWARP_SQ_BIND_WQE_VA_FBO_LOW_IDX = common dso_local global i32 0, align 4
@NES_WQE_ALLOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_mw*, %struct.ib_mw_bind*)* @nes_bind_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_bind_mw(%struct.ib_qp* %0, %struct.ib_mw* %1, %struct.ib_mw_bind* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_mw*, align 8
  %7 = alloca %struct.ib_mw_bind*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nes_vnic*, align 8
  %10 = alloca %struct.nes_device*, align 8
  %11 = alloca %struct.nes_qp*, align 8
  %12 = alloca %struct.nes_hw_qp_wqe*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_mw* %1, %struct.ib_mw** %6, align 8
  store %struct.ib_mw_bind* %2, %struct.ib_mw_bind** %7, align 8
  %17 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %18 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.nes_vnic* @to_nesvnic(i32 %19)
  store %struct.nes_vnic* %20, %struct.nes_vnic** %9, align 8
  %21 = load %struct.nes_vnic*, %struct.nes_vnic** %9, align 8
  %22 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %21, i32 0, i32 0
  %23 = load %struct.nes_device*, %struct.nes_device** %22, align 8
  store %struct.nes_device* %23, %struct.nes_device** %10, align 8
  %24 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %25 = call %struct.nes_qp* @to_nesqp(%struct.ib_qp* %24)
  store %struct.nes_qp* %25, %struct.nes_qp** %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %26 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %27 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IB_QPS_RTS, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %204

34:                                               ; preds = %3
  %35 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %36 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %35, i32 0, i32 1
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %40 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %14, align 4
  %43 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %44 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %16, align 4
  %49 = mul nsw i32 2, %48
  %50 = add nsw i32 %47, %49
  %51 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %52 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %50, %54
  %56 = load i32, i32* %16, align 4
  %57 = srem i32 %55, %56
  %58 = load i32, i32* %16, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %34
  %62 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %63 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %62, i32 0, i32 1
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %204

68:                                               ; preds = %34
  %69 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %70 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %72, i64 %74
  store %struct.nes_hw_qp_wqe* %75, %struct.nes_hw_qp_wqe** %12, align 8
  %76 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %77 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @nes_fill_init_qp_wqe(%struct.nes_hw_qp_wqe* %76, %struct.nes_qp* %77, i32 %78)
  %80 = load %struct.ib_mw_bind*, %struct.ib_mw_bind** %7, align 8
  %81 = getelementptr inbounds %struct.ib_mw_bind, %struct.ib_mw_bind* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %8, align 8
  %83 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %84 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* @NES_IWARP_SQ_WQE_COMP_SCRATCH_LOW_IDX, align 4
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @set_wqe_64bit_value(i64* %85, i32 %86, i64 %87)
  %89 = load i32, i32* @NES_IWARP_SQ_OP_BIND, align 4
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* @NES_IWARP_SQ_WQE_LOCAL_FENCE, align 4
  %91 = load i32, i32* %15, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %15, align 4
  %93 = load %struct.ib_mw_bind*, %struct.ib_mw_bind** %7, align 8
  %94 = getelementptr inbounds %struct.ib_mw_bind, %struct.ib_mw_bind* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %68
  %100 = load i32, i32* @NES_IWARP_SQ_WQE_SIGNALED_COMPL, align 4
  %101 = load i32, i32* %15, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %99, %68
  %104 = load %struct.ib_mw_bind*, %struct.ib_mw_bind** %7, align 8
  %105 = getelementptr inbounds %struct.ib_mw_bind, %struct.ib_mw_bind* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load i32, i32* @NES_CQP_STAG_RIGHTS_REMOTE_WRITE, align 4
  %113 = load i32, i32* %15, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %111, %103
  %116 = load %struct.ib_mw_bind*, %struct.ib_mw_bind** %7, align 8
  %117 = getelementptr inbounds %struct.ib_mw_bind, %struct.ib_mw_bind* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = load i32, i32* @NES_CQP_STAG_RIGHTS_REMOTE_READ, align 4
  %125 = load i32, i32* %15, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %15, align 4
  br label %127

127:                                              ; preds = %123, %115
  %128 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %129 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* @NES_IWARP_SQ_WQE_MISC_IDX, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @set_wqe_32bit_value(i64* %130, i32 %131, i32 %132)
  %134 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %135 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* @NES_IWARP_SQ_BIND_WQE_MR_IDX, align 4
  %138 = load %struct.ib_mw_bind*, %struct.ib_mw_bind** %7, align 8
  %139 = getelementptr inbounds %struct.ib_mw_bind, %struct.ib_mw_bind* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @set_wqe_32bit_value(i64* %136, i32 %137, i32 %143)
  %145 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %146 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* @NES_IWARP_SQ_BIND_WQE_MW_IDX, align 4
  %149 = load %struct.ib_mw*, %struct.ib_mw** %6, align 8
  %150 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @set_wqe_32bit_value(i64* %147, i32 %148, i32 %151)
  %153 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %154 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* @NES_IWARP_SQ_BIND_WQE_LENGTH_LOW_IDX, align 4
  %157 = load %struct.ib_mw_bind*, %struct.ib_mw_bind** %7, align 8
  %158 = getelementptr inbounds %struct.ib_mw_bind, %struct.ib_mw_bind* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @set_wqe_32bit_value(i64* %155, i32 %156, i32 %160)
  %162 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %163 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = load i64, i64* @NES_IWARP_SQ_BIND_WQE_LENGTH_HIGH_IDX, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  store i64 0, i64* %166, align 8
  %167 = load %struct.ib_mw_bind*, %struct.ib_mw_bind** %7, align 8
  %168 = getelementptr inbounds %struct.ib_mw_bind, %struct.ib_mw_bind* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %8, align 8
  %171 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %12, align 8
  %172 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* @NES_IWARP_SQ_BIND_WQE_VA_FBO_LOW_IDX, align 4
  %175 = load i64, i64* %8, align 8
  %176 = call i32 @set_wqe_64bit_value(i64* %173, i32 %174, i64 %175)
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %16, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %127
  store i32 0, i32* %14, align 4
  br label %183

183:                                              ; preds = %182, %127
  %184 = load i32, i32* %14, align 4
  %185 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %186 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 8
  %188 = call i32 (...) @barrier()
  %189 = load %struct.nes_device*, %struct.nes_device** %10, align 8
  %190 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @NES_WQE_ALLOC, align 8
  %193 = add nsw i64 %191, %192
  %194 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %195 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = or i32 25165824, %197
  %199 = call i32 @nes_write32(i64 %193, i32 %198)
  %200 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %201 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %200, i32 0, i32 1
  %202 = load i64, i64* %13, align 8
  %203 = call i32 @spin_unlock_irqrestore(i32* %201, i64 %202)
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %183, %61, %31
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local %struct.nes_vnic* @to_nesvnic(i32) #1

declare dso_local %struct.nes_qp* @to_nesqp(%struct.ib_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nes_fill_init_qp_wqe(%struct.nes_hw_qp_wqe*, %struct.nes_qp*, i32) #1

declare dso_local i32 @set_wqe_64bit_value(i64*, i32, i64) #1

declare dso_local i32 @set_wqe_32bit_value(i64*, i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @nes_write32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
