; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_cq.c_ipath_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_cq.c_ipath_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ipath_ibdev = type { i32, i32 }
%struct.ipath_cq = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ipath_release_mmap_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_destroy_cq(%struct.ib_cq* %0) #0 {
  %2 = alloca %struct.ib_cq*, align 8
  %3 = alloca %struct.ipath_ibdev*, align 8
  %4 = alloca %struct.ipath_cq*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %2, align 8
  %5 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %6 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.ipath_ibdev* @to_idev(i32 %7)
  store %struct.ipath_ibdev* %8, %struct.ipath_ibdev** %3, align 8
  %9 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %10 = call %struct.ipath_cq* @to_icq(%struct.ib_cq* %9)
  store %struct.ipath_cq* %10, %struct.ipath_cq** %4, align 8
  %11 = load %struct.ipath_cq*, %struct.ipath_cq** %4, align 8
  %12 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %11, i32 0, i32 2
  %13 = call i32 @tasklet_kill(i32* %12)
  %14 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %15 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %18 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %22 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.ipath_cq*, %struct.ipath_cq** %4, align 8
  %25 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.ipath_cq*, %struct.ipath_cq** %4, align 8
  %30 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @ipath_release_mmap_info, align 4
  %34 = call i32 @kref_put(i32* %32, i32 %33)
  br label %40

35:                                               ; preds = %1
  %36 = load %struct.ipath_cq*, %struct.ipath_cq** %4, align 8
  %37 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @vfree(i32 %38)
  br label %40

40:                                               ; preds = %35, %28
  %41 = load %struct.ipath_cq*, %struct.ipath_cq** %4, align 8
  %42 = call i32 @kfree(%struct.ipath_cq* %41)
  ret i32 0
}

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local %struct.ipath_cq* @to_icq(%struct.ib_cq*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.ipath_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
