; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_qib_restart_rc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_qib_restart_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i64, i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qib_swqe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.qib_ibport = type { i64 }

@IB_MIG_ARMED = common dso_local global i64 0, align 8
@IB_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@QIB_PSN_MASK = common dso_local global i32 0, align 4
@QIB_S_WAIT_FENCE = common dso_local global i32 0, align 4
@QIB_S_WAIT_RDMAR = common dso_local global i32 0, align 4
@QIB_S_WAIT_SSN_CREDIT = common dso_local global i32 0, align 4
@QIB_S_WAIT_PSN = common dso_local global i32 0, align 4
@QIB_S_WAIT_ACK = common dso_local global i32 0, align 4
@QIB_S_SEND_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_qp*, i32, i32)* @qib_restart_rc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_restart_rc(%struct.qib_qp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qib_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_swqe*, align 8
  %8 = alloca %struct.qib_ibport*, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %10 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %11 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp* %9, i64 %12)
  store %struct.qib_swqe* %13, %struct.qib_swqe** %7, align 8
  %14 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %15 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %3
  %19 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %20 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IB_MIG_ARMED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %26 = call i32 @qib_migrate_qp(%struct.qib_qp* %25)
  %27 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %28 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %31 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  br label %49

32:                                               ; preds = %18
  %33 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %34 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %37 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %42 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %43 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  %44 = call i32 @qib_send_complete(%struct.qib_qp* %41, %struct.qib_swqe* %42, i32 %43)
  %45 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %46 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %47 = call i32 @qib_error_qp(%struct.qib_qp* %45, i32 %46)
  br label %115

48:                                               ; preds = %32
  br label %115

49:                                               ; preds = %24
  br label %55

50:                                               ; preds = %3
  %51 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %52 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %50, %49
  %56 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %57 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %56, i32 0, i32 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %61 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.qib_ibport* @to_iport(i32 %59, i32 %62)
  store %struct.qib_ibport* %63, %struct.qib_ibport** %8, align 8
  %64 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %65 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %55
  %71 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %72 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  br label %88

75:                                               ; preds = %55
  %76 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %77 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i32, i32* @QIB_PSN_MASK, align 4
  %82 = and i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %85 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %83
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %75, %70
  %89 = load i32, i32* @QIB_S_WAIT_FENCE, align 4
  %90 = load i32, i32* @QIB_S_WAIT_RDMAR, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @QIB_S_WAIT_SSN_CREDIT, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @QIB_S_WAIT_PSN, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @QIB_S_WAIT_ACK, align 4
  %97 = or i32 %95, %96
  %98 = xor i32 %97, -1
  %99 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %100 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %88
  %106 = load i32, i32* @QIB_S_SEND_ONE, align 4
  %107 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %108 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %88
  %112 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @reset_psn(%struct.qib_qp* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %48, %40
  ret void
}

declare dso_local %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp*, i64) #1

declare dso_local i32 @qib_migrate_qp(%struct.qib_qp*) #1

declare dso_local i32 @qib_send_complete(%struct.qib_qp*, %struct.qib_swqe*, i32) #1

declare dso_local i32 @qib_error_qp(%struct.qib_qp*, i32) #1

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local i32 @reset_psn(%struct.qib_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
