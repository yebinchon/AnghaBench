; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-queue-length.c_ql_add_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-queue-length.c_ql_add_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_selector = type { %struct.selector* }
%struct.selector = type { i32 }
%struct.dm_path = type { %struct.path_info* }
%struct.path_info = type { i32, i32, i32, %struct.dm_path* }

@QL_MIN_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"queue-length ps: incorrect number of arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"queue-length ps: invalid repeat count\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"queue-length ps: Error allocating path information\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path_selector*, %struct.dm_path*, i32, i8**, i8**)* @ql_add_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_add_path(%struct.path_selector* %0, %struct.dm_path* %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.path_selector*, align 8
  %8 = alloca %struct.dm_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.selector*, align 8
  %13 = alloca %struct.path_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.path_selector* %0, %struct.path_selector** %7, align 8
  store %struct.dm_path* %1, %struct.dm_path** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %16 = load %struct.path_selector*, %struct.path_selector** %7, align 8
  %17 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %16, i32 0, i32 0
  %18 = load %struct.selector*, %struct.selector** %17, align 8
  store %struct.selector* %18, %struct.selector** %12, align 8
  %19 = load i32, i32* @QL_MIN_IO, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %66

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i8**, i8*** %10, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @sscanf(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %14, i8* %15)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8** %36, align 8
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %66

39:                                               ; preds = %29, %26
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.path_info* @kmalloc(i32 24, i32 %40)
  store %struct.path_info* %41, %struct.path_info** %13, align 8
  %42 = load %struct.path_info*, %struct.path_info** %13, align 8
  %43 = icmp ne %struct.path_info* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8** %45, align 8
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %66

48:                                               ; preds = %39
  %49 = load %struct.dm_path*, %struct.dm_path** %8, align 8
  %50 = load %struct.path_info*, %struct.path_info** %13, align 8
  %51 = getelementptr inbounds %struct.path_info, %struct.path_info* %50, i32 0, i32 3
  store %struct.dm_path* %49, %struct.dm_path** %51, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.path_info*, %struct.path_info** %13, align 8
  %54 = getelementptr inbounds %struct.path_info, %struct.path_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.path_info*, %struct.path_info** %13, align 8
  %56 = getelementptr inbounds %struct.path_info, %struct.path_info* %55, i32 0, i32 2
  %57 = call i32 @atomic_set(i32* %56, i32 0)
  %58 = load %struct.path_info*, %struct.path_info** %13, align 8
  %59 = load %struct.dm_path*, %struct.dm_path** %8, align 8
  %60 = getelementptr inbounds %struct.dm_path, %struct.dm_path* %59, i32 0, i32 0
  store %struct.path_info* %58, %struct.path_info** %60, align 8
  %61 = load %struct.path_info*, %struct.path_info** %13, align 8
  %62 = getelementptr inbounds %struct.path_info, %struct.path_info* %61, i32 0, i32 1
  %63 = load %struct.selector*, %struct.selector** %12, align 8
  %64 = getelementptr inbounds %struct.selector, %struct.selector* %63, i32 0, i32 0
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %48, %44, %35, %22
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local %struct.path_info* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
