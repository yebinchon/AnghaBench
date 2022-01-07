; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_sdma_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_sdma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_verbs_txreq = type { %struct.TYPE_4__, i64, %struct.ipath_qp* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ipath_qp = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipath_ibdev = type { i32 }

@IPATH_SDMA_TXREQ_S_OK = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@ib_ipath_state_ops = common dso_local global i32* null, align 8
@IPATH_FLUSH_SEND = common dso_local global i32 0, align 4
@IPATH_S_WAIT_DMA = common dso_local global i32 0, align 4
@IPATH_SDMA_TXREQ_F_FREEBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sdma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_complete(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipath_verbs_txreq*, align 8
  %6 = alloca %struct.ipath_qp*, align 8
  %7 = alloca %struct.ipath_ibdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.ipath_verbs_txreq*
  store %struct.ipath_verbs_txreq* %11, %struct.ipath_verbs_txreq** %5, align 8
  %12 = load %struct.ipath_verbs_txreq*, %struct.ipath_verbs_txreq** %5, align 8
  %13 = getelementptr inbounds %struct.ipath_verbs_txreq, %struct.ipath_verbs_txreq* %12, i32 0, i32 2
  %14 = load %struct.ipath_qp*, %struct.ipath_qp** %13, align 8
  store %struct.ipath_qp* %14, %struct.ipath_qp** %6, align 8
  %15 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %16 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.ipath_ibdev* @to_idev(i32 %18)
  store %struct.ipath_ibdev* %19, %struct.ipath_ibdev** %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IPATH_SDMA_TXREQ_S_OK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IB_WC_SUCCESS, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %30 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %29, i32 0, i32 8
  %31 = call i64 @atomic_dec_and_test(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %85

33:                                               ; preds = %27
  %34 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %35 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %34, i32 0, i32 6
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.ipath_verbs_txreq*, %struct.ipath_verbs_txreq** %5, align 8
  %39 = getelementptr inbounds %struct.ipath_verbs_txreq, %struct.ipath_verbs_txreq* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %44 = load %struct.ipath_verbs_txreq*, %struct.ipath_verbs_txreq** %5, align 8
  %45 = getelementptr inbounds %struct.ipath_verbs_txreq, %struct.ipath_verbs_txreq* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ipath_send_complete(%struct.ipath_qp* %43, i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %33
  %50 = load i32*, i32** @ib_ipath_state_ops, align 8
  %51 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %52 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IPATH_FLUSH_SEND, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %61 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %64 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %59, %49
  %68 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %69 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IPATH_S_WAIT_DMA, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67, %59
  %75 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %76 = call i32 @ipath_schedule_send(%struct.ipath_qp* %75)
  br label %77

77:                                               ; preds = %74, %67
  %78 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %79 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %78, i32 0, i32 6
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %83 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %82, i32 0, i32 7
  %84 = call i32 @wake_up(i32* %83)
  br label %106

85:                                               ; preds = %27
  %86 = load %struct.ipath_verbs_txreq*, %struct.ipath_verbs_txreq** %5, align 8
  %87 = getelementptr inbounds %struct.ipath_verbs_txreq, %struct.ipath_verbs_txreq* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %92 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %91, i32 0, i32 6
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  %95 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %96 = load %struct.ipath_verbs_txreq*, %struct.ipath_verbs_txreq** %5, align 8
  %97 = getelementptr inbounds %struct.ipath_verbs_txreq, %struct.ipath_verbs_txreq* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @ipath_send_complete(%struct.ipath_qp* %95, i64 %98, i32 %99)
  %101 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %102 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %101, i32 0, i32 6
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %90, %85
  br label %106

106:                                              ; preds = %105, %77
  %107 = load %struct.ipath_verbs_txreq*, %struct.ipath_verbs_txreq** %5, align 8
  %108 = getelementptr inbounds %struct.ipath_verbs_txreq, %struct.ipath_verbs_txreq* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IPATH_SDMA_TXREQ_F_FREEBUF, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load %struct.ipath_verbs_txreq*, %struct.ipath_verbs_txreq** %5, align 8
  %116 = getelementptr inbounds %struct.ipath_verbs_txreq, %struct.ipath_verbs_txreq* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @kfree(i32 %118)
  br label %120

120:                                              ; preds = %114, %106
  %121 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %122 = load %struct.ipath_verbs_txreq*, %struct.ipath_verbs_txreq** %5, align 8
  %123 = call i32 @put_txreq(%struct.ipath_ibdev* %121, %struct.ipath_verbs_txreq* %122)
  %124 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %125 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %124, i32 0, i32 5
  %126 = call i64 @atomic_dec_and_test(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %130 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %129, i32 0, i32 4
  %131 = call i32 @wake_up(i32* %130)
  br label %132

132:                                              ; preds = %128, %120
  ret void
}

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipath_send_complete(%struct.ipath_qp*, i64, i32) #1

declare dso_local i32 @ipath_schedule_send(%struct.ipath_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @put_txreq(%struct.ipath_ibdev*, %struct.ipath_verbs_txreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
