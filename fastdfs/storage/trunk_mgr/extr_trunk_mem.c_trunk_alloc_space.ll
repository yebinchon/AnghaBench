; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/trunk_mgr/extr_trunk_mem.c_trunk_alloc_space.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/trunk_mgr/extr_trunk_mem.c_trunk_alloc_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i64 }

@g_slot_min_size = common dso_local global i32 0, align 4
@trunk_mem_lock = common dso_local global i32 0, align 4
@tree_info_by_sizes = common dso_local global i64 0, align 8
@FDFS_TRUNK_STATUS_HOLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trunk_alloc_space(i32 %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %11 = call i32 (...) @STORAGE_TRUNK_CHECK_STATUS()
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @g_slot_min_size, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @g_slot_min_size, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  %23 = call i32 @pthread_mutex_lock(i32* @trunk_mem_lock)
  br label %24

24:                                               ; preds = %19, %61
  %25 = load i64, i64* @tree_info_by_sizes, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %25, %29
  %31 = call i64 @avl_tree_find_ge(i64 %30, %struct.TYPE_15__* %6)
  %32 = inttoptr i64 %31 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %7, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = icmp eq %struct.TYPE_15__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %67

36:                                               ; preds = %24
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %8, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %9, align 8
  br label %40

40:                                               ; preds = %52, %36
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %42 = icmp ne %struct.TYPE_16__* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FDFS_TRUNK_STATUS_HOLD, align 8
  %49 = icmp eq i64 %47, %48
  br label %50

50:                                               ; preds = %43, %40
  %51 = phi i1 [ false, %40 ], [ %49, %43 ]
  br i1 %51, label %52, label %57

52:                                               ; preds = %50
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %8, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %9, align 8
  br label %40

57:                                               ; preds = %50
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %59 = icmp ne %struct.TYPE_16__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %67

61:                                               ; preds = %57
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  br label %24

67:                                               ; preds = %60, %35
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %69 = icmp ne %struct.TYPE_16__* %68, null
  br i1 %69, label %70, label %101

70:                                               ; preds = %67
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %72 = icmp eq %struct.TYPE_16__* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %78, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = icmp eq %struct.TYPE_16__* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %89 = call i32 @trunk_delete_size_tree_entry(i64 %87, %struct.TYPE_15__* %88)
  br label %90

90:                                               ; preds = %83, %73
  br label %97

91:                                               ; preds = %70
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %96, align 8
  br label %97

97:                                               ; preds = %91, %90
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = call i32 @trunk_free_block_delete(%struct.TYPE_18__* %99)
  br label %113

101:                                              ; preds = %67
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call %struct.TYPE_16__* @trunk_create_trunk_file(i64 %105, i32* %10)
  store %struct.TYPE_16__* %106, %struct.TYPE_16__** %9, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %108 = icmp eq %struct.TYPE_16__* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = call i32 @pthread_mutex_unlock(i32* @trunk_mem_lock)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %138

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %97
  %114 = call i32 @pthread_mutex_unlock(i32* @trunk_mem_lock)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @trunk_split(%struct.TYPE_16__* %115, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %3, align 4
  br label %138

122:                                              ; preds = %113
  %123 = load i64, i64* @FDFS_TRUNK_STATUS_HOLD, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  store i64 %123, i64* %126, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %128 = call i32 @trunk_add_free_block(%struct.TYPE_16__* %127, i32 1)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = call i32 @memcpy(%struct.TYPE_17__* %132, %struct.TYPE_18__* %134, i32 8)
  br label %136

136:                                              ; preds = %131, %122
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %120, %109
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @STORAGE_TRUNK_CHECK_STATUS(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @avl_tree_find_ge(i64, %struct.TYPE_15__*) #1

declare dso_local i32 @trunk_delete_size_tree_entry(i64, %struct.TYPE_15__*) #1

declare dso_local i32 @trunk_free_block_delete(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_16__* @trunk_create_trunk_file(i64, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @trunk_split(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @trunk_add_free_block(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
