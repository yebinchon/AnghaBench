; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_change_quad_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_change_quad_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }
%struct.nes_vnic = type { i32 }
%struct.nes_qp = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nes_cqp_request = type { i32, i32, i32, %struct.pau_qh_chg*, %struct.nes_hw_cqp_wqe }
%struct.pau_qh_chg = type { %struct.nes_qp*, %struct.nes_vnic*, %struct.nes_device* }
%struct.nes_hw_cqp_wqe = type { i32 }

@NES_DBG_PAU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get a cqp_request.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAU_DEL_QH = common dso_local global i32 0, align 4
@NES_CQP_WQE_OPCODE_IDX = common dso_local global i32 0, align 4
@NES_CQP_MANAGE_QUAD_HASH = common dso_local global i32 0, align 4
@NES_CQP_QP_DEL_HTE = common dso_local global i32 0, align 4
@NES_CQP_QP_TYPE_IWARP = common dso_local global i32 0, align 4
@NES_CQP_QP_CONTEXT_VALID = common dso_local global i32 0, align 4
@NES_CQP_QP_IWARP_STATE_RTS = common dso_local global i32 0, align 4
@NES_CQP_WQE_ID_IDX = common dso_local global i32 0, align 4
@NES_CQP_QP_WQE_CONTEXT_LOW_IDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Waiting for CQP completion for deleting the quad hash.\0A\00", align 1
@nes_chg_qh_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_device*, %struct.nes_vnic*, %struct.nes_qp*)* @nes_change_quad_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_change_quad_hash(%struct.nes_device* %0, %struct.nes_vnic* %1, %struct.nes_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nes_device*, align 8
  %6 = alloca %struct.nes_vnic*, align 8
  %7 = alloca %struct.nes_qp*, align 8
  %8 = alloca %struct.nes_cqp_request*, align 8
  %9 = alloca %struct.pau_qh_chg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nes_hw_cqp_wqe*, align 8
  %12 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %5, align 8
  store %struct.nes_vnic* %1, %struct.nes_vnic** %6, align 8
  store %struct.nes_qp* %2, %struct.nes_qp** %7, align 8
  store %struct.nes_cqp_request* null, %struct.nes_cqp_request** %8, align 8
  store %struct.pau_qh_chg* null, %struct.pau_qh_chg** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %14 = call %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device* %13)
  store %struct.nes_cqp_request* %14, %struct.nes_cqp_request** %8, align 8
  %15 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %16 = icmp eq %struct.nes_cqp_request* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @NES_DBG_PAU, align 4
  %19 = call i32 @nes_debug(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  br label %99

22:                                               ; preds = %3
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.pau_qh_chg* @kmalloc(i32 24, i32 %23)
  store %struct.pau_qh_chg* %24, %struct.pau_qh_chg** %9, align 8
  %25 = load %struct.pau_qh_chg*, %struct.pau_qh_chg** %9, align 8
  %26 = icmp eq %struct.pau_qh_chg* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @NES_DBG_PAU, align 4
  %29 = call i32 @nes_debug(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  br label %99

32:                                               ; preds = %22
  %33 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %34 = load %struct.pau_qh_chg*, %struct.pau_qh_chg** %9, align 8
  %35 = getelementptr inbounds %struct.pau_qh_chg, %struct.pau_qh_chg* %34, i32 0, i32 2
  store %struct.nes_device* %33, %struct.nes_device** %35, align 8
  %36 = load %struct.nes_vnic*, %struct.nes_vnic** %6, align 8
  %37 = load %struct.pau_qh_chg*, %struct.pau_qh_chg** %9, align 8
  %38 = getelementptr inbounds %struct.pau_qh_chg, %struct.pau_qh_chg* %37, i32 0, i32 1
  store %struct.nes_vnic* %36, %struct.nes_vnic** %38, align 8
  %39 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %40 = load %struct.pau_qh_chg*, %struct.pau_qh_chg** %9, align 8
  %41 = getelementptr inbounds %struct.pau_qh_chg, %struct.pau_qh_chg* %40, i32 0, i32 0
  store %struct.nes_qp* %39, %struct.nes_qp** %41, align 8
  %42 = load i32, i32* @PAU_DEL_QH, align 4
  %43 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %44 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %46 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %45, i32 0, i32 4
  store %struct.nes_hw_cqp_wqe* %46, %struct.nes_hw_cqp_wqe** %11, align 8
  %47 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %11, align 8
  %48 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %49 = call i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe* %47, %struct.nes_device* %48)
  %50 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %11, align 8
  %51 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NES_CQP_WQE_OPCODE_IDX, align 4
  %54 = load i32, i32* @NES_CQP_MANAGE_QUAD_HASH, align 4
  %55 = load i32, i32* @NES_CQP_QP_DEL_HTE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @NES_CQP_QP_TYPE_IWARP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @NES_CQP_QP_CONTEXT_VALID, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @NES_CQP_QP_IWARP_STATE_RTS, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @set_wqe_32bit_value(i32 %52, i32 %53, i32 %62)
  %64 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %11, align 8
  %65 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NES_CQP_WQE_ID_IDX, align 4
  %68 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %69 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @set_wqe_32bit_value(i32 %66, i32 %67, i32 %71)
  %73 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %74 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %10, align 8
  %76 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %11, align 8
  %77 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NES_CQP_QP_WQE_CONTEXT_LOW_IDX, align 4
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @set_wqe_64bit_value(i32 %78, i32 %79, i64 %80)
  %82 = load i32, i32* @NES_DBG_PAU, align 4
  %83 = call i32 @nes_debug(i32 %82, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.pau_qh_chg*, %struct.pau_qh_chg** %9, align 8
  %85 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %86 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %85, i32 0, i32 3
  store %struct.pau_qh_chg* %84, %struct.pau_qh_chg** %86, align 8
  %87 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %88 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load i32, i32* @nes_chg_qh_handler, align 4
  %90 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %91 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %93 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %92, i32 0, i32 1
  %94 = call i32 @atomic_set(i32* %93, i32 1)
  %95 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %96 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %97 = call i32 @nes_post_cqp_request(%struct.nes_device* %95, %struct.nes_cqp_request* %96)
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %4, align 4
  br label %110

99:                                               ; preds = %27, %17
  %100 = load %struct.pau_qh_chg*, %struct.pau_qh_chg** %9, align 8
  %101 = call i32 @kfree(%struct.pau_qh_chg* %100)
  %102 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %103 = icmp ne %struct.nes_cqp_request* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %106 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %8, align 8
  %107 = call i32 @nes_put_cqp_request(%struct.nes_device* %105, %struct.nes_cqp_request* %106)
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %32
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device*) #1

declare dso_local i32 @nes_debug(i32, i8*) #1

declare dso_local %struct.pau_qh_chg* @kmalloc(i32, i32) #1

declare dso_local i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe*, %struct.nes_device*) #1

declare dso_local i32 @set_wqe_32bit_value(i32, i32, i32) #1

declare dso_local i32 @set_wqe_64bit_value(i32, i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nes_post_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #1

declare dso_local i32 @kfree(%struct.pau_qh_chg*) #1

declare dso_local i32 @nes_put_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
