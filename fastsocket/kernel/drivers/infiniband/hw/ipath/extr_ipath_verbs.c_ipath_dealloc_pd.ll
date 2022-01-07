; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ipath_pd = type { i32 }
%struct.ipath_ibdev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*)* @ipath_dealloc_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_dealloc_pd(%struct.ib_pd* %0) #0 {
  %2 = alloca %struct.ib_pd*, align 8
  %3 = alloca %struct.ipath_pd*, align 8
  %4 = alloca %struct.ipath_ibdev*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %2, align 8
  %5 = load %struct.ib_pd*, %struct.ib_pd** %2, align 8
  %6 = call %struct.ipath_pd* @to_ipd(%struct.ib_pd* %5)
  store %struct.ipath_pd* %6, %struct.ipath_pd** %3, align 8
  %7 = load %struct.ib_pd*, %struct.ib_pd** %2, align 8
  %8 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %7, i32 0, i32 0
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
  %21 = load %struct.ipath_pd*, %struct.ipath_pd** %3, align 8
  %22 = call i32 @kfree(%struct.ipath_pd* %21)
  ret i32 0
}

declare dso_local %struct.ipath_pd* @to_ipd(%struct.ib_pd*) #1

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ipath_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
