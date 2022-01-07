; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_parse_flag_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_parse_flag_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"compound\00", align 1
@BITS_COMPOUND = common dso_local global i64 0, align 8
@page_flag_names = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32)* @parse_flag_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_flag_name(i8* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i64 0, i64* %3, align 8
  br label %60

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 8
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* @BITS_COMPOUND, align 8
  store i64 %23, i64* %3, align 8
  br label %60

24:                                               ; preds = %17, %14
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %54, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i8**, i8*** @page_flag_names, align 8
  %28 = call i32 @ARRAY_SIZE(i8** %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %25
  %31 = load i8**, i8*** @page_flag_names, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %54

38:                                               ; preds = %30
  %39 = load i8*, i8** %4, align 8
  %40 = load i8**, i8*** @page_flag_names, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @strncmp(i8* %39, i8* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 1, %51
  store i64 %52, i64* %3, align 8
  br label %60

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %25

57:                                               ; preds = %25
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 @parse_number(i8* %58)
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %57, %49, %22, %13
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @parse_number(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
