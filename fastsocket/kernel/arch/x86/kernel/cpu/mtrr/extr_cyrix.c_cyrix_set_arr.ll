; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_cyrix.c_cyrix_set_arr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_cyrix.c_cyrix_set_arr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CX86_ARR_BASE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@CX86_RCR_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i32)* @cyrix_set_arr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyrix_set_arr(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @CX86_ARR_BASE, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 1
  %15 = add i32 %12, %14
  %16 = load i32, i32* %5, align 4
  %17 = add i32 %15, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %9, align 1
  %19 = load i32, i32* %5, align 4
  %20 = icmp uge i32 %19, 7
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = lshr i64 %22, 6
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %25, 32767
  store i64 %26, i64* %7, align 8
  store i8 0, i8* %11, align 1
  br label %27

27:                                               ; preds = %31, %24
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30
  %32 = load i8, i8* %11, align 1
  %33 = add i8 %32, 1
  store i8 %33, i8* %11, align 1
  %34 = load i64, i64* %7, align 8
  %35 = lshr i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %27

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = icmp ult i32 %37, 7
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %44 [
    i32 130, label %41
    i32 129, label %42
    i32 128, label %43
  ]

41:                                               ; preds = %39
  store i8 1, i8* %10, align 1
  br label %45

42:                                               ; preds = %39
  store i8 9, i8* %10, align 1
  br label %45

43:                                               ; preds = %39
  store i8 24, i8* %10, align 1
  br label %45

44:                                               ; preds = %39
  store i8 8, i8* %10, align 1
  br label %45

45:                                               ; preds = %44, %43, %42, %41
  br label %53

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %51 [
    i32 130, label %48
    i32 129, label %49
    i32 128, label %50
  ]

48:                                               ; preds = %46
  store i8 0, i8* %10, align 1
  br label %52

49:                                               ; preds = %46
  store i8 8, i8* %10, align 1
  br label %52

50:                                               ; preds = %46
  store i8 25, i8* %10, align 1
  br label %52

51:                                               ; preds = %46
  store i8 9, i8* %10, align 1
  br label %52

52:                                               ; preds = %51, %50, %49, %48
  br label %53

53:                                               ; preds = %52, %45
  %54 = call i32 (...) @prepare_set()
  %55 = load i64, i64* @PAGE_SHIFT, align 8
  %56 = load i64, i64* %6, align 8
  %57 = shl i64 %56, %55
  store i64 %57, i64* %6, align 8
  %58 = load i8, i8* %9, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %59, 0
  %61 = bitcast i64* %6 to i8*
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @setCx86(i32 %60, i8 zeroext %63)
  %65 = load i8, i8* %9, align 1
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %66, 1
  %68 = bitcast i64* %6 to i8*
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 2
  %71 = call i32 @setCx86(i32 %67, i8 zeroext %70)
  %72 = load i8, i8* %9, align 1
  %73 = zext i8 %72 to i32
  %74 = add nsw i32 %73, 2
  %75 = bitcast i64* %6 to i8*
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %11, align 1
  %80 = zext i8 %79 to i32
  %81 = or i32 %78, %80
  %82 = trunc i32 %81 to i8
  %83 = call i32 @setCx86(i32 %74, i8 zeroext %82)
  %84 = load i32, i32* @CX86_RCR_BASE, align 4
  %85 = load i32, i32* %5, align 4
  %86 = add i32 %84, %85
  %87 = load i8, i8* %10, align 1
  %88 = call i32 @setCx86(i32 %86, i8 zeroext %87)
  %89 = call i32 (...) @post_set()
  ret void
}

declare dso_local i32 @prepare_set(...) #1

declare dso_local i32 @setCx86(i32, i8 zeroext) #1

declare dso_local i32 @post_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
