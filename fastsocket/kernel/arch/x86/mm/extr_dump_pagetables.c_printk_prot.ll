; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_dump_pagetables.c_printk_prot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_dump_pagetables.c_printk_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@printk_prot.level_name = internal constant [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"cr3\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pgd\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pud\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pmd\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pte\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"                          \00", align 1
@_PAGE_USER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"USR \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@_PAGE_RW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"RW \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ro \00", align 1
@_PAGE_PWT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"PWT \00", align 1
@_PAGE_PCD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"PCD \00", align 1
@_PAGE_PSE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"PSE \00", align 1
@_PAGE_PAT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"pat \00", align 1
@_PAGE_GLOBAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"GLB \00", align 1
@_PAGE_NX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"NX \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"x  \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32)* @printk_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printk_prot(%struct.seq_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @pgprot_val(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @pgprot_val(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %110

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @_PAGE_USER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %27

24:                                               ; preds = %16
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @_PAGE_RW, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %38

35:                                               ; preds = %27
  %36 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %37 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @_PAGE_PWT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %49

46:                                               ; preds = %38
  %47 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %48 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @_PAGE_PCD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %60

57:                                               ; preds = %49
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %6, align 4
  %62 = icmp sle i32 %61, 3
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @_PAGE_PSE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %74

71:                                               ; preds = %63
  %72 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %73 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  br label %87

75:                                               ; preds = %60
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @_PAGE_PAT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %82 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %86

83:                                               ; preds = %75
  %84 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %85 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %74
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @_PAGE_GLOBAL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %94 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %98

95:                                               ; preds = %87
  %96 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %97 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @_PAGE_NX, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %105 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %109

106:                                              ; preds = %98
  %107 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %108 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %13
  %111 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [5 x i8*], [5 x i8*]* @printk_prot.level_name, i64 0, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %115)
  ret void
}

declare dso_local i32 @pgprot_val(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
