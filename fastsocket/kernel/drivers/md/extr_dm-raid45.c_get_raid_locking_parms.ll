; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_get_raid_locking_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_get_raid_locking_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_raid45_locking_type = type { i32 }
%struct.dm_target = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"locking\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@locking_none = common dso_local global %struct.dm_raid45_locking_type zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"cluster\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"locking type \22%s\22 not yet implemented\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"unknown locking type \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i8**, i32*, %struct.dm_raid45_locking_type**)* @get_raid_locking_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_raid_locking_parms(%struct.dm_target* %0, i8** %1, i32* %2, %struct.dm_raid45_locking_type** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dm_raid45_locking_type**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.dm_raid45_locking_type** %3, %struct.dm_raid45_locking_type*** %9, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = call i32 @strnicmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %4
  %22 = load i8**, i8*** %7, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %11, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @strnicmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load %struct.dm_raid45_locking_type**, %struct.dm_raid45_locking_type*** %9, align 8
  store %struct.dm_raid45_locking_type* @locking_none, %struct.dm_raid45_locking_type** %32, align 8
  %33 = load i32*, i32** %8, align 8
  store i32 2, i32* %33, align 4
  br label %49

34:                                               ; preds = %21
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @strnicmp(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @DMERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %53

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @DMERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %53

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49, %4
  %51 = load i32*, i32** %8, align 8
  store i32 0, i32* %51, align 4
  %52 = load %struct.dm_raid45_locking_type**, %struct.dm_raid45_locking_type*** %9, align 8
  store %struct.dm_raid45_locking_type* @locking_none, %struct.dm_raid45_locking_type** %52, align 8
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %44, %39
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @strnicmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @DMERR(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
