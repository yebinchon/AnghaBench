; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_fdfs_shared_func.c_fdfs_get_ip_type.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_fdfs_shared_func.c_fdfs_get_ip_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDFS_IP_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"10.\00", align 1
@FDFS_IP_TYPE_PRIVATE_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"192.168.\00", align 1
@FDFS_IP_TYPE_PRIVATE_192 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"172.\00", align 1
@FDFS_IP_TYPE_PRIVATE_172 = common dso_local global i32 0, align 4
@FDFS_IP_TYPE_OUTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdfs_get_ip_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = trunc i64 %9 to i32
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @FDFS_IP_TYPE_UNKNOWN, align 4
  store i32 %13, i32* %2, align 4
  br label %44

14:                                               ; preds = %7
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @memcmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @FDFS_IP_TYPE_PRIVATE_10, align 4
  store i32 %19, i32* %2, align 4
  br label %44

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @memcmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @FDFS_IP_TYPE_PRIVATE_192, align 4
  store i32 %25, i32* %2, align 4
  br label %44

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @memcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = call i32 @atoi(i8* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp sge i32 %34, 16
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 32
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @FDFS_IP_TYPE_PRIVATE_172, align 4
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %36, %30
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32, i32* @FDFS_IP_TYPE_OUTER, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %39, %24, %18, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
