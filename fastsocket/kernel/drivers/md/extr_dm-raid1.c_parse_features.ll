; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_parse_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_parse_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32, %struct.dm_target* }
%struct.dm_target = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid number of features\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Not enough arguments to support feature count\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"handle_errors\00", align 1
@DM_RAID1_HANDLE_ERRORS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Unrecognised feature requested\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mirror_set*, i32, i8**, i32*)* @parse_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_features(%struct.mirror_set* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mirror_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_target*, align 8
  %12 = alloca i8, align 1
  store %struct.mirror_set* %0, %struct.mirror_set** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %14 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %13, i32 0, i32 1
  %15 = load %struct.dm_target*, %struct.dm_target** %14, align 8
  store %struct.dm_target* %15, %struct.dm_target** %11, align 8
  %16 = load i32*, i32** %9, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %68

20:                                               ; preds = %4
  %21 = load i8**, i8*** %8, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %10, i8* %12)
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %28 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %68

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %7, align 4
  %34 = load i8**, i8*** %8, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %44 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %68

47:                                               ; preds = %31
  %48 = load i8**, i8*** %8, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @DM_RAID1_HANDLE_ERRORS, align 4
  %55 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %56 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %64

59:                                               ; preds = %47
  %60 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %61 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8** %61, align 8
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %68

64:                                               ; preds = %53
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %65, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %59, %42, %26, %19
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
