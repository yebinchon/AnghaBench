; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/trunk_mgr/extr_trunk_shared.c_fdfs_is_trunk_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/trunk_mgr/extr_trunk_shared.c_fdfs_is_trunk_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDFS_TRUNK_LOGIC_FILENAME_LENGTH = common dso_local global i32 0, align 4
@g_fdfs_base64_context = common dso_local global i32 0, align 4
@FDFS_LOGIC_FILE_PATH_LEN = common dso_local global i32 0, align 4
@FDFS_FILENAME_BASE64_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdfs_is_trunk_file(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @FDFS_TRUNK_LOGIC_FILENAME_LENGTH, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i32 0, i32 64)
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @FDFS_LOGIC_FILE_PATH_LEN, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i32, i32* @FDFS_FILENAME_BASE64_LENGTH, align 4
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %22 = call i32 @base64_decode_auto(i32* @g_fdfs_base64_context, i8* %19, i32 %20, i8* %21, i32* %6)
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 8
  %25 = call i32 @buff2long(i8* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @IS_TRUNK_FILE(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %13, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @base64_decode_auto(i32*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @buff2long(i8*) #1

declare dso_local i32 @IS_TRUNK_FILE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
