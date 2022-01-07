; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/trunk_mgr/extr_trunk_shared.c_trunk_file_get_content_ex.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/trunk_mgr/extr_trunk_shared.c_trunk_file_get_content_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@MAX_PATH_SIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FDFS_TRUNK_FILE_HEADER_SIZE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trunk_file_get_content_ex(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* @MAX_PATH_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @ENOSPC, align 4
  store i32 %28, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %103

29:                                               ; preds = %6
  %30 = load i32*, i32** %11, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  br label %77

35:                                               ; preds = %29
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = trunc i64 %21 to i32
  %39 = call i32 @trunk_get_full_filename_ex(i32* %36, %struct.TYPE_6__* %37, i8* %23, i32 %38)
  %40 = load i32, i32* @O_RDONLY, align 4
  %41 = call i32 @open(i8* %23, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load i32, i32* @errno, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @errno, align 4
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @EIO, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %103

53:                                               ; preds = %35
  %54 = load i32, i32* %16, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FDFS_TRUNK_FILE_HEADER_SIZE, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* @SEEK_SET, align 4
  %62 = call i64 @lseek(i32 %54, i64 %60, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %53
  %65 = load i32, i32* @errno, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @errno, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @EIO, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @close(i32 %73)
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %103

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76, %32
  %78 = load i32, i32* %16, align 4
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @fc_safe_read(i32 %78, i8* %79, i32 %80)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %17, align 4
  br label %95

86:                                               ; preds = %77
  %87 = load i32, i32* @errno, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @errno, align 4
  br label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @EINVAL, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %93, %85
  %96 = load i32*, i32** %11, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @close(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %103

103:                                              ; preds = %101, %71, %51, %27
  %104 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trunk_get_full_filename_ex(i32*, %struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @lseek(i32, i64, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @fc_safe_read(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
