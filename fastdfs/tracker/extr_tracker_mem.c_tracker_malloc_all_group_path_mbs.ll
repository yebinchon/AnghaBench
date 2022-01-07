; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_malloc_all_group_path_mbs.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_malloc_all_group_path_mbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @tracker_malloc_all_group_path_mbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracker_malloc_all_group_path_mbs(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %9, i64 %13
  store %struct.TYPE_6__** %14, %struct.TYPE_6__*** %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  store %struct.TYPE_6__** %17, %struct.TYPE_6__*** %4, align 8
  br label %18

18:                                               ; preds = %37, %1
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %21 = icmp ult %struct.TYPE_6__** %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %37

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @tracker_malloc_group_path_mbs(%struct.TYPE_6__* %31)
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %41

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %28
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i32 1
  store %struct.TYPE_6__** %39, %struct.TYPE_6__*** %4, align 8
  br label %18

40:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @tracker_malloc_group_path_mbs(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
