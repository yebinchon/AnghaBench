; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_srq.c_ipath_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_srq.c_ipath_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ipath_srq = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ipath_ibdev = type { i32, i32 }

@ipath_release_mmap_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_destroy_srq(%struct.ib_srq* %0) #0 {
  %2 = alloca %struct.ib_srq*, align 8
  %3 = alloca %struct.ipath_srq*, align 8
  %4 = alloca %struct.ipath_ibdev*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %2, align 8
  %5 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %6 = call %struct.ipath_srq* @to_isrq(%struct.ib_srq* %5)
  store %struct.ipath_srq* %6, %struct.ipath_srq** %3, align 8
  %7 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %8 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ipath_ibdev* @to_idev(i32 %9)
  store %struct.ipath_ibdev* %10, %struct.ipath_ibdev** %4, align 8
  %11 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %12 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %15 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %19 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load %struct.ipath_srq*, %struct.ipath_srq** %3, align 8
  %22 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.ipath_srq*, %struct.ipath_srq** %3, align 8
  %27 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* @ipath_release_mmap_info, align 4
  %31 = call i32 @kref_put(i32* %29, i32 %30)
  br label %38

32:                                               ; preds = %1
  %33 = load %struct.ipath_srq*, %struct.ipath_srq** %3, align 8
  %34 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @vfree(i32 %36)
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.ipath_srq*, %struct.ipath_srq** %3, align 8
  %40 = call i32 @kfree(%struct.ipath_srq* %39)
  ret i32 0
}

declare dso_local %struct.ipath_srq* @to_isrq(%struct.ib_srq*) #1

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.ipath_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
