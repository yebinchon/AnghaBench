; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_pseries_energy.c_get_best_energy_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_pseries_energy.c_get_best_energy_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FLAGS_MODE1 = common dso_local global i64 0, align 8
@FLAGS_ACTIVATE = common dso_local global i64 0, align 8
@H_BEST_ENERGY = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @get_best_energy_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_best_energy_list(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i64 @get_zeroed_page(i32 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %115

29:                                               ; preds = %2
  %30 = load i64, i64* @FLAGS_MODE1, align 8
  store i64 %30, i64* %12, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i64, i64* @FLAGS_ACTIVATE, align 8
  %35 = load i64, i64* %12, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @H_BEST_ENERGY, align 4
  %39 = load i64, i64* %12, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @__pa(i32* %40)
  %42 = call i32 @plpar_hcall9(i32 %38, i64* %19, i64 %39, i32 0, i32 %41, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @H_SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32*, i32** %13, align 8
  %48 = ptrtoint i32* %47 to i64
  %49 = call i32 @free_page(i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %115

52:                                               ; preds = %37
  %53 = getelementptr inbounds i64, i64* %19, i64 0
  %54 = load i64, i64* %53, align 16
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %90, %52
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %56
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @drc_index_to_cpu(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @cpu_online(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72, %60
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @cpu_online(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79, %72
  %83 = load i8*, i8** %14, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i8*, i8*, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i8*, i8** %14, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %14, align 8
  br label %89

89:                                               ; preds = %82, %79, %75
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %56

93:                                               ; preds = %56
  %94 = load i8*, i8** %14, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = icmp ugt i8* %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load i8*, i8** %14, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 -1
  store i8* %99, i8** %14, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = call i32 (i8*, i8*, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i8*, i8** %14, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %14, align 8
  br label %105

105:                                              ; preds = %97, %93
  %106 = load i32*, i32** %13, align 8
  %107 = ptrtoint i32* %106 to i64
  %108 = call i32 @free_page(i64 %107)
  %109 = load i8*, i8** %14, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %115

115:                                              ; preds = %105, %46, %26
  %116 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @get_zeroed_page(i32) #2

declare dso_local i32 @plpar_hcall9(i32, i64*, i64, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @__pa(i32*) #2

declare dso_local i32 @free_page(i64) #2

declare dso_local i32 @drc_index_to_cpu(i32) #2

declare dso_local i64 @cpu_online(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
