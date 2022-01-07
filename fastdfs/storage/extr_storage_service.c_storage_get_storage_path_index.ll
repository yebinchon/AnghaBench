; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_storage_get_storage_path_index.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_storage_get_storage_path_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@g_store_path_index = common dso_local global i32 0, align 4
@g_store_path_mode = common dso_local global i64 0, align 8
@FDFS_STORE_PATH_LOAD_BALANCE = common dso_local global i64 0, align 8
@g_fdfs_store_paths = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ENOSPC = common dso_local global i32 0, align 4
@g_path_space_list = common dso_local global %struct.TYPE_3__* null, align 8
@g_avg_storage_reserved_mb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_get_storage_path_index(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @g_store_path_index, align 4
  %6 = load i32*, i32** %3, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i64, i64* @g_store_path_mode, align 8
  %8 = load i64, i64* @FDFS_STORE_PATH_LOAD_BALANCE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_fdfs_store_paths, i32 0, i32 0), align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %10
  %20 = load i32, i32* @ENOSPC, align 4
  store i32 %20, i32* %2, align 4
  br label %92

21:                                               ; preds = %14
  br label %91

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_fdfs_store_paths, i32 0, i32 0), align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_path_space_list, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_path_space_list, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @g_avg_storage_reserved_mb, align 4
  %45 = call i64 @storage_check_reserved_space_path(i32 %36, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %83, label %47

47:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %73, %47
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_fdfs_store_paths, i32 0, i32 0), align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_path_space_list, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_path_space_list, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @g_avg_storage_reserved_mb, align 4
  %66 = call i64 @storage_check_reserved_space_path(i32 %58, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %52
  %69 = load i32, i32* %4, align 4
  %70 = load i32*, i32** %3, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* @g_store_path_index, align 4
  br label %76

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %48

76:                                               ; preds = %68, %48
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_fdfs_store_paths, i32 0, i32 0), align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @ENOSPC, align 4
  store i32 %81, i32* %2, align 4
  br label %92

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %29
  %84 = load i32, i32* @g_store_path_index, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @g_store_path_index, align 4
  %86 = load i32, i32* @g_store_path_index, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_fdfs_store_paths, i32 0, i32 0), align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* @g_store_path_index, align 4
  br label %90

90:                                               ; preds = %89, %83
  br label %91

91:                                               ; preds = %90, %21
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %80, %19
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @storage_check_reserved_space_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
