; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-service-time.c_st_add_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-service-time.c_st_add_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_selector = type { %struct.selector* }
%struct.selector = type { i32 }
%struct.dm_path = type { %struct.path_info* }
%struct.path_info = type { i32, i32, i32, i32, %struct.dm_path* }

@ST_MIN_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"service-time ps: incorrect number of arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"service-time ps: invalid repeat count\00", align 1
@ST_MAX_RELATIVE_THROUGHPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"service-time ps: invalid relative_throughput value\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"service-time ps: Error allocating path context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path_selector*, %struct.dm_path*, i32, i8**, i8**)* @st_add_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_add_path(%struct.path_selector* %0, %struct.dm_path* %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.path_selector*, align 8
  %8 = alloca %struct.dm_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.selector*, align 8
  %13 = alloca %struct.path_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store %struct.path_selector* %0, %struct.path_selector** %7, align 8
  store %struct.dm_path* %1, %struct.dm_path** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %17 = load %struct.path_selector*, %struct.path_selector** %7, align 8
  %18 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %17, i32 0, i32 0
  %19 = load %struct.selector*, %struct.selector** %18, align 8
  store %struct.selector* %19, %struct.selector** %12, align 8
  %20 = load i32, i32* @ST_MIN_IO, align 4
  store i32 %20, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %87

27:                                               ; preds = %5
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i8**, i8*** %10, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @sscanf(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %14, i8* %16)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8** %37, align 8
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %87

40:                                               ; preds = %30, %27
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i8**, i8*** %10, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %15, i8* %16)
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @ST_MAX_RELATIVE_THROUGHPUT, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %43
  %54 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8** %54, align 8
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %87

57:                                               ; preds = %49, %40
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.path_info* @kmalloc(i32 24, i32 %58)
  store %struct.path_info* %59, %struct.path_info** %13, align 8
  %60 = load %struct.path_info*, %struct.path_info** %13, align 8
  %61 = icmp ne %struct.path_info* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8** %63, align 8
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %87

66:                                               ; preds = %57
  %67 = load %struct.dm_path*, %struct.dm_path** %8, align 8
  %68 = load %struct.path_info*, %struct.path_info** %13, align 8
  %69 = getelementptr inbounds %struct.path_info, %struct.path_info* %68, i32 0, i32 4
  store %struct.dm_path* %67, %struct.dm_path** %69, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.path_info*, %struct.path_info** %13, align 8
  %72 = getelementptr inbounds %struct.path_info, %struct.path_info* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.path_info*, %struct.path_info** %13, align 8
  %75 = getelementptr inbounds %struct.path_info, %struct.path_info* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.path_info*, %struct.path_info** %13, align 8
  %77 = getelementptr inbounds %struct.path_info, %struct.path_info* %76, i32 0, i32 3
  %78 = call i32 @atomic_set(i32* %77, i32 0)
  %79 = load %struct.path_info*, %struct.path_info** %13, align 8
  %80 = load %struct.dm_path*, %struct.dm_path** %8, align 8
  %81 = getelementptr inbounds %struct.dm_path, %struct.dm_path* %80, i32 0, i32 0
  store %struct.path_info* %79, %struct.path_info** %81, align 8
  %82 = load %struct.path_info*, %struct.path_info** %13, align 8
  %83 = getelementptr inbounds %struct.path_info, %struct.path_info* %82, i32 0, i32 2
  %84 = load %struct.selector*, %struct.selector** %12, align 8
  %85 = getelementptr inbounds %struct.selector, %struct.selector* %84, i32 0, i32 0
  %86 = call i32 @list_add_tail(i32* %83, i32* %85)
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %66, %62, %53, %36, %23
  %88 = load i32, i32* %6, align 4
  ret i32 %88
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
