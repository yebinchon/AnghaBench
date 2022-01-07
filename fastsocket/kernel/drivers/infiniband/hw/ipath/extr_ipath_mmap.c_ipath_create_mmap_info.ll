; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mmap.c_ipath_create_mmap_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mmap.c_ipath_create_mmap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_mmap_info = type { i64, i64, i32, i8*, %struct.ib_ucontext*, i32 }
%struct.ipath_ibdev = type { i64, i32 }
%struct.ib_ucontext = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipath_mmap_info* @ipath_create_mmap_info(%struct.ipath_ibdev* %0, i64 %1, %struct.ib_ucontext* %2, i8* %3) #0 {
  %5 = alloca %struct.ipath_ibdev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_ucontext*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipath_mmap_info*, align 8
  store %struct.ipath_ibdev* %0, %struct.ipath_ibdev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ib_ucontext* %2, %struct.ib_ucontext** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ipath_mmap_info* @kmalloc(i32 48, i32 %10)
  store %struct.ipath_mmap_info* %11, %struct.ipath_mmap_info** %9, align 8
  %12 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %9, align 8
  %13 = icmp ne %struct.ipath_mmap_info* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %58

15:                                               ; preds = %4
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @PAGE_ALIGN(i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %19 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %18, i32 0, i32 1
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %22 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %28 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %15
  %30 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %31 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %9, align 8
  %34 = getelementptr inbounds %struct.ipath_mmap_info, %struct.ipath_mmap_info* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %37 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %41 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock_irq(i32* %41)
  %43 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %9, align 8
  %44 = getelementptr inbounds %struct.ipath_mmap_info, %struct.ipath_mmap_info* %43, i32 0, i32 5
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %9, align 8
  %48 = getelementptr inbounds %struct.ipath_mmap_info, %struct.ipath_mmap_info* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %50 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %9, align 8
  %51 = getelementptr inbounds %struct.ipath_mmap_info, %struct.ipath_mmap_info* %50, i32 0, i32 4
  store %struct.ib_ucontext* %49, %struct.ib_ucontext** %51, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %9, align 8
  %54 = getelementptr inbounds %struct.ipath_mmap_info, %struct.ipath_mmap_info* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %9, align 8
  %56 = getelementptr inbounds %struct.ipath_mmap_info, %struct.ipath_mmap_info* %55, i32 0, i32 2
  %57 = call i32 @kref_init(i32* %56)
  br label %58

58:                                               ; preds = %29, %14
  %59 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %9, align 8
  ret %struct.ipath_mmap_info* %59
}

declare dso_local %struct.ipath_mmap_info* @kmalloc(i32, i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
