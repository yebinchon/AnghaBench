; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_diva_didd.c_proc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_diva_didd.c_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main_revision = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@DRIVERNAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"name     : %s\0A\00", align 1
@DRIVERLNAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"release  : %s\0A\00", align 1
@DRIVERRELEASE_DIDD = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"build    : %s(%s)\0A\00", align 1
@diva_didd_common_code_build = common dso_local global i8* null, align 8
@DIVA_BUILD = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"revision : %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_read(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %17 = load i32, i32* @main_revision, align 4
  %18 = call i32 @strcpy(i8* %16, i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %14, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8*, i8** @DRIVERNAME, align 8
  %24 = call i64 (i8*, i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8*, i8** @DRIVERLNAME, align 8
  %34 = call i64 (i8*, i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %14, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8*, i8** @DRIVERRELEASE_DIDD, align 8
  %44 = call i64 (i8*, i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8*, i8** @diva_didd_common_code_build, align 8
  %54 = load i8*, i8** @DIVA_BUILD, align 8
  %55 = call i64 (i8*, i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %53, i8* %54)
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %14, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %65 = call i8* @getrev(i8* %64)
  %66 = call i64 (i8*, i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %14, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %6
  %77 = load i32*, i32** %12, align 8
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %76, %6
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %102

83:                                               ; preds = %78
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8**, i8*** %9, align 8
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %90, %91
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i32, i32* %11, align 4
  br label %100

96:                                               ; preds = %83
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  br label %100

100:                                              ; preds = %96, %94
  %101 = phi i32 [ %95, %94 ], [ %99, %96 ]
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %100, %82
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i8* @getrev(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
