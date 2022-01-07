; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_dump.c_fdfs_dump_storage_servers.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_dump.c_fdfs_dump_storage_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"\0Ag_storage_count=%d\0A\00", align 1
@g_storage_count = common dso_local global i32 0, align 4
@g_storage_servers = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"\09%d. server: %s, status: %d, sync timestamp: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"sorted storage servers:\0A\00", align 1
@g_sorted_storages = common dso_local global %struct.TYPE_6__** null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"\09%d. server: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @fdfs_dump_storage_servers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdfs_dump_storage_servers(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca %struct.TYPE_6__**, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @g_storage_count, align 4
  %14 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_storage_servers, align 8
  %16 = load i32, i32* @g_storage_count, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %8, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_storage_servers, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %7, align 8
  br label %20

20:                                               ; preds = %56, %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = icmp ult %struct.TYPE_6__* %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_storage_servers, align 8
  %34 = ptrtoint %struct.TYPE_6__* %32 to i64
  %35 = ptrtoint %struct.TYPE_6__* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 24
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %38, 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %52 = call i8* @formatDatetime(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 32)
  %53 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %28, i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %39, i8* %43, i32 %47, i8* %52)
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %24
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 1
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %7, align 8
  br label %20

59:                                               ; preds = %20
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %64, %65
  %67 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %63, i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @g_sorted_storages, align 8
  %71 = load i32, i32* @g_storage_count, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %70, i64 %72
  store %struct.TYPE_6__** %73, %struct.TYPE_6__*** %10, align 8
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @g_sorted_storages, align 8
  store %struct.TYPE_6__** %74, %struct.TYPE_6__*** %9, align 8
  br label %75

75:                                               ; preds = %103, %59
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %77 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %78 = icmp ult %struct.TYPE_6__** %76, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %75
  %80 = load i8*, i8** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %5, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @g_sorted_storages, align 8
  %89 = ptrtoint %struct.TYPE_6__** %87 to i64
  %90 = ptrtoint %struct.TYPE_6__** %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 8
  %93 = trunc i64 %92 to i32
  %94 = add nsw i32 %93, 1
  %95 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %83, i32 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %94, i8* %99)
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %79
  %104 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %104, i32 1
  store %struct.TYPE_6__** %105, %struct.TYPE_6__*** %9, align 8
  br label %75

106:                                              ; preds = %75
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @formatDatetime(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
