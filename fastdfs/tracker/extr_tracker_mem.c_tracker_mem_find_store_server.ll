; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_mem_find_store_server.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_mem_find_store_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@g_groups = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@FDFS_STORE_SERVER_FIRST_BY_PRI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @tracker_mem_find_store_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracker_mem_find_store_server(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  br label %64

13:                                               ; preds = %1
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_groups, i32 0, i32 0), align 8
  %15 = load i64, i64* @FDFS_STORE_SERVER_FIRST_BY_PRI, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %5, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %24, i64 %27
  store %struct.TYPE_5__** %28, %struct.TYPE_5__*** %3, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %31, i64 1
  store %struct.TYPE_5__** %32, %struct.TYPE_5__*** %4, align 8
  br label %33

33:                                               ; preds = %50, %17
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %36 = icmp ult %struct.TYPE_5__** %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %5, align 8
  br label %49

49:                                               ; preds = %46, %37
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %51, i32 1
  store %struct.TYPE_5__** %52, %struct.TYPE_5__*** %4, align 8
  br label %33

53:                                               ; preds = %33
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %56, align 8
  br label %64

57:                                               ; preds = %13
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %63, align 8
  br label %64

64:                                               ; preds = %10, %57, %53
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
