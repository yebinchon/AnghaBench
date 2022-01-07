; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_execvp.c_execvp_noalloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_execvp.c_execvp_noalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c":/bin:/usr/bin\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execvp_noalloc(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -132, i32* %4, align 4
  br label %110

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 47)
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = load i8**, i8*** %7, align 8
  %27 = call i32 @execv(i8* %25, i8** %26)
  br label %107

28:                                               ; preds = %20
  %29 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %13, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %9, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %10, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i8* @memcpy(i8* %44, i8* %45, i32 %47)
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %50, i8** %11, align 8
  store i8 47, i8* %50, align 1
  store i32 0, i32* %8, align 4
  %51 = load i8*, i8** %13, align 8
  store i8* %51, i8** %12, align 8
  br label %52

52:                                               ; preds = %96, %33
  %53 = load i8*, i8** %12, align 8
  store i8* %53, i8** %13, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = call i8* @strchr(i8* %54, i8 signext 58)
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i8*, i8** %13, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 0)
  store i8* %60, i8** %12, align 8
  br label %61

61:                                               ; preds = %58, %52
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %14, align 8
  br label %85

68:                                               ; preds = %61
  %69 = load i8*, i8** %11, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i8, i8* %69, i64 %75
  %77 = load i8*, i8** %13, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = call i8* @memcpy(i8* %76, i8* %77, i32 %83)
  store i8* %84, i8** %14, align 8
  br label %85

85:                                               ; preds = %68, %65
  %86 = load i8*, i8** %14, align 8
  %87 = load i8**, i8*** %7, align 8
  %88 = call i32 @execv(i8* %86, i8** %87)
  %89 = load i32, i32* @errno, align 4
  switch i32 %89, label %92 [
    i32 134, label %90
    i32 132, label %91
    i32 129, label %91
    i32 130, label %91
    i32 133, label %91
    i32 128, label %91
    i32 131, label %91
  ]

90:                                               ; preds = %85
  store i32 1, i32* %8, align 4
  br label %91

91:                                               ; preds = %85, %85, %85, %85, %85, %85, %90
  br label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @errno, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %110

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95
  %97 = load i8*, i8** %12, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %12, align 8
  %99 = load i8, i8* %97, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %52, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 -134, i32* %4, align 4
  br label %110

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %106, %24
  %108 = load i32, i32* @errno, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %107, %105, %92, %19
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @execv(i8*, i8**) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
