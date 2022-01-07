; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_modify_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_qp = type { i32, i32 }
%struct.ib_qp_attr = type { i32 }
%struct.ocrdma_modify_qp = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_MODIFY_QP = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_STATE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_STATE_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_QPS_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_modify_qp(%struct.ocrdma_dev* %0, %struct.ocrdma_qp* %1, %struct.ib_qp_attr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_dev*, align 8
  %8 = alloca %struct.ocrdma_qp*, align 8
  %9 = alloca %struct.ib_qp_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocrdma_modify_qp*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %7, align 8
  store %struct.ocrdma_qp* %1, %struct.ocrdma_qp** %8, align 8
  store %struct.ib_qp_attr* %2, %struct.ib_qp_attr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* @OCRDMA_CMD_MODIFY_QP, align 4
  %17 = call %struct.ocrdma_modify_qp* @ocrdma_init_emb_mqe(i32 %16, i32 12)
  store %struct.ocrdma_modify_qp* %17, %struct.ocrdma_modify_qp** %13, align 8
  %18 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %13, align 8
  %19 = icmp ne %struct.ocrdma_modify_qp* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %6, align 4
  br label %90

22:                                               ; preds = %5
  %23 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %24 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %13, align 8
  %27 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %13, align 8
  %30 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @IB_QP_STATE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %22
  %36 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %37 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @get_ocrdma_qp_state(i32 %38)
  %40 = load i32, i32* @OCRDMA_QP_PARAMS_STATE_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @OCRDMA_QP_PARAMS_STATE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %13, align 8
  %45 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @OCRDMA_QP_PARA_QPS_VALID, align 4
  %50 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %13, align 8
  %51 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %67

54:                                               ; preds = %22
  %55 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %56 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @OCRDMA_QP_PARAMS_STATE_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* @OCRDMA_QP_PARAMS_STATE_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %13, align 8
  %63 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %54, %35
  %68 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %69 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %13, align 8
  %70 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @ocrdma_set_qp_params(%struct.ocrdma_qp* %68, %struct.ocrdma_modify_qp* %69, %struct.ib_qp_attr* %70, i32 %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %86

77:                                               ; preds = %67
  %78 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %79 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %13, align 8
  %80 = bitcast %struct.ocrdma_modify_qp* %79 to %struct.ocrdma_mqe*
  %81 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %78, %struct.ocrdma_mqe* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %86

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %84, %76
  %87 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %13, align 8
  %88 = call i32 @kfree(%struct.ocrdma_modify_qp* %87)
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %20
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.ocrdma_modify_qp* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @get_ocrdma_qp_state(i32) #1

declare dso_local i32 @ocrdma_set_qp_params(%struct.ocrdma_qp*, %struct.ocrdma_modify_qp*, %struct.ib_qp_attr*, i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_modify_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
