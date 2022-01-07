; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_bus.c_acpi_str_to_uuid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_bus.c_acpi_str_to_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_str_to_uuid.opc_map_to_uuid = internal global [16 x i32] [i32 6, i32 4, i32 2, i32 0, i32 11, i32 9, i32 16, i32 14, i32 19, i32 21, i32 24, i32 26, i32 28, i32 30, i32 32, i32 34], align 16
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @acpi_str_to_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_str_to_uuid(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = icmp ne i32 %8, 36
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %11, i32* %3, align 4
  br label %94

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %51, %12
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 36
  br i1 %15, label %16, label %54

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 13
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 18
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 23
  br i1 %27, label %28, label %39

28:                                               ; preds = %25, %22, %19, %16
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 45
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %37, i32* %3, align 4
  br label %94

38:                                               ; preds = %28
  br label %50

39:                                               ; preds = %25
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @isxdigit(i8 signext %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %48, i32* %3, align 4
  br label %94

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %13

54:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %89, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 16
  br i1 %57, label %58, label %92

58:                                               ; preds = %55
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* @acpi_str_to_uuid.opc_map_to_uuid, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @hex_val(i8 signext %66)
  %68 = shl i32 %67, 4
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* @acpi_str_to_uuid.opc_map_to_uuid, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %73, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @hex_val(i8 signext %81)
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %58
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %55

92:                                               ; preds = %55
  %93 = load i32, i32* @AE_OK, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %47, %36, %10
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @hex_val(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
