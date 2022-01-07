; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_cow_user.c_init_cow_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_cow_user.c_init_cow_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COW_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cow bitmap lseek failed : err = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Write of bitmap to new COW file '%s' failed, err = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_cow_file(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4, i32* %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8 0, i8* %20, align 1
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @write_cow_header(i8* %22, i32 %23, i8* %24, i32 %25, i32 %26, i64* %18)
  store i32 %27, i32* %21, align 4
  %28 = load i32, i32* %21, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %8
  br label %77

31:                                               ; preds = %8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @ROUND_UP(i32 4, i32 %32)
  %34 = load i32*, i32** %15, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @COW_VERSION, align 4
  %36 = load i64, i64* %18, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32*, i32** %15, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i64*, i64** %16, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @cow_sizes(i32 %35, i64 %36, i32 %37, i32 %38, i32 %40, i64* %41, i32* %42)
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %18, align 8
  %48 = add i64 %46, %47
  %49 = sub i64 %48, 1
  store i64 %49, i64* %19, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* %19, align 8
  %52 = call i32 @cow_seek_file(i32 %50, i64 %51)
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %21, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %31
  %56 = load i32, i32* %21, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %77

59:                                               ; preds = %31
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @cow_write_file(i32 %60, i8* %20, i32 1)
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %21, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %63, 1
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %21, align 4
  %68 = sub nsw i32 0, %67
  %69 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 %68)
  %70 = load i32, i32* %21, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %21, align 4
  br label %75

75:                                               ; preds = %72, %65
  br label %77

76:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %79

77:                                               ; preds = %75, %55, %30
  %78 = load i32, i32* %21, align 4
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i32 @write_cow_header(i8*, i32, i8*, i32, i32, i64*) #1

declare dso_local i32 @ROUND_UP(i32, i32) #1

declare dso_local i32 @cow_sizes(i32, i64, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @cow_seek_file(i32, i64) #1

declare dso_local i32 @cow_printf(i8*, ...) #1

declare dso_local i32 @cow_write_file(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
