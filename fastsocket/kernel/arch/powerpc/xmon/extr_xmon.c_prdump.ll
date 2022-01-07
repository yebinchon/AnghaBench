; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_prdump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_prdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fault_chars = common dso_local global i8** null, align 8
@fault_type = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"  |\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"|\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @prdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prdump(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [16 x i8], align 16
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %5, align 8
  br label %12

12:                                               ; preds = %133, %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %134

15:                                               ; preds = %12
  %16 = load i8*, i8** @REG, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 (i8*, ...) @printf(i8* %16, i64 %17)
  %19 = call i32 @putchar(i8 signext 32)
  %20 = load i64, i64* %5, align 8
  %21 = icmp slt i64 %20, 16
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  br label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i64 [ %23, %22 ], [ 16, %24 ]
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @mread(i64 %27, i8* %28, i64 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %3, align 8
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %64, %25
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = and i64 %39, 7
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @putchar(i8 signext 32)
  br label %47

47:                                               ; preds = %45, %42, %38
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %63

57:                                               ; preds = %47
  %58 = load i8**, i8*** @fault_chars, align 8
  %59 = load i64, i64* @fault_type, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %6, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %34

67:                                               ; preds = %34
  br label %68

68:                                               ; preds = %79, %67
  %69 = load i64, i64* %6, align 8
  %70 = icmp slt i64 %69, 16
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i64, i64* %6, align 8
  %73 = and i64 %72, 7
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @putchar(i8 signext 32)
  br label %77

77:                                               ; preds = %75, %71
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77
  %80 = load i64, i64* %6, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %6, align 8
  br label %68

82:                                               ; preds = %68
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %84

84:                                               ; preds = %112, %82
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %84
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i64
  store i64 %96, i64* %7, align 8
  %97 = load i64, i64* %7, align 8
  %98 = icmp sle i64 32, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i64, i64* %7, align 8
  %101 = icmp sle i64 %100, 126
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i64, i64* %7, align 8
  br label %105

104:                                              ; preds = %99, %92
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i64 [ %103, %102 ], [ 46, %104 ]
  %107 = trunc i64 %106 to i8
  %108 = call i32 @putchar(i8 signext %107)
  br label %111

109:                                              ; preds = %88
  %110 = call i32 @putchar(i8 signext 32)
  br label %111

111:                                              ; preds = %109, %105
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %6, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %6, align 8
  br label %84

115:                                              ; preds = %84
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %5, align 8
  %118 = sub nsw i64 %117, %116
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %124, %115
  %120 = load i64, i64* %6, align 8
  %121 = icmp slt i64 %120, 16
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = call i32 @putchar(i8 signext 32)
  br label %124

124:                                              ; preds = %122
  %125 = load i64, i64* %6, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %6, align 8
  br label %119

127:                                              ; preds = %119
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* %8, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %134

133:                                              ; preds = %127
  br label %12

134:                                              ; preds = %132, %12
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i64 @mread(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
