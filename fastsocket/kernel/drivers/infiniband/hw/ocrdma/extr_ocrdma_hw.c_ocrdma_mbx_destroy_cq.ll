; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ocrdma_cq = type { i32, i32, i32, i32, i32 }
%struct.ocrdma_destroy_cq = type { i32, i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_DELETE_CQ = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@OCRDMA_DESTROY_CQ_QID_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_DESTROY_CQ_QID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_destroy_cq(%struct.ocrdma_dev* %0, %struct.ocrdma_cq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_destroy_cq*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_cq* %1, %struct.ocrdma_cq** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @OCRDMA_CMD_DELETE_CQ, align 4
  %11 = call %struct.ocrdma_destroy_cq* @ocrdma_init_emb_mqe(i32 %10, i32 8)
  store %struct.ocrdma_destroy_cq* %11, %struct.ocrdma_destroy_cq** %7, align 8
  %12 = load %struct.ocrdma_destroy_cq*, %struct.ocrdma_destroy_cq** %7, align 8
  %13 = icmp ne %struct.ocrdma_destroy_cq* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %2
  %17 = load %struct.ocrdma_destroy_cq*, %struct.ocrdma_destroy_cq** %7, align 8
  %18 = getelementptr inbounds %struct.ocrdma_destroy_cq, %struct.ocrdma_destroy_cq* %17, i32 0, i32 1
  %19 = load i32, i32* @OCRDMA_CMD_DELETE_CQ, align 4
  %20 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %21 = call i32 @ocrdma_init_mch(i32* %18, i32 %19, i32 %20, i32 8)
  %22 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %23 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OCRDMA_DESTROY_CQ_QID_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* @OCRDMA_DESTROY_CQ_QID_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.ocrdma_destroy_cq*, %struct.ocrdma_destroy_cq** %7, align 8
  %30 = getelementptr inbounds %struct.ocrdma_destroy_cq, %struct.ocrdma_destroy_cq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %34 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %35 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ocrdma_unbind_eq(%struct.ocrdma_dev* %33, i32 %36)
  %38 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %39 = load %struct.ocrdma_destroy_cq*, %struct.ocrdma_destroy_cq** %7, align 8
  %40 = bitcast %struct.ocrdma_destroy_cq* %39 to %struct.ocrdma_mqe*
  %41 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %38, %struct.ocrdma_mqe* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %16
  br label %61

45:                                               ; preds = %16
  %46 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %47 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %52 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %55 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %58 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dma_free_coherent(i32* %50, i32 %53, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %45, %44
  %62 = load %struct.ocrdma_destroy_cq*, %struct.ocrdma_destroy_cq** %7, align 8
  %63 = call i32 @kfree(%struct.ocrdma_destroy_cq* %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ocrdma_destroy_cq* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_init_mch(i32*, i32, i32, i32) #1

declare dso_local i32 @ocrdma_unbind_eq(%struct.ocrdma_dev*, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ocrdma_destroy_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
