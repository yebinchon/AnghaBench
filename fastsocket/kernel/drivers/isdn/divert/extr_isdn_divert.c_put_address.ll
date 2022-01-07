; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_put_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_put_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @put_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_address(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %4, align 4
  br label %121

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 161
  br i1 %17, label %18, label %71

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 2
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %121

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 2
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %121

33:                                               ; preds = %27
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 10
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %33
  store i32 0, i32* %4, align 4
  br label %121

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 3
  store i32 %49, i32* %7, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %121

55:                                               ; preds = %44
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %6, align 8
  %58 = load i32, i32* %56, align 4
  %59 = icmp ne i32 %58, 18
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %121

61:                                               ; preds = %55
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %121

67:                                               ; preds = %61
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %6, align 8
  %70 = load i32, i32* %68, align 4
  store i32 %70, i32* %7, align 4
  br label %91

71:                                               ; preds = %14
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %6, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %121

84:                                               ; preds = %75
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 2
  store i32 %86, i32* %7, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %6, align 8
  br label %90

89:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %121

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %67
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @sprintf(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = load i8*, i8** %5, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %91
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %5, align 8
  store i8 45, i8* %103, align 1
  br label %118

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %110, %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %7, align 4
  %109 = icmp ne i32 %107, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %6, align 8
  %113 = load i32, i32* %111, align 4
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %5, align 8
  store i8 %114, i8* %115, align 1
  br label %106

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117, %102
  %119 = load i8*, i8** %5, align 8
  store i8 0, i8* %119, align 1
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %118, %89, %83, %66, %60, %54, %43, %32, %26, %12
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
