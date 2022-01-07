; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_rdma_seq_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_rdma_seq_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.qib_ibport = type { i32 }
%struct.qib_ctxtdata = type { i32 }
%struct.qib_swqe = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@QIB_S_TIMER = common dso_local global i32 0, align 4
@QIB_S_WAIT_RNR = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_CMP_AND_SWP = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_FETCH_AND_ADD = common dso_local global i64 0, align 8
@QIB_R_RDMAR_SEQ = common dso_local global i32 0, align 4
@QIB_R_RSP_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_qp*, %struct.qib_ibport*, i32, %struct.qib_ctxtdata*)* @rdma_seq_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_seq_err(%struct.qib_qp* %0, %struct.qib_ibport* %1, i32 %2, %struct.qib_ctxtdata* %3) #0 {
  %5 = alloca %struct.qib_qp*, align 8
  %6 = alloca %struct.qib_ibport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_ctxtdata*, align 8
  %9 = alloca %struct.qib_swqe*, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %5, align 8
  store %struct.qib_ibport* %1, %struct.qib_ibport** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.qib_ctxtdata* %3, %struct.qib_ctxtdata** %8, align 8
  %10 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %11 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @QIB_S_TIMER, align 4
  %14 = load i32, i32* @QIB_S_WAIT_RNR, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load i32, i32* @QIB_S_TIMER, align 4
  %20 = load i32, i32* @QIB_S_WAIT_RNR, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %24 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %28 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %27, i32 0, i32 6
  %29 = call i32 @del_timer(i32* %28)
  br label %30

30:                                               ; preds = %18, %4
  %31 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %32 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %33 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp* %31, i32 %34)
  store %struct.qib_swqe* %35, %struct.qib_swqe** %9, align 8
  br label %36

36:                                               ; preds = %65, %30
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.qib_swqe*, %struct.qib_swqe** %9, align 8
  %39 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @qib_cmp24(i32 %37, i32 %40)
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %36
  %44 = load %struct.qib_swqe*, %struct.qib_swqe** %9, align 8
  %45 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %43
  %51 = load %struct.qib_swqe*, %struct.qib_swqe** %9, align 8
  %52 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.qib_swqe*, %struct.qib_swqe** %9, align 8
  %59 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %50, %43
  br label %70

65:                                               ; preds = %57
  %66 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %67 = load %struct.qib_swqe*, %struct.qib_swqe** %9, align 8
  %68 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %69 = call %struct.qib_swqe* @do_rc_completion(%struct.qib_qp* %66, %struct.qib_swqe* %67, %struct.qib_ibport* %68)
  store %struct.qib_swqe* %69, %struct.qib_swqe** %9, align 8
  br label %36

70:                                               ; preds = %64, %36
  %71 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %72 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @QIB_R_RDMAR_SEQ, align 4
  %76 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %77 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %81 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %82 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  %85 = call i32 @qib_restart_rc(%struct.qib_qp* %80, i64 %84, i32 0)
  %86 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %87 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %86, i32 0, i32 1
  %88 = call i64 @list_empty(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %70
  %91 = load i32, i32* @QIB_R_RSP_SEND, align 4
  %92 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %93 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %97 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %96, i32 0, i32 2
  %98 = call i32 @atomic_inc(i32* %97)
  %99 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %100 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %99, i32 0, i32 1
  %101 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %102 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %101, i32 0, i32 0
  %103 = call i32 @list_add_tail(i32* %100, i32* %102)
  br label %104

104:                                              ; preds = %90, %70
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp*, i32) #1

declare dso_local i64 @qib_cmp24(i32, i32) #1

declare dso_local %struct.qib_swqe* @do_rc_completion(%struct.qib_qp*, %struct.qib_swqe*, %struct.qib_ibport*) #1

declare dso_local i32 @qib_restart_rc(%struct.qib_qp*, i64, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
