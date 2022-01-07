; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_read_idm_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_read_idm_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_idm_word(i32* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %108

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %108

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %36, %16
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @isxdigit(i32 %29)
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %23, %17
  %34 = phi i1 [ false, %17 ], [ %32, %23 ]
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %17

40:                                               ; preds = %33
  %41 = load i32*, i32** %8, align 8
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %103, %40
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %6, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @isxdigit(i32 %54)
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %48, %42
  %58 = phi i1 [ false, %42 ], [ %56, %48 ]
  br i1 %58, label %59, label %107

59:                                               ; preds = %57
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call signext i8 @tolower(i32 %65)
  store i8 %66, i8* %10, align 1
  store i32 1, i32* %9, align 4
  %67 = load i8, i8* %10, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 48, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %59
  %71 = load i8, i8* %10, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sle i32 %72, 57
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 4
  %78 = load i8, i8* %10, align 1
  %79 = sext i8 %78 to i32
  %80 = sub nsw i32 %79, 48
  %81 = add i32 %77, %80
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  br label %102

83:                                               ; preds = %70, %59
  %84 = load i8, i8* %10, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp sle i32 97, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i8, i8* %10, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sle i32 %89, 102
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 4
  %95 = load i8, i8* %10, align 1
  %96 = sext i8 %95 to i32
  %97 = sub nsw i32 %96, 97
  %98 = add nsw i32 %97, 10
  %99 = add i32 %94, %98
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %91, %87, %83
  br label %102

102:                                              ; preds = %101, %74
  br label %103

103:                                              ; preds = %102
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %42

107:                                              ; preds = %57
  br label %108

108:                                              ; preds = %107, %13, %4
  %109 = load i32, i32* %9, align 4
  ret i32 %109
}

declare dso_local i64 @isxdigit(i32) #1

declare dso_local signext i8 @tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
