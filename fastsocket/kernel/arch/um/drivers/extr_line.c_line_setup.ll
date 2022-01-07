; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Couldn't parse device number\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Device number out of range\00", align 1
@INIT_ONE = common dso_local global i32 0, align 4
@INIT_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line_setup(%struct.line* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.line*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.line* %0, %struct.line** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 61
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %11, align 4
  br label %32

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @simple_strtoul(i8* %20, i8** %13, i32 0)
  store i32 %21, i32* %11, align 4
  %22 = load i8*, i8** %13, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 61
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %88

30:                                               ; preds = %19
  %31 = load i8*, i8** %13, align 8
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %88

42:                                               ; preds = %32
  %43 = load i32, i32* %11, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.line*, %struct.line** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* @INIT_ONE, align 4
  %50 = load i8**, i8*** %9, align 8
  %51 = call i32 @setup_one_line(%struct.line* %46, i32 %47, i8* %48, i32 %49, i8** %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %5, align 4
  br label %88

56:                                               ; preds = %45
  br label %78

57:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %74, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load %struct.line*, %struct.line** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* @INIT_ALL, align 4
  %67 = load i8**, i8*** %9, align 8
  %68 = call i32 @setup_one_line(%struct.line* %63, i32 %64, i8* %65, i32 %66, i8** %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %88

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %58

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %77, %56
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %11, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %71, %54, %38, %26
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @setup_one_line(%struct.line*, i32, i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
