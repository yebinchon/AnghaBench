; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_eq = type { %struct.TYPE_4__, %struct.ocrdma_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ocrdma_eqe = type { i32 }

@OCRDMA_EQE_VALID_MASK = common dso_local global i32 0, align 4
@OCRDMA_EQE_FOR_CQE_MASK = common dso_local global i32 0, align 4
@OCRDMA_EQE_RESOURCE_ID_SHIFT = common dso_local global i32 0, align 4
@BE_INTERRUPT_MODE_INTX = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ocrdma_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocrdma_eq*, align 8
  %6 = alloca %struct.ocrdma_dev*, align 8
  %7 = alloca %struct.ocrdma_eqe, align 4
  %8 = alloca %struct.ocrdma_eqe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ocrdma_eq*
  store %struct.ocrdma_eq* %12, %struct.ocrdma_eq** %5, align 8
  %13 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %5, align 8
  %14 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %13, i32 0, i32 1
  %15 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %14, align 8
  store %struct.ocrdma_dev* %15, %struct.ocrdma_dev** %6, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %2, %47
  %17 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %5, align 8
  %18 = call %struct.ocrdma_eqe* @ocrdma_get_eqe(%struct.ocrdma_eq* %17)
  store %struct.ocrdma_eqe* %18, %struct.ocrdma_eqe** %8, align 8
  %19 = load %struct.ocrdma_eqe*, %struct.ocrdma_eqe** %8, align 8
  %20 = bitcast %struct.ocrdma_eqe* %7 to i8*
  %21 = bitcast %struct.ocrdma_eqe* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = call i32 @ocrdma_le32_to_cpu(%struct.ocrdma_eqe* %7, i32 4)
  %23 = getelementptr inbounds %struct.ocrdma_eqe, %struct.ocrdma_eqe* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OCRDMA_EQE_VALID_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %50

29:                                               ; preds = %16
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load %struct.ocrdma_eqe*, %struct.ocrdma_eqe** %8, align 8
  %33 = getelementptr inbounds %struct.ocrdma_eqe, %struct.ocrdma_eqe* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.ocrdma_eqe, %struct.ocrdma_eqe* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @OCRDMA_EQE_FOR_CQE_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.ocrdma_eqe, %struct.ocrdma_eqe* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OCRDMA_EQE_RESOURCE_ID_SHIFT, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ocrdma_cq_handler(%struct.ocrdma_dev* %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %29
  %48 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %5, align 8
  %49 = call i32 @ocrdma_eq_inc_tail(%struct.ocrdma_eq* %48)
  br label %16

50:                                               ; preds = %28
  %51 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %52 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %5, align 8
  %53 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ocrdma_ring_eq_db(%struct.ocrdma_dev* %51, i32 %55, i32 1, i32 1, i32 %56)
  %58 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %59 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BE_INTERRUPT_MODE_INTX, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %50
  %65 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %66 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %5, align 8
  %67 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ocrdma_ring_eq_db(%struct.ocrdma_dev* %65, i32 %69, i32 1, i32 1, i32 0)
  br label %71

71:                                               ; preds = %64, %50
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %72
}

declare dso_local %struct.ocrdma_eqe* @ocrdma_get_eqe(%struct.ocrdma_eq*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ocrdma_le32_to_cpu(%struct.ocrdma_eqe*, i32) #1

declare dso_local i32 @ocrdma_cq_handler(%struct.ocrdma_dev*, i32) #1

declare dso_local i32 @ocrdma_eq_inc_tail(%struct.ocrdma_eq*) #1

declare dso_local i32 @ocrdma_ring_eq_db(%struct.ocrdma_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
