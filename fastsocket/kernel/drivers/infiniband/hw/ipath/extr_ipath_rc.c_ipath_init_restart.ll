; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_rc.c_ipath_init_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_rc.c_ipath_init_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ipath_swqe = type { i32 }
%struct.ipath_ibdev = type { i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_qp*, %struct.ipath_swqe*)* @ipath_init_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_init_restart(%struct.ipath_qp* %0, %struct.ipath_swqe* %1) #0 {
  %3 = alloca %struct.ipath_qp*, align 8
  %4 = alloca %struct.ipath_swqe*, align 8
  %5 = alloca %struct.ipath_ibdev*, align 8
  store %struct.ipath_qp* %0, %struct.ipath_qp** %3, align 8
  store %struct.ipath_swqe* %1, %struct.ipath_swqe** %4, align 8
  %6 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %7 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %6, i32 0, i32 4
  %8 = load %struct.ipath_swqe*, %struct.ipath_swqe** %4, align 8
  %9 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %10 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %13 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ib_mtu_enum_to_int(i32 %14)
  %16 = call i32 @restart_sge(i32* %7, %struct.ipath_swqe* %8, i32 %11, i32 %15)
  %17 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %18 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %20 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ipath_ibdev* @to_idev(i32 %22)
  store %struct.ipath_ibdev* %23, %struct.ipath_ibdev** %5, align 8
  %24 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %25 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %28 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %27, i32 0, i32 0
  %29 = call i64 @list_empty(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %33 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %32, i32 0, i32 0
  %34 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %35 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %38 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = call i32 @list_add_tail(i32* %33, i32* %40)
  br label %42

42:                                               ; preds = %31, %2
  %43 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %44 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  ret void
}

declare dso_local i32 @restart_sge(i32*, %struct.ipath_swqe*, i32, i32) #1

declare dso_local i32 @ib_mtu_enum_to_int(i32) #1

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
