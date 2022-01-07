; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs_mcast.c_qib_multicast_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs_mcast.c_qib_multicast_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%union.ib_gid = type { i32 }
%struct.qib_qp = type { i64, i32 }
%struct.qib_ibdev = type { i32 }
%struct.qib_ibport = type { i32 }
%struct.qib_mcast = type { i32 }
%struct.qib_mcast_qp = type { i32 }

@IB_QPS_RESET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_multicast_attach(%struct.ib_qp* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_qp*, align 8
  %8 = alloca %struct.qib_ibdev*, align 8
  %9 = alloca %struct.qib_ibport*, align 8
  %10 = alloca %struct.qib_mcast*, align 8
  %11 = alloca %struct.qib_mcast_qp*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %union.ib_gid* %1, %union.ib_gid** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %14 = call %struct.qib_qp* @to_iqp(%struct.ib_qp* %13)
  store %struct.qib_qp* %14, %struct.qib_qp** %7, align 8
  %15 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %16 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.qib_ibdev* @to_idev(i32 %17)
  store %struct.qib_ibdev* %18, %struct.qib_ibdev** %8, align 8
  %19 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %20 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %25 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IB_QPS_RESET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  br label %74

32:                                               ; preds = %23
  %33 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %34 = call %struct.qib_mcast* @qib_mcast_alloc(%union.ib_gid* %33)
  store %struct.qib_mcast* %34, %struct.qib_mcast** %10, align 8
  %35 = load %struct.qib_mcast*, %struct.qib_mcast** %10, align 8
  %36 = icmp eq %struct.qib_mcast* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 -129, i32* %12, align 4
  br label %74

38:                                               ; preds = %32
  %39 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %40 = call %struct.qib_mcast_qp* @qib_mcast_qp_alloc(%struct.qib_qp* %39)
  store %struct.qib_mcast_qp* %40, %struct.qib_mcast_qp** %11, align 8
  %41 = load %struct.qib_mcast_qp*, %struct.qib_mcast_qp** %11, align 8
  %42 = icmp eq %struct.qib_mcast_qp* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.qib_mcast*, %struct.qib_mcast** %10, align 8
  %45 = call i32 @qib_mcast_free(%struct.qib_mcast* %44)
  store i32 -129, i32* %12, align 4
  br label %74

46:                                               ; preds = %38
  %47 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %48 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %51 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.qib_ibport* @to_iport(i32 %49, i32 %52)
  store %struct.qib_ibport* %53, %struct.qib_ibport** %9, align 8
  %54 = load %struct.qib_ibdev*, %struct.qib_ibdev** %8, align 8
  %55 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %56 = load %struct.qib_mcast*, %struct.qib_mcast** %10, align 8
  %57 = load %struct.qib_mcast_qp*, %struct.qib_mcast_qp** %11, align 8
  %58 = call i32 @qib_mcast_add(%struct.qib_ibdev* %54, %struct.qib_ibport* %55, %struct.qib_mcast* %56, %struct.qib_mcast_qp* %57)
  switch i32 %58, label %72 [
    i32 128, label %59
    i32 130, label %64
    i32 129, label %67
  ]

59:                                               ; preds = %46
  %60 = load %struct.qib_mcast_qp*, %struct.qib_mcast_qp** %11, align 8
  %61 = call i32 @qib_mcast_qp_free(%struct.qib_mcast_qp* %60)
  %62 = load %struct.qib_mcast*, %struct.qib_mcast** %10, align 8
  %63 = call i32 @qib_mcast_free(%struct.qib_mcast* %62)
  br label %73

64:                                               ; preds = %46
  %65 = load %struct.qib_mcast*, %struct.qib_mcast** %10, align 8
  %66 = call i32 @qib_mcast_free(%struct.qib_mcast* %65)
  br label %73

67:                                               ; preds = %46
  %68 = load %struct.qib_mcast_qp*, %struct.qib_mcast_qp** %11, align 8
  %69 = call i32 @qib_mcast_qp_free(%struct.qib_mcast_qp* %68)
  %70 = load %struct.qib_mcast*, %struct.qib_mcast** %10, align 8
  %71 = call i32 @qib_mcast_free(%struct.qib_mcast* %70)
  store i32 -129, i32* %12, align 4
  br label %74

72:                                               ; preds = %46
  br label %73

73:                                               ; preds = %72, %64, %59
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %67, %43, %37, %29
  %75 = load i32, i32* %12, align 4
  ret i32 %75
}

declare dso_local %struct.qib_qp* @to_iqp(%struct.ib_qp*) #1

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local %struct.qib_mcast* @qib_mcast_alloc(%union.ib_gid*) #1

declare dso_local %struct.qib_mcast_qp* @qib_mcast_qp_alloc(%struct.qib_qp*) #1

declare dso_local i32 @qib_mcast_free(%struct.qib_mcast*) #1

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local i32 @qib_mcast_add(%struct.qib_ibdev*, %struct.qib_ibport*, %struct.qib_mcast*, %struct.qib_mcast_qp*) #1

declare dso_local i32 @qib_mcast_qp_free(%struct.qib_mcast_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
