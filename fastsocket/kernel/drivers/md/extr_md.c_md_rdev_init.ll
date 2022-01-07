; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_rdev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_rdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32*, i64, %struct.TYPE_3__, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32*, i32, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_rdev_init(%struct.md_rdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.md_rdev*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %3, align 8
  %4 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %5 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %4, i32 0, i32 0
  store i32 -1, i32* %5, align 8
  %6 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %7 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %6, i32 0, i32 1
  store i32 -1, i32* %7, align 4
  %8 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %9 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %8, i32 0, i32 2
  store i32 -1, i32* %9, align 8
  %10 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %11 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %10, i32 0, i32 15
  store i64 0, i64* %11, align 8
  %12 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %13 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %12, i32 0, i32 14
  store i64 0, i64* %13, align 8
  %14 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %15 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %14, i32 0, i32 13
  store i64 0, i64* %15, align 8
  %16 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %17 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %16, i32 0, i32 12
  store i64 0, i64* %17, align 8
  %18 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %19 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %22 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %21, i32 0, i32 11
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %25 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %24, i32 0, i32 10
  store i64 0, i64* %25, align 8
  %26 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %27 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %26, i32 0, i32 9
  store i32* null, i32** %27, align 8
  %28 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %29 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %28, i32 0, i32 8
  %30 = call i32 @atomic_set(i32* %29, i32 0)
  %31 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %32 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %31, i32 0, i32 7
  %33 = call i32 @atomic_set(i32* %32, i32 0)
  %34 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %35 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %34, i32 0, i32 6
  %36 = call i32 @atomic_set(i32* %35, i32 0)
  %37 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %38 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %37, i32 0, i32 5
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %41 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %40, i32 0, i32 4
  %42 = call i32 @init_waitqueue_head(i32* %41)
  %43 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %44 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %47 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32* @kmalloc(i32 %49, i32 %50)
  %52 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %53 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32* %51, i32** %54, align 8
  %55 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %56 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = call i32 @seqlock_init(i32* %57)
  %59 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %60 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %1
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @seqlock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
