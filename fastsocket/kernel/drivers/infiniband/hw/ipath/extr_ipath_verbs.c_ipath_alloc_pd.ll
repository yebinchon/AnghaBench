; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ipath_ibdev = type { i64, i32 }
%struct.ipath_pd = type { %struct.ib_pd, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_ipath_max_pds = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_pd* (%struct.ib_device*, %struct.ib_ucontext*, %struct.ib_udata*)* @ipath_alloc_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_pd* @ipath_alloc_pd(%struct.ib_device* %0, %struct.ib_ucontext* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_ucontext*, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.ipath_ibdev*, align 8
  %8 = alloca %struct.ipath_pd*, align 8
  %9 = alloca %struct.ib_pd*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %5, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %11 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %10)
  store %struct.ipath_ibdev* %11, %struct.ipath_ibdev** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ipath_pd* @kmalloc(i32 8, i32 %12)
  store %struct.ipath_pd* %13, %struct.ipath_pd** %8, align 8
  %14 = load %struct.ipath_pd*, %struct.ipath_pd** %8, align 8
  %15 = icmp ne %struct.ipath_pd* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.ib_pd* @ERR_PTR(i32 %18)
  store %struct.ib_pd* %19, %struct.ib_pd** %9, align 8
  br label %53

20:                                               ; preds = %3
  %21 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %22 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %25 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ib_ipath_max_pds, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %31 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.ipath_pd*, %struct.ipath_pd** %8, align 8
  %34 = call i32 @kfree(%struct.ipath_pd* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.ib_pd* @ERR_PTR(i32 %36)
  store %struct.ib_pd* %37, %struct.ib_pd** %9, align 8
  br label %53

38:                                               ; preds = %20
  %39 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %40 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %44 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %47 = icmp ne %struct.ib_udata* %46, null
  %48 = zext i1 %47 to i32
  %49 = load %struct.ipath_pd*, %struct.ipath_pd** %8, align 8
  %50 = getelementptr inbounds %struct.ipath_pd, %struct.ipath_pd* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ipath_pd*, %struct.ipath_pd** %8, align 8
  %52 = getelementptr inbounds %struct.ipath_pd, %struct.ipath_pd* %51, i32 0, i32 0
  store %struct.ib_pd* %52, %struct.ib_pd** %9, align 8
  br label %53

53:                                               ; preds = %38, %29, %16
  %54 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  ret %struct.ib_pd* %54
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local %struct.ipath_pd* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_pd* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ipath_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
