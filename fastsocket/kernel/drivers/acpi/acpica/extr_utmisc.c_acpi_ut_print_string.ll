; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_print_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_print_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"<\22NULL STRING PTR\22>\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\\x%2.2X\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ut_print_string(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %92

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %75, %10
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ult i64 %20, %21
  br label %23

23:                                               ; preds = %19, %12
  %24 = phi i1 [ false, %12 ], [ %22, %19 ]
  br i1 %24, label %25, label %78

25:                                               ; preds = %23
  %26 = load i8*, i8** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %52 [
    i32 7, label %31
    i32 8, label %33
    i32 12, label %35
    i32 10, label %37
    i32 13, label %39
    i32 9, label %41
    i32 11, label %43
    i32 39, label %45
    i32 34, label %45
    i32 92, label %45
  ]

31:                                               ; preds = %25
  %32 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %74

33:                                               ; preds = %25
  %34 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %74

35:                                               ; preds = %25
  %36 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %74

37:                                               ; preds = %25
  %38 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %74

39:                                               ; preds = %25
  %40 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %74

41:                                               ; preds = %25
  %42 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %74

43:                                               ; preds = %25
  %44 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %74

45:                                               ; preds = %25, %25, %25
  %46 = load i8*, i8** %3, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %50)
  br label %74

52:                                               ; preds = %25
  %53 = load i8*, i8** %3, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @ACPI_IS_PRINT(i8 signext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i8*, i8** %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %64)
  br label %73

66:                                               ; preds = %52
  %67 = load i8*, i8** %3, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %66, %59
  br label %74

74:                                               ; preds = %73, %45, %43, %41, %39, %37, %35, %33, %31
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %5, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %5, align 8
  br label %12

78:                                               ; preds = %23
  %79 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %4, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load i8*, i8** %3, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %92

92:                                               ; preds = %8, %90, %83, %78
  ret void
}

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @ACPI_IS_PRINT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
