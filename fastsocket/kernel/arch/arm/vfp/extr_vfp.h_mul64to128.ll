; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfp.h_mul64to128.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfp.h_mul64to128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @mul64to128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mul64to128(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %12, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %12, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %14, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = shl i32 %41, 32
  %43 = load i32, i32* %14, align 4
  %44 = ashr i32 %43, 32
  %45 = add nsw i32 %42, %44
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = shl i32 %48, 32
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
