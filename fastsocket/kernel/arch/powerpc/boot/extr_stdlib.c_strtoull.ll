; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_stdlib.c_strtoull.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_stdlib.c_strtoull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtoull(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 36
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %92

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %80, %12
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sge i32 %20, 48
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sle i32 %25, 57
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 48, %31
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 48
  store i32 %38, i32* %8, align 4
  br label %80

39:                                               ; preds = %27, %22, %17
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sge i32 %42, 65
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 65, %48
  %50 = sub nsw i32 %49, 10
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = sub nsw i32 %55, 65
  %57 = add nsw i32 %56, 10
  store i32 %57, i32* %8, align 4
  br label %79

58:                                               ; preds = %44, %39
  %59 = load i8*, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sge i32 %61, 97
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load i8*, i8** %4, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 97, %67
  %69 = sub nsw i32 %68, 10
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = sub nsw i32 %74, 97
  %76 = add nsw i32 %75, 10
  store i32 %76, i32* %8, align 4
  br label %78

77:                                               ; preds = %63, %58
  br label %91

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %52
  br label %80

80:                                               ; preds = %79, %34
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %7, align 8
  %84 = mul i64 %83, %82
  store i64 %84, i64* %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %7, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %4, align 8
  br label %13

91:                                               ; preds = %77, %13
  br label %92

92:                                               ; preds = %91, %11
  %93 = load i8**, i8*** %5, align 8
  %94 = icmp ne i8** %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8*, i8** %4, align 8
  %97 = load i8**, i8*** %5, align 8
  store i8* %96, i8** %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i64, i64* %7, align 8
  ret i64 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
