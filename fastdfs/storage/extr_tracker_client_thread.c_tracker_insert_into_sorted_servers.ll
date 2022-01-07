; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_tracker_client_thread.c_tracker_insert_into_sorted_servers.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_tracker_client_thread.c_tracker_insert_into_sorted_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@g_sorted_storages = common dso_local global %struct.TYPE_6__** null, align 8
@g_storage_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @tracker_insert_into_sorted_servers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracker_insert_into_sorted_servers(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @g_sorted_storages, align 8
  %8 = load i32, i32* @g_storage_count, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %7, i64 %9
  store %struct.TYPE_6__** %10, %struct.TYPE_6__*** %5, align 8
  %11 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__** %11, %struct.TYPE_6__*** %4, align 8
  br label %12

12:                                               ; preds = %57, %1
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @g_sorted_storages, align 8
  %15 = icmp ugt %struct.TYPE_6__** %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 -1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcmp(i32 %20, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %32, align 8
  store i32 1, i32* %2, align 4
  br label %63

33:                                               ; preds = %16
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 -1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %40, align 8
  br label %55

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %51, %41
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %45 = icmp ult %struct.TYPE_6__** %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %50, align 8
  br label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %52, i32 1
  store %struct.TYPE_6__** %53, %struct.TYPE_6__*** %4, align 8
  br label %42

54:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %63

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %58, i32 -1
  store %struct.TYPE_6__** %59, %struct.TYPE_6__*** %4, align 8
  br label %12

60:                                               ; preds = %12
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %62, align 8
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %54, %30
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
