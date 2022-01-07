; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_mem_set_trunk_server.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_mem_set_trunk_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }

@g_if_leader_self = common dso_local global i64 0, align 8
@g_if_use_trunk_file = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FDFS_STORAGE_STATUS_ACTIVE = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENONET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @tracker_mem_set_trunk_server(%struct.TYPE_11__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* @g_if_leader_self, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* @g_if_use_trunk_file, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %110

18:                                               ; preds = %12
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %24, %18
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FDFS_STORAGE_STATUS_ACTIVE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32*, i32** %7, align 8
  store i32 0, i32* %39, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %4, align 8
  br label %110

41:                                               ; preds = %32, %29
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = call i32 @tracker_mem_find_trunk_server(%struct.TYPE_11__* %42, i32 1)
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %110

49:                                               ; preds = %41
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %4, align 8
  br label %110

53:                                               ; preds = %24
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FDFS_STORAGE_STATUS_ACTIVE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @strcmp(i8* %63, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @EALREADY, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %75

72:                                               ; preds = %62
  %73 = load i32, i32* @EEXIST, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %4, align 8
  br label %110

77:                                               ; preds = %56, %53
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call %struct.TYPE_10__* @tracker_mem_get_storage(%struct.TYPE_11__* %78, i8* %79)
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %8, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = icmp eq %struct.TYPE_10__* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @ENOENT, align 4
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %110

86:                                               ; preds = %77
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @FDFS_STORAGE_STATUS_ACTIVE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @ENONET, align 4
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %110

95:                                               ; preds = %86
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = call i32 @tracker_mem_do_set_trunk_server(%struct.TYPE_11__* %96, %struct.TYPE_10__* %97, i32 1)
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  br label %108

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %103
  %109 = phi %struct.TYPE_10__* [ %106, %103 ], [ null, %107 ]
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %4, align 8
  br label %110

110:                                              ; preds = %108, %92, %83, %75, %49, %48, %38, %15
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %111
}

declare dso_local i32 @tracker_mem_find_trunk_server(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_10__* @tracker_mem_get_storage(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @tracker_mem_do_set_trunk_server(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
