; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-round-robin.c_rr_add_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-round-robin.c_rr_add_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_selector = type { i64 }
%struct.dm_path = type { %struct.path_info* }
%struct.path_info = type { i32, i32, %struct.dm_path* }
%struct.selector = type { i32 }

@RR_MIN_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"round-robin ps: incorrect number of arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"round-robin ps: invalid repeat count\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"round-robin ps: Error allocating path context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path_selector*, %struct.dm_path*, i32, i8**, i8**)* @rr_add_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rr_add_path(%struct.path_selector* %0, %struct.dm_path* %1, i32 %2, i8** %3, i8** %4) #0 {
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
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.selector*
  store %struct.selector* %19, %struct.selector** %12, align 8
  %20 = load i32, i32* @RR_MIN_IO, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %64

27:                                               ; preds = %5
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i8**, i8*** %10, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @sscanf(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %14, i8* %15)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8** %37, align 8
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %64

40:                                               ; preds = %30, %27
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.path_info* @kmalloc(i32 16, i32 %41)
  store %struct.path_info* %42, %struct.path_info** %13, align 8
  %43 = load %struct.path_info*, %struct.path_info** %13, align 8
  %44 = icmp ne %struct.path_info* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8** %46, align 8
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %64

49:                                               ; preds = %40
  %50 = load %struct.dm_path*, %struct.dm_path** %8, align 8
  %51 = load %struct.path_info*, %struct.path_info** %13, align 8
  %52 = getelementptr inbounds %struct.path_info, %struct.path_info* %51, i32 0, i32 2
  store %struct.dm_path* %50, %struct.dm_path** %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.path_info*, %struct.path_info** %13, align 8
  %55 = getelementptr inbounds %struct.path_info, %struct.path_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.path_info*, %struct.path_info** %13, align 8
  %57 = load %struct.dm_path*, %struct.dm_path** %8, align 8
  %58 = getelementptr inbounds %struct.dm_path, %struct.dm_path* %57, i32 0, i32 0
  store %struct.path_info* %56, %struct.path_info** %58, align 8
  %59 = load %struct.path_info*, %struct.path_info** %13, align 8
  %60 = getelementptr inbounds %struct.path_info, %struct.path_info* %59, i32 0, i32 1
  %61 = load %struct.selector*, %struct.selector** %12, align 8
  %62 = getelementptr inbounds %struct.selector, %struct.selector* %61, i32 0, i32 0
  %63 = call i32 @list_add_tail(i32* %60, i32* %62)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %49, %45, %36, %23
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local %struct.path_info* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
