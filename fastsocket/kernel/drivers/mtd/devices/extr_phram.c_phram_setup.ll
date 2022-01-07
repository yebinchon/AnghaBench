; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_phram.c_phram_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_phram.c_phram_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"parameter too long\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"not enough arguments\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"illegal start address\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"illegal device length\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%s device: %#x at %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @phram_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phram_setup(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca [88 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i8*], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %14 = getelementptr inbounds [88 x i8], [88 x i8]* %6, i64 0, i64 0
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strnlen(i8* %15, i32 88)
  %17 = sext i32 %16 to i64
  %18 = icmp uge i64 %17, 88
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @parse_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strcpy(i8* %22, i8* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @kill_final_newline(i8* %25)
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %35, %21
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 %33
  store i8* %31, i8** %34, align 8
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %27

38:                                               ; preds = %27
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @parse_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38
  %44 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 2
  %45 = load i8*, i8** %44, align 16
  %46 = icmp ne i8* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = call i32 @parse_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %51 = load i8*, i8** %50, align 16
  %52 = call i32 @parse_name(i8** %9, i8* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %3, align 4
  br label %91

57:                                               ; preds = %49
  %58 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @parse_num32(i32* %10, i8* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @kfree(i8* %64)
  %66 = call i32 @parse_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %57
  %68 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 2
  %69 = load i8*, i8** %68, align 16
  %70 = call i32 @parse_num32(i32* %11, i8* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @kfree(i8* %74)
  %76 = call i32 @parse_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @register_device(i8* %78, i32 %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %77
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %77
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %55
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @parse_err(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @kill_final_newline(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @parse_name(i8**, i8*) #1

declare dso_local i32 @parse_num32(i32*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @register_device(i8*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
