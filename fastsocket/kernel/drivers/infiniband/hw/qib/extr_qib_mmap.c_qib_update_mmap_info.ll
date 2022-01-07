; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mmap.c_qib_update_mmap_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mmap.c_qib_update_mmap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibdev = type { i64, i32 }
%struct.qib_mmap_info = type { i64, i64, i8* }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_update_mmap_info(%struct.qib_ibdev* %0, %struct.qib_mmap_info* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.qib_ibdev*, align 8
  %6 = alloca %struct.qib_mmap_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.qib_ibdev* %0, %struct.qib_ibdev** %5, align 8
  store %struct.qib_mmap_info* %1, %struct.qib_mmap_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i64 @PAGE_ALIGN(i64 %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.qib_ibdev*, %struct.qib_ibdev** %5, align 8
  %12 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.qib_ibdev*, %struct.qib_ibdev** %5, align 8
  %15 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = load %struct.qib_ibdev*, %struct.qib_ibdev** %5, align 8
  %21 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %4
  %23 = load %struct.qib_ibdev*, %struct.qib_ibdev** %5, align 8
  %24 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.qib_mmap_info*, %struct.qib_mmap_info** %6, align 8
  %27 = getelementptr inbounds %struct.qib_mmap_info, %struct.qib_mmap_info* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.qib_ibdev*, %struct.qib_ibdev** %5, align 8
  %30 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.qib_ibdev*, %struct.qib_ibdev** %5, align 8
  %34 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock_irq(i32* %34)
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.qib_mmap_info*, %struct.qib_mmap_info** %6, align 8
  %38 = getelementptr inbounds %struct.qib_mmap_info, %struct.qib_mmap_info* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.qib_mmap_info*, %struct.qib_mmap_info** %6, align 8
  %41 = getelementptr inbounds %struct.qib_mmap_info, %struct.qib_mmap_info* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  ret void
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
