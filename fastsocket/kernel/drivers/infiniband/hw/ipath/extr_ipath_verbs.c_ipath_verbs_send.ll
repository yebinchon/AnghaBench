; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_verbs_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_verbs_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ipath_ib_header = type { i32 }
%struct.ipath_sge_state = type { i32 }
%struct.ipath_devdata = type { i32 }
%struct.TYPE_4__ = type { %struct.ipath_devdata* }

@IB_QPT_SMI = common dso_local global i64 0, align 8
@IPATH_HAS_SEND_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_verbs_send(%struct.ipath_qp* %0, %struct.ipath_ib_header* %1, i32 %2, %struct.ipath_sge_state* %3, i32 %4) #0 {
  %6 = alloca %struct.ipath_qp*, align 8
  %7 = alloca %struct.ipath_ib_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipath_sge_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipath_devdata*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ipath_qp* %0, %struct.ipath_qp** %6, align 8
  store %struct.ipath_ib_header* %1, %struct.ipath_ib_header** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ipath_sge_state* %3, %struct.ipath_sge_state** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %16 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_4__* @to_idev(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %20, align 8
  store %struct.ipath_devdata* %21, %struct.ipath_devdata** %11, align 8
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 3
  %24 = ashr i32 %23, 2
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %14, align 4
  %27 = add nsw i32 %25, %26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %12, align 4
  %29 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %30 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IB_QPT_SMI, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %5
  %36 = load %struct.ipath_devdata*, %struct.ipath_devdata** %11, align 8
  %37 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IPATH_HAS_SEND_DMA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %35, %5
  %43 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %44 = load %struct.ipath_ib_header*, %struct.ipath_ib_header** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ipath_sge_state*, %struct.ipath_sge_state** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @ipath_verbs_send_pio(%struct.ipath_qp* %43, %struct.ipath_ib_header* %44, i32 %45, %struct.ipath_sge_state* %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  br label %60

51:                                               ; preds = %35
  %52 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %53 = load %struct.ipath_ib_header*, %struct.ipath_ib_header** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ipath_sge_state*, %struct.ipath_sge_state** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @ipath_verbs_send_dma(%struct.ipath_qp* %52, %struct.ipath_ib_header* %53, i32 %54, %struct.ipath_sge_state* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %51, %42
  %61 = load i32, i32* %13, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_4__* @to_idev(i32) #1

declare dso_local i32 @ipath_verbs_send_pio(%struct.ipath_qp*, %struct.ipath_ib_header*, i32, %struct.ipath_sge_state*, i32, i32, i32) #1

declare dso_local i32 @ipath_verbs_send_dma(%struct.ipath_qp*, %struct.ipath_ib_header*, i32, %struct.ipath_sge_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
