; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32, i32, %struct.ocrdma_qp** }
%struct.ocrdma_qp = type { i32 }
%struct.ib_event = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.ib_qp_attr = type { i32 }

@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i32 0, align 4
@OCRDMA_MAX_QP = common dso_local global i32 0, align 4
@IB_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*)* @ocrdma_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_close(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_qp*, align 8
  %5 = alloca %struct.ocrdma_qp**, align 8
  %6 = alloca %struct.ib_event, align 8
  %7 = alloca %struct.ib_qp_attr, align 4
  %8 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %2, align 8
  %9 = load i32, i32* @IB_QP_STATE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @IB_QPS_ERR, align 4
  %11 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %13 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %16 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %15, i32 0, i32 2
  %17 = load %struct.ocrdma_qp**, %struct.ocrdma_qp*** %16, align 8
  %18 = icmp ne %struct.ocrdma_qp** %17, null
  br i1 %18, label %19, label %55

19:                                               ; preds = %1
  %20 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %21 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %20, i32 0, i32 2
  %22 = load %struct.ocrdma_qp**, %struct.ocrdma_qp*** %21, align 8
  store %struct.ocrdma_qp** %22, %struct.ocrdma_qp*** %5, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %51, %19
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @OCRDMA_MAX_QP, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = load %struct.ocrdma_qp**, %struct.ocrdma_qp*** %5, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ocrdma_qp*, %struct.ocrdma_qp** %28, i64 %30
  %32 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %31, align 8
  store %struct.ocrdma_qp* %32, %struct.ocrdma_qp** %4, align 8
  %33 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %34 = icmp ne %struct.ocrdma_qp* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %37 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %36, i32 0, i32 0
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @_ocrdma_modify_qp(i32* %37, %struct.ib_qp_attr* %7, i32 %38)
  %40 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %41 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %6, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %43 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %6, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %47 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %6, i32 0, i32 0
  store i32* %47, i32** %48, align 8
  %49 = call i32 @ib_dispatch_event(%struct.ib_event* %6)
  br label %50

50:                                               ; preds = %35, %27
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %23

54:                                               ; preds = %23
  br label %55

55:                                               ; preds = %54, %1
  %56 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %57 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  %60 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %6, i32 0, i32 2
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %6, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %64 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %6, i32 0, i32 0
  store i32* %64, i32** %65, align 8
  %66 = call i32 @ib_dispatch_event(%struct.ib_event* %6)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_ocrdma_modify_qp(i32*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
