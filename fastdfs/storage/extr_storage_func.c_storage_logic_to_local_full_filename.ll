; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_func.c_storage_logic_to_local_full_filename.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_func.c_storage_logic_to_local_full_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8** }

@.str = private unnamed_addr constant [11 x i8] c"%s/data/%s\00", align 1
@g_fdfs_store_paths = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_logic_to_local_full_filename(i8* %0, i32 %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [128 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @storage_split_filename_ex(i8* %16, i32* %13, i8* %17, i32* %18)
  store i32 %19, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %41

23:                                               ; preds = %5
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @fdfs_check_data_filename(i8* %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %41

30:                                               ; preds = %23
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_fdfs_store_paths, i32 0, i32 0), align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %40 = call i32 @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %30, %28, %21
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @storage_split_filename_ex(i8*, i32*, i8*, i32*) #1

declare dso_local i32 @fdfs_check_data_filename(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
