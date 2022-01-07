; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_qp_event_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_qp_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32 }
%struct.ehca_qp = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EQE_QP_TOKEN = common dso_local global i32 0, align 4
@ehca_qp_idr_lock = common dso_local global i32 0, align 4
@ehca_qp_idr = common dso_local global i32 0, align 4
@EQPT_SRQ = common dso_local global i64 0, align 8
@IB_EVENT_SRQ_ERR = common dso_local global i32 0, align 4
@EQPT_SRQBASE = common dso_local global i64 0, align 8
@IB_EVENT_QP_LAST_WQE_REACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_shca*, i32, i32, i32)* @qp_event_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qp_event_callback(%struct.ehca_shca* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ehca_shca*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ehca_qp*, align 8
  %10 = alloca i32, align 4
  store %struct.ehca_shca* %0, %struct.ehca_shca** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @EQE_QP_TOKEN, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @EHCA_BMASK_GET(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = call i32 @read_lock(i32* @ehca_qp_idr_lock)
  %15 = load i32, i32* %10, align 4
  %16 = call %struct.ehca_qp* @idr_find(i32* @ehca_qp_idr, i32 %15)
  store %struct.ehca_qp* %16, %struct.ehca_qp** %9, align 8
  %17 = load %struct.ehca_qp*, %struct.ehca_qp** %9, align 8
  %18 = icmp ne %struct.ehca_qp* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.ehca_qp*, %struct.ehca_qp** %9, align 8
  %21 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %20, i32 0, i32 2
  %22 = call i32 @atomic_inc(i32* %21)
  br label %23

23:                                               ; preds = %19, %4
  %24 = call i32 @read_unlock(i32* @ehca_qp_idr_lock)
  %25 = load %struct.ehca_qp*, %struct.ehca_qp** %9, align 8
  %26 = icmp ne %struct.ehca_qp* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %80

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %33 = load %struct.ehca_qp*, %struct.ehca_qp** %9, align 8
  %34 = load %struct.ehca_qp*, %struct.ehca_qp** %9, align 8
  %35 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ehca_error_data(%struct.ehca_shca* %32, %struct.ehca_qp* %33, i32 %37)
  br label %39

39:                                               ; preds = %31, %28
  %40 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %41 = load %struct.ehca_qp*, %struct.ehca_qp** %9, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.ehca_qp*, %struct.ehca_qp** %9, align 8
  %46 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EQPT_SRQ, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @IB_EVENT_SRQ_ERR, align 4
  br label %54

52:                                               ; preds = %44, %39
  %53 = load i32, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @dispatch_qp_event(%struct.ehca_shca* %40, %struct.ehca_qp* %41, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.ehca_qp*, %struct.ehca_qp** %9, align 8
  %61 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EQPT_SRQBASE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %67 = load %struct.ehca_qp*, %struct.ehca_qp** %9, align 8
  %68 = load i32, i32* @IB_EVENT_QP_LAST_WQE_REACHED, align 4
  %69 = call i32 @dispatch_qp_event(%struct.ehca_shca* %66, %struct.ehca_qp* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %59, %54
  %71 = load %struct.ehca_qp*, %struct.ehca_qp** %9, align 8
  %72 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %71, i32 0, i32 2
  %73 = call i64 @atomic_dec_and_test(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.ehca_qp*, %struct.ehca_qp** %9, align 8
  %77 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %76, i32 0, i32 1
  %78 = call i32 @wake_up(i32* %77)
  br label %79

79:                                               ; preds = %75, %70
  br label %80

80:                                               ; preds = %79, %27
  ret void
}

declare dso_local i32 @EHCA_BMASK_GET(i32, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.ehca_qp* @idr_find(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @ehca_error_data(%struct.ehca_shca*, %struct.ehca_qp*, i32) #1

declare dso_local i32 @dispatch_qp_event(%struct.ehca_shca*, %struct.ehca_qp*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
