; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs_mcast.c_ipath_multicast_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs_mcast.c_ipath_multicast_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%union.ib_gid = type { i32 }
%struct.ipath_qp = type { i32 }
%struct.ipath_ibdev = type { i32 }
%struct.ipath_mcast = type { i32 }
%struct.ipath_mcast_qp = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_multicast_attach(%struct.ib_qp* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipath_qp*, align 8
  %8 = alloca %struct.ipath_ibdev*, align 8
  %9 = alloca %struct.ipath_mcast*, align 8
  %10 = alloca %struct.ipath_mcast_qp*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %union.ib_gid* %1, %union.ib_gid** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %13 = call %struct.ipath_qp* @to_iqp(%struct.ib_qp* %12)
  store %struct.ipath_qp* %13, %struct.ipath_qp** %7, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %15 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ipath_ibdev* @to_idev(i32 %16)
  store %struct.ipath_ibdev* %17, %struct.ipath_ibdev** %8, align 8
  %18 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %19 = call %struct.ipath_mcast* @ipath_mcast_alloc(%union.ib_gid* %18)
  store %struct.ipath_mcast* %19, %struct.ipath_mcast** %9, align 8
  %20 = load %struct.ipath_mcast*, %struct.ipath_mcast** %9, align 8
  %21 = icmp eq %struct.ipath_mcast* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -129, i32* %11, align 4
  br label %53

23:                                               ; preds = %3
  %24 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %25 = call %struct.ipath_mcast_qp* @ipath_mcast_qp_alloc(%struct.ipath_qp* %24)
  store %struct.ipath_mcast_qp* %25, %struct.ipath_mcast_qp** %10, align 8
  %26 = load %struct.ipath_mcast_qp*, %struct.ipath_mcast_qp** %10, align 8
  %27 = icmp eq %struct.ipath_mcast_qp* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.ipath_mcast*, %struct.ipath_mcast** %9, align 8
  %30 = call i32 @ipath_mcast_free(%struct.ipath_mcast* %29)
  store i32 -129, i32* %11, align 4
  br label %53

31:                                               ; preds = %23
  %32 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %33 = load %struct.ipath_mcast*, %struct.ipath_mcast** %9, align 8
  %34 = load %struct.ipath_mcast_qp*, %struct.ipath_mcast_qp** %10, align 8
  %35 = call i32 @ipath_mcast_add(%struct.ipath_ibdev* %32, %struct.ipath_mcast* %33, %struct.ipath_mcast_qp* %34)
  switch i32 %35, label %51 [
    i32 128, label %36
    i32 130, label %43
    i32 129, label %46
  ]

36:                                               ; preds = %31
  %37 = load %struct.ipath_mcast_qp*, %struct.ipath_mcast_qp** %10, align 8
  %38 = call i32 @ipath_mcast_qp_free(%struct.ipath_mcast_qp* %37)
  %39 = load %struct.ipath_mcast*, %struct.ipath_mcast** %9, align 8
  %40 = call i32 @ipath_mcast_free(%struct.ipath_mcast* %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %53

43:                                               ; preds = %31
  %44 = load %struct.ipath_mcast*, %struct.ipath_mcast** %9, align 8
  %45 = call i32 @ipath_mcast_free(%struct.ipath_mcast* %44)
  br label %52

46:                                               ; preds = %31
  %47 = load %struct.ipath_mcast_qp*, %struct.ipath_mcast_qp** %10, align 8
  %48 = call i32 @ipath_mcast_qp_free(%struct.ipath_mcast_qp* %47)
  %49 = load %struct.ipath_mcast*, %struct.ipath_mcast** %9, align 8
  %50 = call i32 @ipath_mcast_free(%struct.ipath_mcast* %49)
  store i32 -129, i32* %11, align 4
  br label %53

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51, %43
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %46, %36, %28, %22
  %54 = load i32, i32* %11, align 4
  ret i32 %54
}

declare dso_local %struct.ipath_qp* @to_iqp(%struct.ib_qp*) #1

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local %struct.ipath_mcast* @ipath_mcast_alloc(%union.ib_gid*) #1

declare dso_local %struct.ipath_mcast_qp* @ipath_mcast_qp_alloc(%struct.ipath_qp*) #1

declare dso_local i32 @ipath_mcast_free(%struct.ipath_mcast*) #1

declare dso_local i32 @ipath_mcast_add(%struct.ipath_ibdev*, %struct.ipath_mcast*, %struct.ipath_mcast_qp*) #1

declare dso_local i32 @ipath_mcast_qp_free(%struct.ipath_mcast_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
