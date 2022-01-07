; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_do_u64_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_do_u64_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"index overflow: %lu\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"partial read: %lu bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i32*, i64, i64)* @do_u64_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_u64_read(i32 %0, i8* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i32, i32* @ULONG_MAX, align 4
  %14 = sdiv i32 %13, 8
  %15 = sext i32 %14 to i64
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %17, %5
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %9, align 8
  %23 = mul i64 %22, 8
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i64 @lseek(i32 %21, i64 %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @perror(i8* %28)
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  %31 = call i32 @exit(i32 %30) #3
  unreachable

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %10, align 8
  %36 = mul i64 %35, 8
  %37 = call i64 @read(i32 %33, i32* %34, i64 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @perror(i8* %41)
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  %44 = call i32 @exit(i32 %43) #3
  unreachable

45:                                               ; preds = %32
  %46 = load i64, i64* %11, align 8
  %47 = srem i64 %46, 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i64, i64* %11, align 8
  %54 = sdiv i64 %53, 8
  ret i64 %54
}

declare dso_local i32 @fatal(i8*, i64) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @read(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
