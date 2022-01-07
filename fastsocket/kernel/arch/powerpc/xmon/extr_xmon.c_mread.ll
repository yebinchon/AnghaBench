; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_mread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_mread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bus_error_jmp = common dso_local global i32 0, align 4
@catch_memory_errors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @mread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mread(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store volatile i32 0, i32* %7, align 4
  %10 = load i32, i32* @bus_error_jmp, align 4
  %11 = call i64 @setjmp(i32 %10) #3
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %3
  store i32 1, i32* @catch_memory_errors, align 4
  %14 = call i32 (...) @sync()
  %15 = load i64, i64* %4, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %37 [
    i32 2, label %19
    i32 4, label %25
    i32 8, label %31
  ]

19:                                               ; preds = %13
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 4
  br label %53

25:                                               ; preds = %13
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %53

31:                                               ; preds = %13
  %32 = load i8*, i8** %8, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %53

37:                                               ; preds = %13
  br label %38

38:                                               ; preds = %49, %37
  %39 = load volatile i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  %45 = load i8, i8* %43, align 1
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %9, align 8
  store i8 %45, i8* %46, align 1
  %48 = call i32 (...) @sync()
  br label %49

49:                                               ; preds = %42
  %50 = load volatile i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store volatile i32 %51, i32* %7, align 4
  br label %38

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %31, %25, %19
  %54 = call i32 (...) @sync()
  %55 = call i32 @__delay(i32 200)
  %56 = load i32, i32* %6, align 4
  store volatile i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %3
  store i32 0, i32* @catch_memory_errors, align 4
  %58 = load volatile i32, i32* %7, align 4
  ret i32 %58
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @sync(...) #2

declare dso_local i32 @__delay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
