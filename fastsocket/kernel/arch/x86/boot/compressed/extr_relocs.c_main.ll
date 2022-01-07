; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/compressed/extr_relocs.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/compressed/extr_relocs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"--abs-syms\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"--abs-relocs\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--text\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Cannot open %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i32 1, i32* %11, align 4
  br label %13

13:                                               ; preds = %58, %2
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %13
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %50

27:                                               ; preds = %17
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %58

34:                                               ; preds = %27
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  br label %58

41:                                               ; preds = %34
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  br label %58

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  br label %56

50:                                               ; preds = %17
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %12, align 8
  store i8* %54, i8** %9, align 8
  br label %58

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %49
  %57 = call i32 (...) @usage()
  br label %58

58:                                               ; preds = %56, %53, %47, %40, %33
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %13

61:                                               ; preds = %13
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i8*, i8** %9, align 8
  %68 = call i32* @fopen(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %68, i32** %10, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 @strerror(i32 %73)
  %75 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %72, i32 %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @read_ehdr(i32* %77)
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @read_shdrs(i32* %79)
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @read_strtabs(i32* %81)
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @read_symtabs(i32* %83)
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @read_relocs(i32* %85)
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %76
  %90 = call i32 (...) @print_absolute_symbols()
  store i32 0, i32* %3, align 4
  br label %99

91:                                               ; preds = %76
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 (...) @print_absolute_relocs()
  store i32 0, i32* %3, align 4
  br label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @emit_relocs(i32 %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %94, %89
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @die(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @read_ehdr(i32*) #1

declare dso_local i32 @read_shdrs(i32*) #1

declare dso_local i32 @read_strtabs(i32*) #1

declare dso_local i32 @read_symtabs(i32*) #1

declare dso_local i32 @read_relocs(i32*) #1

declare dso_local i32 @print_absolute_symbols(...) #1

declare dso_local i32 @print_absolute_relocs(...) #1

declare dso_local i32 @emit_relocs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
