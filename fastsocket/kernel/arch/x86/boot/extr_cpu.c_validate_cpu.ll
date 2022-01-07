; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_cpu.c_validate_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_cpu.c_validate_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"This kernel requires an %s CPU, \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"but only detected an %s CPU.\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"This kernel requires the following features not present on the CPU:\0A\00", align 1
@x86_cap_strs = common dso_local global i64 0, align 8
@RHNCAPINTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%d:%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_cpu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @check_cpu(i32* %3, i32* %4, i32** %2)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %0
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @cpu_name(i32 %14)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i8* @cpu_name(i32 %17)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %1, align 4
  br label %117

20:                                               ; preds = %0
  %21 = load i32*, i32** %2, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %116

23:                                               ; preds = %20
  %24 = call i32 @puts(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* @x86_cap_strs, align 8
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %111, %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @RHNCAPINTS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %114

31:                                               ; preds = %27
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %107, %31
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %110

40:                                               ; preds = %37
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %61, label %47

47:                                               ; preds = %40
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %54, %40
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %63, i8** %5, align 8
  br label %64

64:                                               ; preds = %69, %61
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  %67 = load i8, i8* %65, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %64

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %54, %47
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %75
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %97)
  br label %103

99:                                               ; preds = %89, %82, %75
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %103, %71
  %105 = load i32, i32* %8, align 4
  %106 = ashr i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %37

110:                                              ; preds = %37
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %27

114:                                              ; preds = %27
  %115 = call i32 @putchar(i8 signext 10)
  store i32 -1, i32* %1, align 4
  br label %117

116:                                              ; preds = %20
  store i32 0, i32* %1, align 4
  br label %117

117:                                              ; preds = %116, %114, %13
  %118 = load i32, i32* %1, align 4
  ret i32 %118
}

declare dso_local i32 @check_cpu(i32*, i32*, i32**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @cpu_name(i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
