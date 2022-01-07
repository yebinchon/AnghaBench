; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_rc.c_ipath_restart_rc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_rc.c_ipath_restart_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i64, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ipath_swqe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ipath_ibdev = type { i64, i32 }

@IB_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@IPATH_PSN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_restart_rc(%struct.ipath_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipath_swqe*, align 8
  %6 = alloca %struct.ipath_ibdev*, align 8
  store %struct.ipath_qp* %0, %struct.ipath_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %8 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %9 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.ipath_swqe* @get_swqe_ptr(%struct.ipath_qp* %7, i32 %10)
  store %struct.ipath_swqe* %11, %struct.ipath_swqe** %5, align 8
  %12 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %13 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %18 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %19 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  %20 = call i32 @ipath_send_complete(%struct.ipath_qp* %17, %struct.ipath_swqe* %18, i32 %19)
  %21 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %22 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %23 = call i32 @ipath_error_qp(%struct.ipath_qp* %21, i32 %22)
  br label %88

24:                                               ; preds = %2
  %25 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %26 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %30 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.ipath_ibdev* @to_idev(i32 %32)
  store %struct.ipath_ibdev* %33, %struct.ipath_ibdev** %6, align 8
  %34 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %35 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %34, i32 0, i32 1
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %38 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %37, i32 0, i32 3
  %39 = call i32 @list_empty(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %24
  %42 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %43 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %42, i32 0, i32 3
  %44 = call i32 @list_del_init(i32* %43)
  br label %45

45:                                               ; preds = %41, %24
  %46 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %47 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %46, i32 0, i32 2
  %48 = call i32 @list_empty(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %52 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %51, i32 0, i32 2
  %53 = call i32 @list_del_init(i32* %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %56 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %59 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %66 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %82

69:                                               ; preds = %54
  %70 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %71 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load i32, i32* @IPATH_PSN_MASK, align 4
  %76 = and i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %79 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %77
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %69, %64
  %83 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @reset_psn(%struct.ipath_qp* %83, i32 %84)
  %86 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %87 = call i32 @ipath_schedule_send(%struct.ipath_qp* %86)
  br label %88

88:                                               ; preds = %82, %16
  ret void
}

declare dso_local %struct.ipath_swqe* @get_swqe_ptr(%struct.ipath_qp*, i32) #1

declare dso_local i32 @ipath_send_complete(%struct.ipath_qp*, %struct.ipath_swqe*, i32) #1

declare dso_local i32 @ipath_error_qp(%struct.ipath_qp*, i32) #1

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @reset_psn(%struct.ipath_qp*, i32) #1

declare dso_local i32 @ipath_schedule_send(%struct.ipath_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
