; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c_block2mtd_setup2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c_block2mtd_setup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"parameter too long\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"no argument\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"device name too long\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"illegal erase size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @block2mtd_setup2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block2mtd_setup2(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [92 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = getelementptr inbounds [92 x i8], [92 x i8]* %3, i64 0, i64 0
  store i8* %10, i8** %4, align 8
  %11 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strnlen(i8* %12, i32 92)
  %14 = sext i32 %13 to i64
  %15 = icmp uge i64 %14, 92
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @parse_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @strcpy(i8* %19, i8* %20)
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @kill_final_newline(i8* %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %32, %18
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 %30
  store i8* %28, i8** %31, align 8
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %24

35:                                               ; preds = %24
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @parse_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %42 = load i8*, i8** %41, align 16
  %43 = icmp ne i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 @parse_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %48 = load i8*, i8** %47, align 16
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = add nsw i32 %50, 1
  %52 = icmp sgt i32 %51, 80
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 @parse_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %46
  %56 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @parse_num(i64* %7, i8* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = call i32 @parse_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %59
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @add_device(i8* %69, i64 %70)
  ret i32 0
}

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @parse_err(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @kill_final_newline(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @parse_num(i64*, i8*) #1

declare dso_local i32 @add_device(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
