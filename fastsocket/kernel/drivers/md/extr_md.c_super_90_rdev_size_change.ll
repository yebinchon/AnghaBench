; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_super_90_rdev_size_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_super_90_rdev_size_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.md_rdev*, i64)* @super_90_rdev_size_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @super_90_rdev_size_change(%struct.md_rdev* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i64, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %11 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i64 0, i64* %3, align 8
  br label %74

17:                                               ; preds = %8, %2
  %18 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %19 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %74

26:                                               ; preds = %17
  %27 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %28 = call i64 @calc_dev_sboffset(%struct.md_rdev* %27)
  %29 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %30 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %36 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33, %26
  %40 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %41 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i64, i64* %5, align 8
  %45 = icmp uge i64 %44, 8589934592
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %48 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i64 8589934590, i64* %5, align 8
  br label %54

54:                                               ; preds = %53, %46, %43
  %55 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %56 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %59 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %60 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %63 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %66 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @md_super_write(%struct.TYPE_5__* %57, %struct.md_rdev* %58, i64 %61, i32 %64, i32 %67)
  %69 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %70 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = call i32 @md_super_wait(%struct.TYPE_5__* %71)
  %73 = load i64, i64* %5, align 8
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %54, %25, %16
  %75 = load i64, i64* %3, align 8
  ret i64 %75
}

declare dso_local i64 @calc_dev_sboffset(%struct.md_rdev*) #1

declare dso_local i32 @md_super_write(%struct.TYPE_5__*, %struct.md_rdev*, i64, i32, i32) #1

declare dso_local i32 @md_super_wait(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
