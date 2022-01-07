; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_palinfo.c_bitregister_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_palinfo.c_bitregister_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d-%d \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d-127\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"127\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i32)* @bitregister_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bitregister_process(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @ffs(i32 %14)
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %10, align 4
  %18 = ashr i32 %17, %16
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %77, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = srem i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %26, %23
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 2
  %45 = icmp sle i32 %42, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %50)
  %52 = load i8*, i8** %4, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %4, align 8
  br label %63

55:                                               ; preds = %41
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i8*, i8** %4, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %4, align 8
  br label %63

63:                                               ; preds = %55, %46
  store i32 1, i32* %9, align 4
  store i32 -1, i32* %8, align 4
  br label %74

64:                                               ; preds = %38, %34
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %68, %64
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i32, i32* %10, align 4
  %76 = ashr i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %19

80:                                               ; preds = %19
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 127
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i8*, i8** %4, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %4, align 8
  br label %99

93:                                               ; preds = %83
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 (i8*, i8*, ...) @sprintf(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i8*, i8** %4, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %4, align 8
  br label %99

99:                                               ; preds = %93, %86
  br label %100

100:                                              ; preds = %99, %80
  %101 = load i8*, i8** %4, align 8
  ret i8* %101
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
