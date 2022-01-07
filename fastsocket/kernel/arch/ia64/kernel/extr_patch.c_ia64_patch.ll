; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_patch.c_ia64_patch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_patch.c_ia64_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_patch(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, -16
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32*, i32** %13, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %4, align 4
  %26 = srem i32 %25, 16
  %27 = mul nsw i32 41, %26
  %28 = add nsw i32 5, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp uge i64 %30, 64
  br i1 %31, label %32, label %43

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* %14, align 8
  %35 = sub i64 %34, 64
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %33, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i64, i64* %14, align 8
  %40 = sub i64 %39, 64
  %41 = trunc i64 %40 to i32
  %42 = shl i32 %38, %41
  store i32 %42, i32* %10, align 4
  br label %72

43:                                               ; preds = %3
  %44 = load i32, i32* %5, align 4
  %45 = load i64, i64* %14, align 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %44, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i64, i64* %14, align 8
  %50 = sub i64 64, %49
  %51 = trunc i64 %50 to i32
  %52 = ashr i32 %48, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i64, i64* %14, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %53, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i64, i64* %14, align 8
  %59 = sub i64 64, %58
  %60 = trunc i64 %59 to i32
  %61 = ashr i32 %57, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %7, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %66, %67
  %69 = or i32 %65, %68
  %70 = load i32*, i32** %13, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %43, %32
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %8, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %77, %78
  %80 = or i32 %76, %79
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %80, i32* %82, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
