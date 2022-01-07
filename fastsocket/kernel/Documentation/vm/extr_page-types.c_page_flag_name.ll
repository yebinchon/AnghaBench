; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_page_flag_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_page_flag_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@page_flag_name.buf = internal global [65 x i8] zeroinitializer, align 16
@page_flag_names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [21 x i8] c"unknown flag bit %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @page_flag_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @page_flag_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %49, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** @page_flag_names, align 8
  %9 = call i32 @ARRAY_SIZE(i8** %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %52

11:                                               ; preds = %6
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %12, %13
  %15 = and i32 %14, 1
  store i32 %15, i32* %3, align 4
  %16 = load i8**, i8*** @page_flag_names, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  br label %49

29:                                               ; preds = %11
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i8**, i8*** @page_flag_names, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  br label %42

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %32
  %43 = phi i32 [ %40, %32 ], [ 95, %41 ]
  %44 = trunc i32 %43 to i8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds [65 x i8], [65 x i8]* @page_flag_name.buf, i64 0, i64 %47
  store i8 %44, i8* %48, align 1
  br label %49

49:                                               ; preds = %42, %28
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %6

52:                                               ; preds = %6
  ret i8* getelementptr inbounds ([65 x i8], [65 x i8]* @page_flag_name.buf, i64 0, i64 0)
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @fatal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
