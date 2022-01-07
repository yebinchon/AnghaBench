; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_upload_slave_by_filename.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_upload_slave_by_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@STORAGE_PROTO_CMD_UPLOAD_SLAVE_FILE = common dso_local global i32 0, align 4
@FDFS_UPLOAD_BY_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_upload_slave_by_filename(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32* %6, i32 %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.stat, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %23 = load i8*, i8** %15, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %10
  %26 = load i8*, i8** %15, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %16, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %20, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %20, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %33, %30, %25, %10
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %11, align 4
  br label %91

43:                                               ; preds = %36
  %44 = load i8*, i8** %14, align 8
  %45 = call i64 @stat(i8* %44, %struct.stat* %22)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i8*, i8** %20, align 8
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %21, align 8
  store i8 0, i8* %49, align 1
  %50 = load i64, i64* @errno, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* @errno, align 8
  br label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EPERM, align 4
  %56 = sext i32 %55 to i64
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i64 [ %53, %52 ], [ %56, %54 ]
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %11, align 4
  br label %91

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @S_ISREG(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %20, align 8
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %21, align 8
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %11, align 4
  br label %91

69:                                               ; preds = %60
  %70 = load i8*, i8** %17, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %14, align 8
  %74 = call i8* @fdfs_get_file_ext_name(i8* %73)
  store i8* %74, i8** %17, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %12, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* @STORAGE_PROTO_CMD_UPLOAD_SLAVE_FILE, align 4
  %79 = load i32, i32* @FDFS_UPLOAD_BY_FILE, align 4
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %15, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = load i32*, i32** %18, align 8
  %87 = load i32, i32* %19, align 4
  %88 = load i8*, i8** %20, align 8
  %89 = load i8*, i8** %21, align 8
  %90 = call i32 @storage_do_upload_file(i32* %76, i32* %77, i32 0, i32 %78, i32 %79, i8* %80, i32* null, i32 %82, i8* %83, i8* %84, i8* %85, i32* %86, i32 %87, i8* %88, i8* %89)
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %75, %65, %57, %41
  %92 = load i32, i32* %11, align 4
  ret i32 %92
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i8* @fdfs_get_file_ext_name(i8*) #1

declare dso_local i32 @storage_do_upload_file(i32*, i32*, i32, i32, i32, i8*, i32*, i32, i8*, i8*, i8*, i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
